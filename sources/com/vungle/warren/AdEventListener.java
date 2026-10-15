package com.vungle.warren;

import android.util.Log;
import com.facebook.internal.security.CertificateUtil;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.Placement;
import com.vungle.warren.persistence.DatabaseHelper;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.tasks.JobRunner;
import com.vungle.warren.tasks.SendReportsJob;
import com.vungle.warren.ui.contract.AdContract;
import com.vungle.warren.utility.Constants;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class AdEventListener implements AdContract.AdvertisementPresenter.EventListener {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f27632m = "com.vungle.warren.AdEventListener";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Repository f27633a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AdLoader f27634b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final JobRunner f27635c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final VisionController f27636d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<String, Boolean> f27637e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final PlayAdCallback f27638f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AdRequest f27639g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f27640h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f27641i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f27642j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Placement f27643k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Advertisement f27644l;

    AdEventListener(AdRequest adRequest, Map<String, Boolean> map, PlayAdCallback playAdCallback, Repository repository, AdLoader adLoader, JobRunner jobRunner, VisionController visionController, Placement placement, Advertisement advertisement) {
        this.f27639g = adRequest;
        this.f27637e = map;
        this.f27638f = playAdCallback;
        this.f27633a = repository;
        this.f27634b = adLoader;
        this.f27635c = jobRunner;
        this.f27636d = visionController;
        this.f27643k = placement;
        this.f27644l = advertisement;
        map.put(adRequest.getPlacementId(), Boolean.TRUE);
    }

    private void a() {
        if (this.f27644l == null) {
            this.f27644l = this.f27633a.findValidAdvertisementForPlacement(this.f27639g.getPlacementId(), this.f27639g.getEventId()).get();
        }
    }

    private void b() {
        if (this.f27643k == null) {
            this.f27643k = (Placement) this.f27633a.load(this.f27639g.getPlacementId(), Placement.class).get();
        }
    }

    protected void c() {
        this.f27637e.remove(this.f27639g.getPlacementId());
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter.EventListener
    public void onError(VungleException vungleException, String str) {
        a();
        if (this.f27644l != null && vungleException.getExceptionCode() == 27) {
            this.f27634b.dropCache(this.f27644l.getId());
            return;
        }
        if (this.f27644l != null && vungleException.getExceptionCode() != 15 && vungleException.getExceptionCode() != 25 && vungleException.getExceptionCode() != 36) {
            try {
                this.f27633a.saveAndApplyState(this.f27644l, str, 4);
                b();
                Placement placement = this.f27643k;
                if (placement != null) {
                    this.f27634b.loadEndlessIfNeeded(placement, placement.getAdSize(), 0L);
                }
            } catch (DatabaseHelper.DBException unused) {
                vungleException = new VungleException(26);
            }
        }
        c();
        PlayAdCallback playAdCallback = this.f27638f;
        if (playAdCallback != null) {
            playAdCallback.onError(str, vungleException);
            VungleLogger.error("AdEventListener#PlayAdCallback", vungleException.getLocalizedMessage() + " :" + str);
        }
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter.EventListener
    public void onNext(String str, String str2, String str3) {
        PlayAdCallback playAdCallback;
        PlayAdCallback playAdCallback2;
        a();
        if (this.f27644l == null) {
            Log.e(f27632m, "No Advertisement for ID");
            c();
            PlayAdCallback playAdCallback3 = this.f27638f;
            if (playAdCallback3 != null) {
                playAdCallback3.onError(this.f27639g.getPlacementId(), new VungleException(10));
                VungleLogger.error("AdEventListener#PlayAdCallback", str3 + ": AD_UNABLE_TO_PLAY");
                return;
            }
            return;
        }
        b();
        if (this.f27643k == null) {
            Log.e(f27632m, "No Placement for ID");
            c();
            PlayAdCallback playAdCallback4 = this.f27638f;
            if (playAdCallback4 != null) {
                playAdCallback4.onError(this.f27639g.getPlacementId(), new VungleException(13));
                VungleLogger.error("AdEventListener#PlayAdCallback", "PLACEMENT_NOT_FOUND: " + str3);
                return;
            }
            return;
        }
        try {
            boolean z10 = false;
            if (str.equals("start")) {
                this.f27633a.saveAndApplyState(this.f27644l, str3, 2);
                PlayAdCallback playAdCallback5 = this.f27638f;
                if (playAdCallback5 != null) {
                    playAdCallback5.onAdStart(str3);
                    VungleLogger.debug("AdEventListener#PlayAdCallback", "onAdStart: " + str3);
                }
                this.f27641i = 0;
                Placement placement = (Placement) this.f27633a.load(this.f27639g.getPlacementId(), Placement.class).get();
                this.f27643k = placement;
                if (placement != null) {
                    this.f27634b.loadEndlessIfNeeded(placement, placement.getAdSize(), 0L);
                }
                if (this.f27636d.c()) {
                    this.f27636d.d(this.f27644l.getCreativeId(), this.f27644l.getCampaignId(), this.f27644l.getAdvertiserAppId());
                    return;
                }
                return;
            }
            if (str.equals("end")) {
                Log.d(BuildConfig.OMSDK_PARTNER_NAME, "Cleaning up metadata and assets for placement " + str3 + " and advertisement " + this.f27644l.getId());
                this.f27633a.saveAndApplyState(this.f27644l, str3, 3);
                this.f27633a.updateAndSaveReportState(str3, this.f27644l.getAppID(), 0, 1);
                this.f27635c.execute(SendReportsJob.makeJobInfo(false));
                c();
                PlayAdCallback playAdCallback6 = this.f27638f;
                if (playAdCallback6 != null) {
                    boolean z11 = this.f27640h || this.f27641i >= 80;
                    if (str2 != null && str2.equals("isCTAClicked")) {
                        z10 = true;
                    }
                    playAdCallback6.onAdEnd(str3, z11, z10);
                    this.f27638f.onAdEnd(str3);
                    VungleLogger.debug("AdEventListener#PlayAdCallback", "onAdEnd: " + str3);
                    return;
                }
                return;
            }
            if (this.f27643k.isIncentivized() && str.equals("successfulView")) {
                this.f27640h = true;
                if (this.f27642j) {
                    return;
                }
                this.f27642j = true;
                PlayAdCallback playAdCallback7 = this.f27638f;
                if (playAdCallback7 != null) {
                    playAdCallback7.onAdRewarded(str3);
                    VungleLogger.debug("AdEventListener#PlayAdCallback", "onAdRewarded: " + str3);
                    return;
                }
                return;
            }
            if (str.startsWith("percentViewed") && this.f27643k.isIncentivized()) {
                String[] strArrSplit = str.split(CertificateUtil.DELIMITER);
                if (strArrSplit.length == 2) {
                    this.f27641i = Integer.parseInt(strArrSplit[1]);
                }
                if (this.f27642j || this.f27641i < 80) {
                    return;
                }
                this.f27642j = true;
                PlayAdCallback playAdCallback8 = this.f27638f;
                if (playAdCallback8 != null) {
                    playAdCallback8.onAdRewarded(str3);
                    VungleLogger.debug("AdEventListener#PlayAdCallback", "onAdRewarded: " + str3);
                    return;
                }
                return;
            }
            if (!"open".equals(str) || this.f27638f == null) {
                if ("adViewed".equals(str) && (playAdCallback2 = this.f27638f) != null) {
                    playAdCallback2.onAdViewed(str3);
                    return;
                } else {
                    if (!Constants.ATTACH.equals(str) || (playAdCallback = this.f27638f) == null) {
                        return;
                    }
                    playAdCallback.creativeId(str2);
                    return;
                }
            }
            if ("adClick".equals(str2)) {
                this.f27638f.onAdClick(str3);
                VungleLogger.debug("AdEventListener#PlayAdCallback", "onAdClick: " + str3);
                return;
            }
            if ("adLeftApplication".equals(str2)) {
                this.f27638f.onAdLeftApplication(str3);
                VungleLogger.debug("AdEventListener#PlayAdCallback", "onAdLeftApplication: " + str3);
            }
        } catch (DatabaseHelper.DBException unused) {
            onError(new VungleException(26), str3);
        }
    }
}
