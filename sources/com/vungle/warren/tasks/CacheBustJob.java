package com.vungle.warren.tasks;

import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import com.google.gson.f;
import com.google.gson.l;
import com.google.gson.o;
import com.vungle.warren.AdConfig;
import com.vungle.warren.AdLoader;
import com.vungle.warren.AdRequest;
import com.vungle.warren.CacheBustManager;
import com.vungle.warren.LoadAdCallback;
import com.vungle.warren.VungleApiClient;
import com.vungle.warren.VungleLogger;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.CacheBust;
import com.vungle.warren.model.CacheBustDBAdapter;
import com.vungle.warren.model.Cookie;
import com.vungle.warren.model.Placement;
import com.vungle.warren.network.Response;
import com.vungle.warren.persistence.DatabaseHelper;
import com.vungle.warren.persistence.Repository;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public class CacheBustJob implements Job {
    public static final String TAG = "com.vungle.warren.tasks.CacheBustJob";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String[] f28340e = new String[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final VungleApiClient f28341a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Repository f28342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ExecutorService f28343c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AdLoader f28344d;

    public CacheBustJob(VungleApiClient vungleApiClient, Repository repository, ExecutorService executorService, AdLoader adLoader) {
        this.f28341a = vungleApiClient;
        this.f28342b = repository;
        this.f28343c = executorService;
        this.f28344d = adLoader;
    }

    private void a(Advertisement advertisement, CacheBust cacheBust) {
        try {
            Log.d(TAG, "bustAd: deleting " + advertisement.getId());
            this.f28344d.dropCache(advertisement.getId());
            this.f28342b.deleteAdvertisement(advertisement.getId());
            Repository repository = this.f28342b;
            Placement placement = (Placement) repository.load(repository.getPlacementIdByAd(advertisement), Placement.class).get();
            if (placement != null) {
                new AdConfig().setAdSize(placement.getAdSize());
                if (placement.isMultipleHBPEnabled()) {
                    this.f28344d.loadEndlessIfNeeded(placement, placement.getAdSize(), 0L);
                } else {
                    this.f28344d.load(new AdLoader.Operation(new AdRequest(placement.getId()), placement.getAdSize(), 0L, AdLoader.RETRY_DELAY, 5, 1, 0, false, placement.getAutoCachePriority(), new LoadAdCallback[0]));
                }
            }
            cacheBust.setTimestampProcessed(System.currentTimeMillis());
            this.f28342b.save(cacheBust);
        } catch (DatabaseHelper.DBException e10) {
            Log.e(TAG, "bustAd: cannot drop cache or delete advertisement for " + advertisement, e10);
        }
    }

    private void b(o oVar, String str, int i10, String str2, List<CacheBust> list, f fVar) {
        if (oVar.E(str)) {
            Iterator<l> it = oVar.B(str).iterator();
            while (it.hasNext()) {
                CacheBust cacheBust = (CacheBust) fVar.g(it.next(), CacheBust.class);
                cacheBust.setTimeWindowEnd(cacheBust.getTimeWindowEnd() * 1000);
                cacheBust.setIdType(i10);
                list.add(cacheBust);
                try {
                    this.f28342b.save(cacheBust);
                } catch (DatabaseHelper.DBException unused) {
                    VungleLogger.error(CacheBustJob.class.getSimpleName() + "#onRunJob", str2 + cacheBust);
                }
            }
        }
    }

    private void c(Iterable<CacheBust> iterable) {
        for (CacheBust cacheBust : iterable) {
            List<Advertisement> adsByCampaign = cacheBust.getIdType() == 1 ? this.f28342b.getAdsByCampaign(cacheBust.getId()) : this.f28342b.getAdsByCreative(cacheBust.getId());
            LinkedList linkedList = new LinkedList();
            LinkedList linkedList2 = new LinkedList();
            for (Advertisement advertisement : adsByCampaign) {
                if (advertisement.getServerRequestTimestamp() < cacheBust.getTimeWindowEnd() && e(advertisement)) {
                    linkedList.add(advertisement.getId());
                    linkedList2.add(advertisement);
                }
            }
            if (linkedList.isEmpty()) {
                Log.d(TAG, "processBust: bust has no relevant ads, deleting " + cacheBust);
                try {
                    this.f28342b.delete(cacheBust);
                } catch (DatabaseHelper.DBException e10) {
                    VungleLogger.error(CacheBustJob.class.getSimpleName() + "#processBust", "Cannot delete obsolete bust " + cacheBust + " because of " + e10);
                }
            } else {
                cacheBust.setEventIds((String[]) linkedList.toArray(f28340e));
                Iterator it = linkedList2.iterator();
                while (it.hasNext()) {
                    a((Advertisement) it.next(), cacheBust);
                }
            }
        }
    }

    private void d() {
        List<CacheBust> list = (List) this.f28342b.loadAll(CacheBust.class).get();
        if (list == null || list.size() == 0) {
            Log.d(TAG, "sendAnalytics: no cachebusts in repository");
            return;
        }
        LinkedList linkedList = new LinkedList();
        for (CacheBust cacheBust : list) {
            if (cacheBust.getTimestampProcessed() != 0) {
                linkedList.add(cacheBust);
            }
        }
        if (linkedList.isEmpty()) {
            Log.d(TAG, "sendAnalytics: no cachebusts to send analytics");
            return;
        }
        try {
            Response<o> responseExecute = this.f28341a.bustAnalytics(linkedList).execute();
            if (!responseExecute.isSuccessful()) {
                Log.e(TAG, "sendAnalytics: not successful, aborting, response is " + responseExecute);
                return;
            }
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                try {
                    this.f28342b.delete((CacheBust) it.next());
                } catch (DatabaseHelper.DBException unused) {
                    VungleLogger.error(CacheBustManager.class.getSimpleName() + "#sendAnalytics", "can't delete bust \" + cacheBust");
                }
            }
        } catch (IOException e10) {
            Log.e(TAG, "sendAnalytics: can't execute API call", e10);
        }
    }

    private boolean e(Advertisement advertisement) {
        return (advertisement.getState() == 2 || advertisement.getState() == 3) ? false : true;
    }

    public static JobInfo makeJobInfo() {
        return new JobInfo(TAG).setPriority(0).setUpdateCurrent(true);
    }

    protected void f(Bundle bundle, Cookie cookie) throws DatabaseHelper.DBException {
        long j10 = bundle.getLong(CacheBustManager.CACHE_BUST_INTERVAL);
        if (j10 != 0) {
            cookie.putValue(CacheBustManager.NEXT_CACHE_BUST, Long.valueOf(SystemClock.elapsedRealtime() + j10));
        }
        this.f28342b.save(cookie);
    }

    @Override // com.vungle.warren.tasks.Job
    public int onRunJob(Bundle bundle, JobRunner jobRunner) {
        Repository repository;
        String str = TAG;
        Log.i(str, "CacheBustJob started");
        if (this.f28341a == null || (repository = this.f28342b) == null) {
            Log.e(str, "CacheBustJob finished - no client or repository");
            return 1;
        }
        try {
            Cookie cookie = (Cookie) repository.load(Cookie.CACHE_BUST_COOKIE, Cookie.class).get();
            if (cookie == null) {
                cookie = new Cookie(Cookie.CACHE_BUST_COOKIE);
            }
            Cookie cookie2 = cookie;
            Response<o> responseExecute = this.f28341a.cacheBust(cookie2.getLong(Cookie.LAST_CACHE_BUST).longValue()).execute();
            List<CacheBust> arrayList = new ArrayList<>();
            List<CacheBust> unProcessedBusts = this.f28342b.getUnProcessedBusts();
            if (unProcessedBusts != null && !unProcessedBusts.isEmpty()) {
                arrayList.addAll(unProcessedBusts);
            }
            f fVar = new f();
            if (responseExecute.isSuccessful()) {
                o oVarBody = responseExecute.body();
                if (oVarBody != null && oVarBody.E(CacheBustDBAdapter.CacheBustColumns.TABLE_NAME)) {
                    o oVarC = oVarBody.C(CacheBustDBAdapter.CacheBustColumns.TABLE_NAME);
                    if (oVarC.E("last_updated") && oVarC.A("last_updated").n() > 0) {
                        cookie2.putValue(Cookie.LAST_CACHE_BUST, Long.valueOf(oVarC.A("last_updated").n()));
                        this.f28342b.save(cookie2);
                    }
                    b(oVarC, "campaign_ids", 1, "cannot save campaignBust=", arrayList, fVar);
                    b(oVarC, "creative_ids", 2, "cannot save creativeBust=", arrayList, fVar);
                }
                Log.e(str, "CacheBustJob finished - no jsonObject or cache_bust in it");
                return 1;
            }
            c(arrayList);
            f(bundle, cookie2);
            d();
            Log.d(str, "CacheBustJob finished");
            return 2;
        } catch (DatabaseHelper.DBException e10) {
            Log.e(TAG, "CacheBustJob failed - DBException", e10);
            return 2;
        } catch (IOException e11) {
            Log.e(TAG, "CacheBustJob failed - IOException", e11);
            return 2;
        }
    }
}
