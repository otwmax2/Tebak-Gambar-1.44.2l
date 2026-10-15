package com.vungle.warren;

import android.text.TextUtils;
import android.util.Log;
import android.webkit.URLUtil;
import com.google.gson.i;
import com.google.gson.o;
import com.vungle.warren.AdConfig;
import com.vungle.warren.OperationSequence;
import com.vungle.warren.downloader.AssetDownloadListener;
import com.vungle.warren.downloader.AssetPriority;
import com.vungle.warren.downloader.DownloadRequest;
import com.vungle.warren.downloader.Downloader;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.model.AdAsset;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.JsonUtil;
import com.vungle.warren.model.Placement;
import com.vungle.warren.network.Call;
import com.vungle.warren.network.Callback;
import com.vungle.warren.network.Response;
import com.vungle.warren.omsdk.OMInjector;
import com.vungle.warren.persistence.CacheManager;
import com.vungle.warren.persistence.DatabaseHelper;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.tasks.DownloadJob;
import com.vungle.warren.tasks.JobRunner;
import com.vungle.warren.ui.HackMraid;
import com.vungle.warren.utility.Executors;
import com.vungle.warren.utility.FileUtility;
import com.vungle.warren.utility.UnzipUtility;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public class AdLoader {
    public static final boolean DEFAULT_LOAD_OPTIMIZATION_ENABLED = false;
    public static final long EXPONENTIAL_RATE = 2;
    public static final int RETRY_COUNT = 5;
    public static final long RETRY_DELAY = 2000;
    public static final String TT_DOWNLOAD_CONTEXT = "ttDownloadContext";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f27645q = "com.vungle.warren.AdLoader";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final OperationSequence f27649d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Repository f27651f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Executors f27652g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final VungleApiClient f27653h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final CacheManager f27654i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Downloader f27655j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final RuntimeValues f27656k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final VungleStaticApi f27658m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final VisionController f27659n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final OMInjector f27660o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<AdRequest, Operation> f27646a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<AdRequest, Operation> f27647b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<Operation> f27648c = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AdRequest f27650e = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final AtomicReference<JobRunner> f27657l = new AtomicReference<>();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f27661p = false;

    /* JADX INFO: renamed from: com.vungle.warren.AdLoader$6, reason: invalid class name */
    class AnonymousClass6 implements AssetDownloadListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        AtomicLong f27678a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        List<AssetDownloadListener.DownloadError> f27679b = Collections.synchronizedList(new ArrayList());

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Operation f27680c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ DownloadCallback f27681d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Advertisement f27682e;

        AnonymousClass6(Operation operation, DownloadCallback downloadCallback, Advertisement advertisement) {
            this.f27680c = operation;
            this.f27681d = downloadCallback;
            this.f27682e = advertisement;
            this.f27678a = new AtomicLong(operation.f27707l.size());
        }

        @Override // com.vungle.warren.downloader.AssetDownloadListener
        public void onError(final AssetDownloadListener.DownloadError downloadError, final DownloadRequest downloadRequest) {
            AdLoader.this.f27652g.getBackgroundExecutor().execute(new Runnable() { // from class: com.vungle.warren.AdLoader.6.1
                @Override // java.lang.Runnable
                public void run() {
                    Log.e(AdLoader.f27645q, "Download Failed");
                    DownloadRequest downloadRequest2 = downloadRequest;
                    if (downloadRequest2 != null) {
                        String str = downloadRequest2.cookieString;
                        AdAsset adAsset = TextUtils.isEmpty(str) ? null : (AdAsset) AdLoader.this.f27651f.load(str, AdAsset.class).get();
                        if (adAsset != null) {
                            AnonymousClass6.this.f27679b.add(downloadError);
                            adAsset.status = 2;
                            try {
                                AdLoader.this.f27651f.save(adAsset);
                            } catch (DatabaseHelper.DBException unused) {
                                AnonymousClass6.this.f27679b.add(new AssetDownloadListener.DownloadError(-1, new VungleException(26), 4));
                            }
                        } else {
                            AnonymousClass6.this.f27679b.add(new AssetDownloadListener.DownloadError(-1, new IOException("Downloaded file not found!"), 1));
                        }
                    } else {
                        AnonymousClass6.this.f27679b.add(new AssetDownloadListener.DownloadError(-1, new RuntimeException("error in request"), 4));
                    }
                    if (AnonymousClass6.this.f27678a.decrementAndGet() <= 0) {
                        AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                        AdLoader.this.V(anonymousClass6.f27680c, anonymousClass6.f27681d, anonymousClass6.f27682e.getId(), AnonymousClass6.this.f27679b, true);
                    }
                }
            });
        }

        @Override // com.vungle.warren.downloader.AssetDownloadListener
        public void onProgress(AssetDownloadListener.Progress progress, DownloadRequest downloadRequest) {
        }

        @Override // com.vungle.warren.downloader.AssetDownloadListener
        public void onSuccess(final File file, final DownloadRequest downloadRequest) {
            AdLoader.this.f27652g.getBackgroundExecutor().execute(new Runnable() { // from class: com.vungle.warren.AdLoader.6.2
                @Override // java.lang.Runnable
                public void run() throws Throwable {
                    if (!file.exists()) {
                        VungleLogger.error("AdLoader#getAssetDownloadListener; loadAd sequence", String.format("Downloaded file %1$s doesn't exist", file.getPath()));
                        AnonymousClass6.this.onError(new AssetDownloadListener.DownloadError(-1, new IOException("Downloaded file not found!"), 3), downloadRequest);
                        return;
                    }
                    String str = downloadRequest.cookieString;
                    AdAsset adAsset = str == null ? null : (AdAsset) AdLoader.this.f27651f.load(str, AdAsset.class).get();
                    if (adAsset == null) {
                        Object[] objArr = new Object[2];
                        objArr[0] = str == null ? "id is null" : "repository returned null";
                        objArr[1] = downloadRequest;
                        VungleLogger.error("AdLoader#getAssetDownloadListener; loadAd sequence", String.format("adAsset is null because %1$s, downloadRequest = %2$s", objArr));
                        AnonymousClass6.this.onError(new AssetDownloadListener.DownloadError(-1, new IOException("Downloaded file not found!"), 1), downloadRequest);
                        return;
                    }
                    adAsset.fileType = AdLoader.this.T(file) ? 0 : 2;
                    adAsset.fileSize = file.length();
                    adAsset.status = 3;
                    try {
                        AdLoader.this.f27651f.save(adAsset);
                        if (AdLoader.this.T(file)) {
                            AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                            AdLoader.this.O(anonymousClass6.f27680c, anonymousClass6.f27682e, anonymousClass6.f27681d);
                            AnonymousClass6 anonymousClass62 = AnonymousClass6.this;
                            AdLoader.this.Y(anonymousClass62.f27680c, anonymousClass62.f27681d, adAsset, anonymousClass62.f27682e);
                        }
                        if (AnonymousClass6.this.f27678a.decrementAndGet() <= 0) {
                            AnonymousClass6 anonymousClass63 = AnonymousClass6.this;
                            AdLoader.this.V(anonymousClass63.f27680c, anonymousClass63.f27681d, anonymousClass63.f27682e.getId(), AnonymousClass6.this.f27679b, !AdLoader.this.P(r0.f27682e));
                        }
                    } catch (DatabaseHelper.DBException e10) {
                        VungleLogger.error("AdLoader#getAssetDownloadListener; loadAd sequence", String.format("Can't save adAsset %1$s; exception = %2$s", adAsset, e10));
                        AnonymousClass6.this.onError(new AssetDownloadListener.DownloadError(-1, new VungleException(26), 4), downloadRequest);
                    }
                }
            });
        }
    }

    private class DownloadAdCallback implements DownloadCallback {
        private DownloadAdCallback() {
        }

        @Override // com.vungle.warren.AdLoader.DownloadCallback
        public void onDownloadCompleted(AdRequest adRequest, String str) {
            Log.d(AdLoader.f27645q, "download completed " + adRequest);
            Placement placement = (Placement) AdLoader.this.f27651f.load(adRequest.getPlacementId(), Placement.class).get();
            if (placement == null) {
                VungleLogger.error("AdLoader#DownloadAdCallback#onDownloadCompleted; loadAd sequence", String.format("loaded placement is null: request = %1$s; advertisementId = %2$s", adRequest, str));
                onDownloadFailed(new VungleException(13), adRequest, str);
                return;
            }
            Advertisement advertisement = TextUtils.isEmpty(str) ? null : (Advertisement) AdLoader.this.f27651f.load(str, Advertisement.class).get();
            if (advertisement == null) {
                VungleLogger.error("AdLoader#DownloadAdCallback#onDownloadCompleted; loadAd sequence", String.format("advertisement is null: request = %1$s; advertisementId = %2$s", adRequest, str));
                onDownloadFailed(new VungleException(11), adRequest, str);
                return;
            }
            advertisement.setFinishedDownloadingTime(System.currentTimeMillis());
            try {
                AdLoader.this.f27651f.saveAndApplyState(advertisement, adRequest.getPlacementId(), 1);
                onReady(adRequest, placement, advertisement);
            } catch (DatabaseHelper.DBException e10) {
                VungleLogger.error("AdLoader#DownloadAdCallback#onDownloadCompleted; loadAd sequence", String.format("Can't save/apply state READY: exception = %1$s;request = %2$s; advertisement = %3$s", e10, adRequest, advertisement));
                onDownloadFailed(new VungleException(26), adRequest, str);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:40:0x00a7  */
        @Override // com.vungle.warren.AdLoader.DownloadCallback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onDownloadFailed(com.vungle.warren.error.VungleException r12, com.vungle.warren.AdRequest r13, java.lang.String r14) {
            /*
                Method dump skipped, instruction units count: 369
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.AdLoader.DownloadAdCallback.onDownloadFailed(com.vungle.warren.error.VungleException, com.vungle.warren.AdRequest, java.lang.String):void");
        }

        @Override // com.vungle.warren.AdLoader.DownloadCallback
        public void onReady(AdRequest adRequest, Placement placement, Advertisement advertisement) {
            AdLoader.this.e0(adRequest, false);
            HeaderBiddingCallback headerBiddingCallback = AdLoader.this.f27656k.f27846a.get();
            if (advertisement != null && placement.isHeaderBidding() && headerBiddingCallback != null) {
                headerBiddingCallback.adAvailableForBidToken(adRequest.getPlacementId(), advertisement.getBidToken());
            }
            Log.i(AdLoader.f27645q, "found already cached valid adv, calling onAdLoad callback for request " + adRequest);
            InitCallback initCallback = AdLoader.this.f27656k.f27847b.get();
            int type = adRequest.getType();
            if (placement.isAutoCached() && initCallback != null && (type == 2 || type == 0)) {
                initCallback.onAutoCacheAdAvailable(adRequest.getPlacementId());
            }
            Operation operation = (Operation) AdLoader.this.f27646a.remove(adRequest);
            String id = advertisement != null ? advertisement.getId() : null;
            if (operation != null) {
                placement.setAdSize(operation.f27697b);
                try {
                    AdLoader.this.f27651f.save(placement);
                    Log.i(AdLoader.f27645q, "loading took " + (System.currentTimeMillis() - adRequest.timeStamp.get()) + "ms for:" + adRequest);
                    Iterator<LoadAdCallback> it = operation.f27703h.iterator();
                    while (it.hasNext()) {
                        it.next().onAdLoad(adRequest.getPlacementId());
                    }
                } catch (DatabaseHelper.DBException e10) {
                    VungleLogger.error("AdLoader#DownloadAdCallback#onReady; loadAd sequence", String.format("Can't save placement: exception = %1$s;placement = %2$s; advertisement = %3$s", e10, placement, advertisement));
                    onDownloadFailed(new VungleException(26), adRequest, id);
                }
            }
        }
    }

    interface DownloadCallback {
        void onDownloadCompleted(AdRequest adRequest, String str);

        void onDownloadFailed(VungleException vungleException, AdRequest adRequest, String str);

        void onReady(AdRequest adRequest, Placement placement, Advertisement advertisement);
    }

    public static class Operation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final AdRequest f27696a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final AdConfig.AdSize f27697b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f27698c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        long f27699d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f27700e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f27701f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f27702g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final Set<LoadAdCallback> f27703h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final AtomicBoolean f27704i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        boolean f27705j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        @Priority
        int f27706k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        List<DownloadRequest> f27707l;

        public Operation(AdRequest adRequest, AdConfig.AdSize adSize, long j10, long j11, int i10, int i11, int i12, boolean z10, @Priority int i13, LoadAdCallback... loadAdCallbackArr) {
            CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
            this.f27703h = copyOnWriteArraySet;
            this.f27707l = new CopyOnWriteArrayList();
            this.f27696a = adRequest;
            this.f27698c = j10;
            this.f27699d = j11;
            this.f27701f = i10;
            this.f27702g = i11;
            this.f27700e = i12;
            this.f27704i = new AtomicBoolean();
            this.f27697b = adSize;
            this.f27705j = z10;
            this.f27706k = i13;
            if (loadAdCallbackArr != null) {
                copyOnWriteArraySet.addAll(Arrays.asList(loadAdCallbackArr));
            }
        }

        Operation a(long j10) {
            return new Operation(this.f27696a, this.f27697b, j10, this.f27699d, this.f27701f, this.f27702g, this.f27700e, this.f27705j, this.f27706k, (LoadAdCallback[]) this.f27703h.toArray(new LoadAdCallback[0]));
        }

        void b(Operation operation) {
            this.f27698c = Math.min(this.f27698c, operation.f27698c);
            this.f27699d = Math.min(this.f27699d, operation.f27699d);
            this.f27701f = Math.min(this.f27701f, operation.f27701f);
            int i10 = operation.f27702g;
            if (i10 != 0) {
                i10 = this.f27702g;
            }
            this.f27702g = i10;
            this.f27700e = Math.min(this.f27700e, operation.f27700e);
            this.f27705j |= operation.f27705j;
            this.f27706k = Math.min(this.f27706k, operation.f27706k);
            this.f27703h.addAll(operation.f27703h);
        }

        Operation c(int i10) {
            return new Operation(this.f27696a, this.f27697b, this.f27698c, this.f27699d, this.f27701f, this.f27702g, i10, this.f27705j, this.f27706k, (LoadAdCallback[]) this.f27703h.toArray(new LoadAdCallback[0]));
        }

        Operation d(long j10) {
            return new Operation(this.f27696a, this.f27697b, this.f27698c, j10, this.f27701f, this.f27702g, this.f27700e, this.f27705j, this.f27706k, (LoadAdCallback[]) this.f27703h.toArray(new LoadAdCallback[0]));
        }

        public boolean getLogError() {
            return this.f27705j;
        }

        @Priority
        public int getPriority() {
            return this.f27706k;
        }

        public AdRequest getRequest() {
            return this.f27696a;
        }

        public AdConfig.AdSize getSize() {
            return this.f27697b;
        }

        public String toString() {
            return "request=" + this.f27696a.toString() + " size=" + this.f27697b.toString() + " priority=" + this.f27706k + " policy=" + this.f27702g + " retry=" + this.f27700e + "/" + this.f27701f + " delay=" + this.f27698c + "->" + this.f27699d + " log=" + this.f27705j;
        }
    }

    public @interface Priority {
        public static final int HIGH = 1;
        public static final int HIGHEST = 0;
        public static final int LOWEST = Integer.MAX_VALUE;
    }

    /* JADX INFO: loaded from: classes.dex */
    @Retention(RetentionPolicy.SOURCE)
    public @interface ReschedulePolicy {
        public static final int EXPONENTIAL = 0;
        public static final int EXPONENTIAL_ENDLESS_AD = 1;
    }

    public AdLoader(Executors executors, Repository repository, VungleApiClient vungleApiClient, CacheManager cacheManager, Downloader downloader, RuntimeValues runtimeValues, VungleStaticApi vungleStaticApi, VisionController visionController, OperationSequence operationSequence, OMInjector oMInjector) {
        this.f27652g = executors;
        this.f27651f = repository;
        this.f27653h = vungleApiClient;
        this.f27654i = cacheManager;
        this.f27655j = downloader;
        this.f27656k = runtimeValues;
        this.f27658m = vungleStaticApi;
        this.f27659n = visionController;
        this.f27649d = operationSequence;
        this.f27660o = oMInjector;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean E(Advertisement advertisement) {
        List<AdAsset> list;
        if (advertisement == null || (!(advertisement.getState() == 0 || advertisement.getState() == 1) || (list = this.f27651f.loadAllAdAssets(advertisement.getId()).get()) == null || list.size() == 0)) {
            return false;
        }
        for (AdAsset adAsset : list) {
            if (adAsset.fileType == 1) {
                if (!I(new File(adAsset.localPath), adAsset)) {
                    return false;
                }
            } else if (TextUtils.isEmpty(adAsset.serverPath)) {
                return false;
            }
        }
        return true;
    }

    private void F(String str, final AdConfig.AdSize adSize) {
        this.f27651f.load(str, Placement.class, new Repository.LoadCallback<Placement>() { // from class: com.vungle.warren.AdLoader.3
            @Override // com.vungle.warren.persistence.Repository.LoadCallback
            public void onLoaded(Placement placement) {
                if (placement != null && placement.isMultipleHBPEnabled() && placement.getPlacementAdType() == 1) {
                    AdConfig.AdSize adSize2 = placement.getAdSize();
                    AdConfig.AdSize adSize3 = adSize;
                    if (adSize2 != adSize3) {
                        placement.setAdSize(adSize3);
                        AdLoader.this.f27651f.save(placement, null, false);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G(Operation operation, Advertisement advertisement, DownloadCallback downloadCallback) {
        operation.f27707l.clear();
        for (Map.Entry<String, String> entry : advertisement.getDownloadableUrls().entrySet()) {
            if (TextUtils.isEmpty(entry.getKey()) || TextUtils.isEmpty(entry.getValue()) || !URLUtil.isValidUrl(entry.getValue())) {
                VungleLogger.error("AdLoader#downloadAdAssets; loadAd sequence", String.format("One or more ad asset URLs is empty or not valid;request = %1$s; advertisement = %2$s", operation.f27696a, advertisement));
                downloadCallback.onDownloadFailed(new VungleException(11), operation.f27696a, null);
                Log.e(f27645q, "Aborting, Failed to download Ad assets for: " + advertisement.getId());
                return;
            }
        }
        DownloadCallbackWrapper downloadCallbackWrapper = new DownloadCallbackWrapper(this.f27652g.getUIExecutor(), downloadCallback);
        try {
            this.f27651f.save(advertisement);
            List<AdAsset> list = this.f27651f.loadAllAdAssets(advertisement.getId()).get();
            if (list == null) {
                VungleLogger.error("AdLoader#downloadAdAssets; loadAd sequence", String.format("Cannot load all ad assets; op.request = %1$s; advertisement = %2$s", operation.f27696a, advertisement));
                downloadCallbackWrapper.onDownloadFailed(new VungleException(26), operation.f27696a, advertisement.getId());
                return;
            }
            for (AdAsset adAsset : list) {
                if (adAsset.status == 3) {
                    if (I(new File(adAsset.localPath), adAsset)) {
                        continue;
                    } else if (adAsset.fileType == 1) {
                        VungleLogger.error("AdLoader#downloadAdAssets; loadAd sequence", String.format("Cannot download ad assets - asset filetype is zip_asset;request = %1$s; advertisement = %2$s", operation.f27696a, advertisement));
                        downloadCallbackWrapper.onDownloadFailed(new VungleException(24), operation.f27696a, advertisement.getId());
                        return;
                    }
                }
                if (adAsset.status != 4 || adAsset.fileType != 0) {
                    if (TextUtils.isEmpty(adAsset.serverPath)) {
                        VungleLogger.error("AdLoader#downloadAdAssets; loadAd sequence", String.format("Cannot download ad assets - empty ;request = %1$s; advertisement = %2$s", operation.f27696a, advertisement));
                        downloadCallbackWrapper.onDownloadFailed(new VungleException(24), operation.f27696a, advertisement.getId());
                        return;
                    }
                    DownloadRequest downloadRequestM = M(operation.f27706k, adAsset);
                    if (adAsset.status == 1) {
                        this.f27655j.cancelAndAwait(downloadRequestM, 1000L);
                        downloadRequestM = M(operation.f27706k, adAsset);
                    }
                    Log.d(f27645q, "Starting download for " + adAsset);
                    adAsset.status = 1;
                    try {
                        this.f27651f.save(adAsset);
                        operation.f27707l.add(downloadRequestM);
                    } catch (DatabaseHelper.DBException e10) {
                        VungleLogger.error("AdLoader#downloadAdAssets; loadAd sequence", String.format("Can't save asset %1$s; exception = %2$s", adAsset, e10));
                        downloadCallbackWrapper.onDownloadFailed(new VungleException(26), operation.f27696a, advertisement.getId());
                        return;
                    }
                }
            }
            if (operation.f27707l.size() == 0) {
                V(operation, downloadCallbackWrapper, advertisement.getId(), Collections.emptyList(), true);
                return;
            }
            VungleLogger.verbose(true, f27645q, TT_DOWNLOAD_CONTEXT, String.format("Start to download assets,  request = %1$s at: %2$d", operation.f27696a, Long.valueOf(System.currentTimeMillis())));
            AssetDownloadListener assetDownloadListenerJ = J(advertisement, operation, downloadCallbackWrapper);
            Iterator<DownloadRequest> it = operation.f27707l.iterator();
            while (it.hasNext()) {
                this.f27655j.download(it.next(), assetDownloadListenerJ);
            }
        } catch (DatabaseHelper.DBException unused) {
            VungleLogger.error("AdLoader#downloadAdAssets; loadAd sequence", String.format("Cannot save advertisement op.request = %1$s; advertisement = %2$s", operation.f27696a, advertisement));
            downloadCallback.onDownloadFailed(new VungleException(26), operation.f27696a, advertisement.getId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H(final Operation operation, Placement placement, final DownloadCallback downloadCallback) {
        final HeaderBiddingCallback headerBiddingCallback = this.f27656k.f27846a.get();
        final long jCurrentTimeMillis = System.currentTimeMillis();
        VungleLogger.verbose(true, f27645q, TT_DOWNLOAD_CONTEXT, String.format("Start to request ad, request = %1$s, at: %2$d", operation.f27696a, Long.valueOf(jCurrentTimeMillis)));
        this.f27653h.requestAd(operation.f27696a.getPlacementId(), AdConfig.AdSize.isNonMrecBannerAdSize(operation.f27697b) ? operation.f27697b.getName() : com.vungle.mediation.BuildConfig.FLAVOR, placement.isHeaderBidding(), this.f27659n.c() ? this.f27659n.getPayload() : null).enqueue(new Callback<o>() { // from class: com.vungle.warren.AdLoader.5
            @Override // com.vungle.warren.network.Callback
            public void onFailure(Call<o> call, Throwable th) {
                VungleLogger.verbose(true, AdLoader.f27645q, AdLoader.TT_DOWNLOAD_CONTEXT, String.format("Request ad failed, request = %1$s, elapsed time = %2$dms", operation.f27696a, Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis)));
                VungleLogger.error("AdLoader#fetchAdMetadata; loadAd sequence", String.format("failed to request ad, request = %1$s, throwable = %2$s", operation.f27696a, th));
                downloadCallback.onDownloadFailed(AdLoader.this.b0(th), operation.f27696a, null);
            }

            @Override // com.vungle.warren.network.Callback
            public void onResponse(Call<o> call, final Response<o> response) {
                VungleLogger.verbose(true, AdLoader.f27645q, AdLoader.TT_DOWNLOAD_CONTEXT, String.format("Request ad got response, request = %1$s, elapsed time = %2$dms", operation.f27696a, Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis)));
                AdLoader.this.f27652g.getBackgroundExecutor().execute(new Runnable() { // from class: com.vungle.warren.AdLoader.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass5 anonymousClass5;
                        HeaderBiddingCallback headerBiddingCallback2;
                        int state;
                        Placement placement2 = (Placement) AdLoader.this.f27651f.load(operation.f27696a.getPlacementId(), Placement.class).get();
                        if (placement2 == null) {
                            Log.e(AdLoader.f27645q, "Placement metadata not found for requested advertisement.");
                            VungleLogger.error("AdLoader#fetchAdMetadata; loadAd sequence", "Placement metadata not found for requested advertisement. request = " + operation.f27696a);
                            downloadCallback.onDownloadFailed(new VungleException(2), operation.f27696a, null);
                            return;
                        }
                        if (!response.isSuccessful()) {
                            long retryAfterHeaderValue = AdLoader.this.f27653h.getRetryAfterHeaderValue(response);
                            if (retryAfterHeaderValue <= 0 || !(placement2.isAutoCached() || placement2.isMultipleHBPEnabled())) {
                                Log.e(AdLoader.f27645q, "Failed to retrieve advertisement information");
                                VungleLogger.error("AdLoader#fetchAdMetadata; loadAd sequence", String.format("Response was not successful, not retrying;request = %1$s; responseCode = %2$s", operation.f27696a, Integer.valueOf(response.code())));
                                AnonymousClass5 anonymousClass52 = AnonymousClass5.this;
                                downloadCallback.onDownloadFailed(AdLoader.this.a0(response.code()), operation.f27696a, null);
                                return;
                            }
                            AnonymousClass5 anonymousClass53 = AnonymousClass5.this;
                            AdLoader.this.loadEndlessIfNeeded(placement2, operation.f27697b, retryAfterHeaderValue);
                            VungleLogger.error("AdLoader#fetchAdMetadata; loadAd sequence", "Response was not successful, retrying; request = " + operation.f27696a);
                            downloadCallback.onDownloadFailed(new VungleException(14), operation.f27696a, null);
                            return;
                        }
                        o oVar = (o) response.body();
                        Log.d(AdLoader.f27645q, "Ads Response: " + oVar);
                        if (oVar == null || !oVar.E("ads") || oVar.A("ads").q()) {
                            VungleLogger.error("AdLoader#fetchAdMetadata; loadAd sequence", String.format("Response has no ads; placement = %1$s;op.request = %2$s; response = %3$s", placement2, operation.f27696a, oVar));
                            downloadCallback.onDownloadFailed(new VungleException(1), operation.f27696a, null);
                            return;
                        }
                        i iVarB = oVar.B("ads");
                        if (iVarB == null || iVarB.size() == 0) {
                            VungleLogger.error("AdLoader#fetchAdMetadata; loadAd sequence", "Response was successful, but no ads; request = " + operation.f27696a);
                            downloadCallback.onDownloadFailed(new VungleException(1), operation.f27696a, null);
                            return;
                        }
                        o oVarL = iVarB.v(0).l();
                        try {
                            Advertisement advertisement = new Advertisement(oVarL);
                            if (AdLoader.this.f27659n.c()) {
                                o oVarC = oVarL.C("ad_markup");
                                if (JsonUtil.hasNonNull(oVarC, "data_science_cache")) {
                                    AdLoader.this.f27659n.f(oVarC.A("data_science_cache").o());
                                } else {
                                    AdLoader.this.f27659n.f(null);
                                }
                            }
                            Advertisement advertisement2 = (Advertisement) AdLoader.this.f27651f.load(advertisement.getId(), Advertisement.class).get();
                            if (advertisement2 != null && ((state = advertisement2.getState()) == 0 || state == 1 || state == 2)) {
                                Log.d(AdLoader.f27645q, "Operation Cancelled");
                                downloadCallback.onDownloadFailed(new VungleException(25), operation.f27696a, null);
                                return;
                            }
                            if (placement2.isHeaderBidding() && (headerBiddingCallback2 = headerBiddingCallback) != null) {
                                headerBiddingCallback2.onBidTokenAvailable(operation.f27696a.getPlacementId(), advertisement.getBidToken());
                            }
                            AdLoader.this.f27651f.deleteAdvertisement(advertisement.getId());
                            Set<Map.Entry<String, String>> setEntrySet = advertisement.getDownloadableUrls().entrySet();
                            File fileL = AdLoader.this.L(advertisement);
                            if (fileL != null && fileL.isDirectory()) {
                                for (Map.Entry<String, String> entry : setEntrySet) {
                                    if (!AdLoader.this.S(entry.getValue())) {
                                        VungleLogger.error("AdLoader#fetchAdMetadata; loadAd sequence", String.format("Response was successful, but one of downloadable urls is neither http nor https : url = %1$s; op.request = %2$s, ad.getId() = %3$s", entry.getValue(), operation.f27696a, advertisement.getId()));
                                        downloadCallback.onDownloadFailed(new VungleException(11), operation.f27696a, advertisement.getId());
                                        return;
                                    }
                                    AdLoader.this.c0(advertisement, fileL, entry.getKey(), entry.getValue());
                                }
                                if (placement2.getPlacementAdType() == 1 && (advertisement.getAdType() != 1 || !"banner".equals(advertisement.getTemplateType()))) {
                                    Object[] objArr = new Object[3];
                                    objArr[0] = advertisement.getAdType() != 1 ? "ad type is not MRAID" : "advertisement template type is not banner";
                                    objArr[1] = operation.f27696a;
                                    objArr[2] = advertisement.getId();
                                    VungleLogger.error("AdLoader#fetchAdMetadata; loadAd sequence", String.format("Response was successful, but placement is banner while %1$s; op.request = %2$s, ad.getId() = %3$s", objArr));
                                    downloadCallback.onDownloadFailed(new VungleException(1), operation.f27696a, advertisement.getId());
                                    return;
                                }
                                advertisement.getAdConfig().setAdSize(operation.f27697b);
                                advertisement.setAdRequestStartTime(jCurrentTimeMillis);
                                advertisement.setAssetDownloadStartTime(System.currentTimeMillis());
                                AdLoader.this.f27651f.saveAndApplyState(advertisement, operation.f27696a.getPlacementId(), 0);
                                int type = operation.f27696a.getType();
                                if (type != 0 && type != 2) {
                                    if (operation.f27696a.getType() == 1) {
                                        AnonymousClass5 anonymousClass54 = AnonymousClass5.this;
                                        AdLoader adLoader = AdLoader.this;
                                        if (!adLoader.Q(operation, adLoader.f27651f)) {
                                            AnonymousClass5 anonymousClass55 = AnonymousClass5.this;
                                            AdLoader.this.H(operation, placement2, downloadCallback);
                                            return;
                                        } else {
                                            AnonymousClass5 anonymousClass56 = AnonymousClass5.this;
                                            AdLoader.this.g0(operation.f27696a);
                                            AnonymousClass5 anonymousClass57 = AnonymousClass5.this;
                                            downloadCallback.onReady(operation.f27696a, placement2, null);
                                            return;
                                        }
                                    }
                                    return;
                                }
                                AnonymousClass5 anonymousClass58 = AnonymousClass5.this;
                                AdLoader.this.g0(operation.f27696a);
                                AnonymousClass5 anonymousClass59 = AnonymousClass5.this;
                                AdLoader.this.G(operation, advertisement, downloadCallback);
                                return;
                            }
                            Object[] objArr2 = new Object[3];
                            objArr2[0] = fileL == null ? "null" : "not a dir";
                            objArr2[1] = operation.f27696a;
                            objArr2[2] = advertisement.getId();
                            VungleLogger.error("AdLoader#fetchAdMetadata; loadAd sequence", String.format("Response was successful, but adv directory is %1$s; op.request = %2$s, ad.getId() = %3$s", objArr2));
                            downloadCallback.onDownloadFailed(new VungleException(26), operation.f27696a, advertisement.getId());
                        } catch (DatabaseHelper.DBException e10) {
                            VungleLogger.error("AdLoader#fetchAdMetadata; loadAd sequence", String.format("BadAd - DBException; can't proceed; placement = %1$s; op.request = %2$s; exception = %3$s", placement2, operation.f27696a, e10));
                            downloadCallback.onDownloadFailed(new VungleException(26), operation.f27696a, null);
                        } catch (IllegalArgumentException unused) {
                            o oVarC2 = oVarL.C("ad_markup");
                            if (oVarC2.E("sleep")) {
                                long j10 = oVarC2.A("sleep").j();
                                placement2.snooze(j10);
                                try {
                                    VungleLogger.warn("AdLoader#fetchAdMetadata; loadAd sequence", String.format("badAd - snoozed placement %1$s; request = %2$s", placement2, operation.f27696a));
                                    AdLoader.this.f27651f.save(placement2);
                                    AnonymousClass5 anonymousClass510 = AnonymousClass5.this;
                                    AdLoader.this.loadEndlessIfNeeded(placement2, operation.f27697b, j10 * 1000);
                                } catch (DatabaseHelper.DBException unused2) {
                                    VungleLogger.error("AdLoader#fetchAdMetadata; loadAd sequence", String.format("badAd - can't save snoozed placement %1$s; request = %2$s", placement2, operation.f27696a));
                                    downloadCallback.onDownloadFailed(new VungleException(26), operation.f27696a, null);
                                    return;
                                }
                            }
                            VungleLogger.error("AdLoader#fetchAdMetadata; loadAd sequence", String.format("badAd; can't proceed %1$s; request = %2$s", placement2, operation.f27696a));
                            downloadCallback.onDownloadFailed(new VungleException(1), operation.f27696a, null);
                        }
                    }
                });
            }
        });
    }

    private boolean I(File file, AdAsset adAsset) {
        return file.exists() && file.length() == adAsset.fileSize;
    }

    private AssetDownloadListener J(Advertisement advertisement, Operation operation, DownloadCallback downloadCallback) {
        return new AnonymousClass6(operation, downloadCallback, advertisement);
    }

    private AssetPriority K(@Priority int i10, String str) {
        return new AssetPriority(Math.max(-2147483646, i10), getAssetPriority(str, this.f27661p));
    }

    private DownloadRequest M(@Priority int i10, AdAsset adAsset) {
        return new DownloadRequest(3, K(i10, adAsset.localPath), adAsset.serverPath, adAsset.localPath, false, adAsset.identifier);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean O(Operation operation, Advertisement advertisement, DownloadCallback downloadCallback) {
        if (advertisement.getOmEnabled()) {
            try {
                File fileL = L(advertisement);
                if (fileL != null && fileL.isDirectory()) {
                    for (File file : this.f27660o.injectJsFiles(fileL)) {
                        AdAsset adAsset = new AdAsset(advertisement.getId(), null, file.getPath());
                        adAsset.fileSize = file.length();
                        adAsset.fileType = 2;
                        adAsset.status = 3;
                        this.f27651f.save(adAsset);
                    }
                }
                Object[] objArr = new Object[3];
                objArr[0] = fileL == null ? "null" : "not a dir";
                objArr[1] = operation.f27696a;
                objArr[2] = advertisement;
                VungleLogger.error("AdLoader#onAssetDownloadFinished; loadAd sequence", String.format("Mraid ad; bad destinationDir - %1$srequest = %2$s; advertisement = %3$s", objArr));
                downloadCallback.onDownloadFailed(new VungleException(26), operation.f27696a, advertisement.getId());
                return false;
            } catch (DatabaseHelper.DBException unused) {
                downloadCallback.onDownloadFailed(new VungleException(26), operation.f27696a, advertisement.getId());
                return false;
            } catch (IOException unused2) {
                downloadCallback.onDownloadFailed(new VungleException(24), operation.f27696a, advertisement.getId());
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean P(Advertisement advertisement) {
        return this.f27661p && advertisement != null && advertisement.getAdType() == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Q(Operation operation, Repository repository) {
        List<Advertisement> list = repository.findValidAdvertisementsForPlacement(operation.f27696a.getPlacementId(), null).get();
        return list != null && ((long) list.size()) >= operation.f27696a.getAdCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean R(Placement placement, AdConfig.AdSize adSize) {
        if (placement.getPlacementAdType() != 1 || AdConfig.AdSize.isNonMrecBannerAdSize(adSize)) {
            return placement.getPlacementAdType() == 0 && !AdConfig.AdSize.isDefaultAdSize(adSize);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean S(String str) {
        return !TextUtils.isEmpty(str) && (URLUtil.isHttpsUrl(str) || URLUtil.isHttpUrl(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean T(File file) {
        return file.getName().equals(Advertisement.KEY_POSTROLL) || file.getName().equals("template");
    }

    private void U(final Operation operation, final DownloadCallbackWrapper downloadCallbackWrapper) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        this.f27652g.getBackgroundExecutor().execute(new Runnable() { // from class: com.vungle.warren.AdLoader.4
            @Override // java.lang.Runnable
            public void run() {
                Advertisement advertisement;
                List<Advertisement> list;
                if (!AdLoader.this.f27658m.isInitialized()) {
                    VungleLogger.error("AdLoader#loadAd#execute; loadAd sequence", "Vungle is not initialized");
                    downloadCallbackWrapper.onDownloadFailed(new VungleException(9), operation.f27696a, null);
                    return;
                }
                Placement placement = (Placement) AdLoader.this.f27651f.load(operation.f27696a.getPlacementId(), Placement.class).get();
                if (placement == null) {
                    VungleLogger.error("AdLoader#loadAd#execute; loadAd sequence", "placement not found for " + operation.f27696a);
                    downloadCallbackWrapper.onDownloadFailed(new VungleException(13), operation.f27696a, null);
                    return;
                }
                if (!placement.isValid()) {
                    downloadCallbackWrapper.onDownloadFailed(new VungleException(5), operation.f27696a, null);
                    return;
                }
                if (AdLoader.this.R(placement, operation.f27697b)) {
                    VungleLogger.error("AdLoader#loadAd#execute; loadAd sequence", "size is invalid, size = " + operation.f27697b);
                    downloadCallbackWrapper.onDownloadFailed(new VungleException(28), operation.f27696a, null);
                    return;
                }
                if (placement.getPlacementAdType() == 1 && !placement.isMultipleHBPEnabled() && (list = AdLoader.this.f27651f.findValidAdvertisementsForPlacement(placement.getId(), operation.f27696a.getEventId()).get()) != null) {
                    boolean z10 = false;
                    for (Advertisement advertisement2 : list) {
                        if (advertisement2.getAdConfig().getAdSize() != operation.f27697b) {
                            try {
                                AdLoader.this.f27651f.deleteAdvertisement(advertisement2.getId());
                                z10 = true;
                            } catch (DatabaseHelper.DBException unused) {
                                VungleLogger.error("AdLoader#loadAd#execute; loadAd sequence", "cannot delete advertisement, request = " + operation.f27696a);
                                downloadCallbackWrapper.onDownloadFailed(new VungleException(26), operation.f27696a, null);
                                return;
                            }
                        }
                    }
                    if (z10) {
                        AdLoader.this.loadEndlessIfNeeded(placement, operation.f27697b, 0L);
                    }
                }
                int type = operation.f27696a.getType();
                if (type == 0 || type == 2) {
                    String eventId = operation.f27696a.getEventId();
                    advertisement = AdLoader.this.f27651f.findValidAdvertisementForPlacement(placement.getId(), eventId).get();
                    if (placement.isMultipleHBPEnabled() && operation.f27696a.getType() == 0) {
                        if (eventId == null) {
                            downloadCallbackWrapper.onDownloadFailed(new VungleException(36), operation.f27696a, null);
                            return;
                        } else if (advertisement == null) {
                            downloadCallbackWrapper.onDownloadFailed(new VungleException(10), operation.f27696a, null);
                            return;
                        }
                    }
                    if (advertisement != null && AdLoader.this.canPlayAd(advertisement)) {
                        AdLoader.this.g0(operation.f27696a);
                        downloadCallbackWrapper.onReady(operation.f27696a, placement, advertisement);
                        return;
                    }
                    if (AdLoader.this.E(advertisement)) {
                        Log.d(AdLoader.f27645q, "Found valid adv but not ready - downloading content");
                        VungleSettings vungleSettings = AdLoader.this.f27656k.f27848c.get();
                        if (vungleSettings == null || AdLoader.this.f27654i.getBytesAvailable() < vungleSettings.getMinimumSpaceForAd()) {
                            if (advertisement.getState() != 4) {
                                try {
                                    AdLoader.this.f27651f.saveAndApplyState(advertisement, operation.f27696a.getPlacementId(), 4);
                                } catch (DatabaseHelper.DBException unused2) {
                                    VungleLogger.error("AdLoader#loadAd#execute; loadAd sequence; canReDownload branch", "cannot save/apply ERROR state, request = " + operation.f27696a);
                                    downloadCallbackWrapper.onDownloadFailed(new VungleException(26), operation.f27696a, null);
                                    return;
                                }
                            }
                            VungleLogger.error("AdLoader#loadAd#execute; loadAd sequence", "failed to download assets, no space; request = " + operation.f27696a);
                            downloadCallbackWrapper.onDownloadFailed(new VungleException(19), operation.f27696a, null);
                            return;
                        }
                        AdLoader.this.e0(operation.f27696a, true);
                        if (advertisement.getState() != 0) {
                            try {
                                AdLoader.this.f27651f.saveAndApplyState(advertisement, operation.f27696a.getPlacementId(), 0);
                            } catch (DatabaseHelper.DBException unused3) {
                                VungleLogger.error("AdLoader#loadAd#execute; loadAd sequence; canReDownload branch", "cannot save/apply NEW state, request = " + operation.f27696a);
                                downloadCallbackWrapper.onDownloadFailed(new VungleException(26), operation.f27696a, null);
                                return;
                            }
                        }
                        advertisement.setAdRequestStartTime(jCurrentTimeMillis);
                        advertisement.setAssetDownloadStartTime(System.currentTimeMillis());
                        AdLoader.this.g0(operation.f27696a);
                        AdLoader.this.G(operation, advertisement, downloadCallbackWrapper);
                        return;
                    }
                } else {
                    if (operation.f27696a.getType() == 1) {
                        AdLoader adLoader = AdLoader.this;
                        if (adLoader.Q(operation, adLoader.f27651f)) {
                            AdLoader.this.g0(operation.f27696a);
                            downloadCallbackWrapper.onReady(operation.f27696a, placement, null);
                            return;
                        }
                    }
                    advertisement = null;
                }
                if (placement.getWakeupTime() > System.currentTimeMillis()) {
                    downloadCallbackWrapper.onDownloadFailed(new VungleException(1), operation.f27696a, null);
                    VungleLogger.warn("AdLoader#loadAd#execute; loadAd sequence; snoozed branch", String.format("Placement with id %s is snoozed ", placement.getId()));
                    Log.w(AdLoader.f27645q, "Placement " + placement.getId() + " is  snoozed");
                    Log.d(AdLoader.f27645q, "Placement " + placement.getId() + " is sleeping rescheduling it ");
                    AdLoader.this.loadEndlessIfNeeded(placement, operation.f27697b, placement.getWakeupTime() - System.currentTimeMillis());
                    return;
                }
                String str = operation.f27696a.getType() == 1 ? "advs" : "adv";
                Log.i(AdLoader.f27645q, "didn't find cached " + str + " for " + operation.f27696a + " downloading");
                if (advertisement != null) {
                    try {
                        AdLoader.this.f27651f.saveAndApplyState(advertisement, operation.f27696a.getPlacementId(), 4);
                    } catch (DatabaseHelper.DBException unused4) {
                        VungleLogger.error("AdLoader#loadAd#execute; loadAd sequence; last else branch", "cannot save/apply ERROR state, request = " + operation.f27696a);
                        downloadCallbackWrapper.onDownloadFailed(new VungleException(26), operation.f27696a, null);
                        return;
                    }
                }
                VungleSettings vungleSettings2 = AdLoader.this.f27656k.f27848c.get();
                if (vungleSettings2 != null && AdLoader.this.f27654i.getBytesAvailable() < vungleSettings2.getMinimumSpaceForAd()) {
                    VungleLogger.error("AdLoader#loadAd#execute; loadAd sequence; last else branch", String.format("no space to load, isAutoCached = %1$s, request = %2$s", Boolean.valueOf(placement.isAutoCached()), operation.f27696a));
                    downloadCallbackWrapper.onDownloadFailed(new VungleException(placement.isAutoCached() ? 18 : 17), operation.f27696a, null);
                    return;
                }
                Log.d(AdLoader.f27645q, "No " + str + " for placement " + placement.getId() + " getting new data ");
                AdLoader.this.e0(operation.f27696a, true);
                AdLoader.this.H(operation, placement, downloadCallbackWrapper);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V(Operation operation, DownloadCallback downloadCallback, String str, List<AssetDownloadListener.DownloadError> list, boolean z10) {
        VungleLogger.verbose(true, f27645q, TT_DOWNLOAD_CONTEXT, String.format("Assets download completed, request  = %1$s, at: %2$d", operation.f27696a, Long.valueOf(System.currentTimeMillis())));
        if (!list.isEmpty()) {
            VungleException vungleException = null;
            Iterator<AssetDownloadListener.DownloadError> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                AssetDownloadListener.DownloadError next = it.next();
                if (VungleException.getExceptionCode(next.cause) != 26) {
                    vungleException = ((Z(next.serverCode) && next.reason == 1) || next.reason == 0) ? new VungleException(23) : new VungleException(24);
                    if (vungleException.getExceptionCode() == 24) {
                        break;
                    }
                } else {
                    vungleException = new VungleException(26);
                    break;
                }
            }
            if (z10) {
                downloadCallback.onDownloadFailed(vungleException, operation.f27696a, str);
                return;
            }
            return;
        }
        Advertisement advertisement = (Advertisement) this.f27651f.load(str, Advertisement.class).get();
        if (advertisement == null) {
            VungleLogger.error("AdLoader#DownloadAdCallback#onDownloadCompleted; loadAd sequence", String.format("advertisement is null: request = %1$s; advertisementId = %2$s", operation.f27696a, str));
            downloadCallback.onDownloadFailed(new VungleException(11), operation.f27696a, str);
            return;
        }
        List<AdAsset> list2 = this.f27651f.loadAllAdAssets(str).get();
        if (list2 == null || list2.size() == 0) {
            Object[] objArr = new Object[3];
            objArr[0] = list2 != null ? "empty" : "null";
            objArr[1] = operation.f27696a;
            objArr[2] = str;
            VungleLogger.error("AdLoader#onAssetDownloadFinished; loadAd sequence", String.format("Assets are %1$s; request = %2$s; advertisement = %3$s", objArr));
            if (z10) {
                downloadCallback.onDownloadFailed(new VungleException(24), operation.f27696a, str);
                return;
            }
            return;
        }
        for (AdAsset adAsset : list2) {
            int i10 = adAsset.status;
            if (i10 == 3) {
                File file = new File(adAsset.localPath);
                if (!I(file, adAsset)) {
                    VungleLogger.error("AdLoader#onAssetDownloadFinished; loadAd sequence", String.format("Assets file not valid %1$s; asset = %2$s,request = %3$s; advertisement = %4$s", file.getPath(), adAsset.toString(), operation.f27696a, advertisement));
                    if (z10) {
                        downloadCallback.onDownloadFailed(new VungleException(24), operation.f27696a, advertisement.getId());
                        return;
                    }
                    return;
                }
            } else if (adAsset.fileType == 0 && i10 != 4) {
                VungleLogger.error("AdLoader#onAssetDownloadFinished; loadAd sequence", String.format("Zip asset left unprocessed asset = %1$s,request = %2$s; advertisement = %3$s", adAsset.toString(), operation.f27696a, advertisement));
                downloadCallback.onDownloadFailed(new VungleException(24), operation.f27696a, advertisement.getId());
                return;
            }
        }
        if (advertisement.getAdType() == 1) {
            File fileL = L(advertisement);
            if (fileL == null || !fileL.isDirectory()) {
                Object[] objArr2 = new Object[3];
                objArr2[0] = fileL != null ? "not a dir" : "null";
                objArr2[1] = operation.f27696a;
                objArr2[2] = advertisement;
                VungleLogger.error("AdLoader#onAssetDownloadFinished; loadAd sequence", String.format("Mraid ad; bad destinationDir - %1$srequest = %2$s; advertisement = %3$s", objArr2));
                if (z10) {
                    downloadCallback.onDownloadFailed(new VungleException(26), operation.f27696a, advertisement.getId());
                    return;
                }
                return;
            }
            Log.d(f27645q, "saving MRAID for " + advertisement.getId());
            advertisement.setMraidAssetDir(fileL);
            try {
                this.f27651f.save(advertisement);
            } catch (DatabaseHelper.DBException e10) {
                VungleLogger.error("AdLoader#onAssetDownloadFinished; loadAd sequence", String.format("Issue(s) with database: can't save advertisement;exception = %1$s; request = %2$s; advertisement = %3$s", e10, operation.f27696a, advertisement));
                if (z10) {
                    downloadCallback.onDownloadFailed(new VungleException(26), operation.f27696a, advertisement.getId());
                    return;
                }
                return;
            }
        }
        if (z10) {
            downloadCallback.onDownloadCompleted(operation.f27696a, advertisement.getId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W(Operation operation) {
        for (DownloadRequest downloadRequest : operation.f27707l) {
            downloadRequest.setPriority(K(operation.f27706k, downloadRequest.path));
            this.f27655j.updatePriority(downloadRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X(Operation operation, @VungleException.ExceptionCode int i10) {
        Object[] objArr = new Object[2];
        objArr[0] = new VungleException(i10);
        objArr[1] = operation != null ? operation : "null";
        VungleLogger.error("AdLoader#onError; loadAd sequence", String.format("Error %1$s occured; operation is %2$s", objArr));
        if (operation != null) {
            Iterator<LoadAdCallback> it = operation.f27703h.iterator();
            while (it.hasNext()) {
                it.next().onError(operation.f27696a.getPlacementId(), new VungleException(i10));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y(Operation operation, DownloadCallback downloadCallback, AdAsset adAsset, Advertisement advertisement) throws Throwable {
        if (adAsset.status != 3) {
            downloadCallback.onDownloadFailed(new VungleException(24), operation.f27696a, advertisement.getId());
            return;
        }
        File file = new File(adAsset.localPath);
        if (!I(file, adAsset)) {
            VungleLogger.error("AdLoader#onAssetDownloadFinished; loadAd sequence", String.format("Assets file not valid %1$s; asset = %2$s,request = %3$s; advertisement = %4$s", file.getPath(), adAsset.toString(), operation.f27696a, advertisement));
            downloadCallback.onDownloadFailed(new VungleException(24), operation.f27696a, advertisement.getId());
            return;
        }
        if (adAsset.fileType == 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            String str = f27645q;
            VungleLogger.verbose(true, str, TT_DOWNLOAD_CONTEXT, String.format("Start to unzip assets, request  = %1$s, at: %2$d", operation.f27696a, Long.valueOf(jCurrentTimeMillis)));
            try {
                h0(advertisement, adAsset, file, this.f27651f.loadAllAdAssets(advertisement.getId()).get());
                VungleLogger.verbose(true, str, TT_DOWNLOAD_CONTEXT, String.format("Unzip assets completed, request  = %1$s, elapsed time = %2$dms", operation.f27696a, Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis)));
            } catch (DatabaseHelper.DBException e10) {
                VungleLogger.error("AdLoader#onAssetDownloadFinished; loadAd sequence", String.format("Issue(s) with database: exception = %1$s; asset = %2$s,request = %3$s; advertisement = %4$s", e10, adAsset.toString(), operation.f27696a, advertisement));
                downloadCallback.onDownloadFailed(new VungleException(26), operation.f27696a, advertisement.getId());
                return;
            } catch (IOException unused) {
                VungleLogger.error("AdLoader#onAssetDownloadFinished; loadAd sequence", String.format("Unzip failed %1$s; asset = %2$s,request = %3$s; advertisement = %4$s", file.getPath(), adAsset.toString(), operation.f27696a, advertisement));
                this.f27655j.dropCache(adAsset.serverPath);
                downloadCallback.onDownloadFailed(new VungleException(24), operation.f27696a, advertisement.getId());
                return;
            }
        }
        if (P(advertisement)) {
            VungleLogger.verbose(true, f27645q, TT_DOWNLOAD_CONTEXT, String.format("Ad ready to play, request  = %1$s, elapsed time = %2$dms", operation.f27696a, Long.valueOf(System.currentTimeMillis() - advertisement.adRequestStartTime)));
            downloadCallback.onDownloadCompleted(operation.f27696a, advertisement.getId());
        }
    }

    private boolean Z(int i10) {
        return i10 == 408 || (500 <= i10 && i10 < 600);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public VungleException a0(int i10) {
        return Z(i10) ? new VungleException(22) : new VungleException(21);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public VungleException b0(Throwable th) {
        return th instanceof UnknownHostException ? new VungleException(11) : th instanceof IOException ? new VungleException(20) : new VungleException(11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0(AdRequest adRequest, boolean z10) {
        Operation operation = this.f27646a.get(adRequest);
        if (operation != null) {
            operation.f27704i.set(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f0(Operation operation) {
        this.f27646a.put(operation.f27696a, operation);
        U(operation, new DownloadCallbackWrapper(this.f27652g.getBackgroundExecutor(), new DownloadAdCallback()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g0(AdRequest adRequest) {
        AdRequest adRequest2 = this.f27650e;
        if (adRequest2 == null || adRequest2.equals(adRequest)) {
            this.f27650e = null;
            OperationSequence.Entry entryB = this.f27649d.b();
            if (entryB != null) {
                Operation operation = entryB.f27821b;
                this.f27650e = operation.f27696a;
                f0(operation);
            }
        }
    }

    @DownloadRequest.Priority
    public static int getAssetPriority(String str, boolean z10) {
        if (z10) {
            return !str.endsWith("template") ? 1 : 0;
        }
        return 0;
    }

    private void h0(Advertisement advertisement, AdAsset adAsset, final File file, List<AdAsset> list) throws Throwable {
        final ArrayList arrayList = new ArrayList();
        for (AdAsset adAsset2 : list) {
            if (adAsset2.fileType == 2) {
                arrayList.add(adAsset2.localPath);
            }
        }
        File fileL = L(advertisement);
        if (fileL == null || !fileL.isDirectory()) {
            Object[] objArr = new Object[2];
            objArr[0] = fileL == null ? "null" : "not a dir";
            objArr[1] = advertisement;
            VungleLogger.error("AdLoader#unzipFile; loadAd sequence", String.format("Can't unzip file: destination dir is %1$s; advertisement = %2$s", objArr));
            throw new IOException("Unable to access Destination Directory");
        }
        List<File> listUnzip = UnzipUtility.unzip(file.getPath(), fileL.getPath(), new UnzipUtility.Filter() { // from class: com.vungle.warren.AdLoader.7
            @Override // com.vungle.warren.utility.UnzipUtility.Filter
            public boolean matches(String str) {
                File file2 = new File(str);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    File file3 = new File((String) it.next());
                    if (file3.equals(file2)) {
                        return false;
                    }
                    if (file2.getPath().startsWith(file3.getPath() + File.separator)) {
                        return false;
                    }
                }
                return true;
            }
        });
        if (file.getName().equals("template")) {
            File file2 = new File(fileL.getPath() + File.separator + "mraid.js");
            if (file2.exists()) {
                PrintWriter printWriter = new PrintWriter(new BufferedWriter(new FileWriter(file2, true)));
                HackMraid.apply(printWriter);
                printWriter.close();
            }
        }
        for (File file3 : listUnzip) {
            AdAsset adAsset3 = new AdAsset(advertisement.getId(), null, file3.getPath());
            adAsset3.fileSize = file3.length();
            adAsset3.fileType = 1;
            adAsset3.parentId = adAsset.identifier;
            adAsset3.status = 3;
            this.f27651f.save(adAsset3);
        }
        Log.d(f27645q, "Uzipped " + fileL);
        FileUtility.printDirectoryTree(fileL);
        adAsset.status = 4;
        this.f27651f.save(adAsset, new Repository.SaveCallback() { // from class: com.vungle.warren.AdLoader.8
            @Override // com.vungle.warren.persistence.Repository.SaveCallback
            public void onError(Exception exc) {
            }

            @Override // com.vungle.warren.persistence.Repository.SaveCallback
            public void onSaved() {
                AdLoader.this.f27652g.getBackgroundExecutor().execute(new Runnable() { // from class: com.vungle.warren.AdLoader.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            FileUtility.delete(file);
                        } catch (IOException e10) {
                            Log.e(AdLoader.f27645q, "Error on deleting zip assets archive", e10);
                        }
                    }
                });
            }
        });
    }

    File L(Advertisement advertisement) {
        return this.f27651f.getAdvertisementAssetDirectory(advertisement.getId()).get();
    }

    boolean N(Advertisement advertisement) throws IllegalStateException {
        List<AdAsset> list;
        if (advertisement == null || (list = this.f27651f.loadAllAdAssets(advertisement.getId()).get()) == null || list.size() == 0) {
            return false;
        }
        for (AdAsset adAsset : list) {
            if (adAsset.fileType == 0) {
                if (adAsset.status != 4) {
                    return false;
                }
            } else if (!S(adAsset.serverPath) || !P(advertisement)) {
                if (adAsset.status != 3 || !I(new File(adAsset.localPath), adAsset)) {
                    return false;
                }
            }
        }
        return true;
    }

    void c0(Advertisement advertisement, File file, String str, String str2) throws DatabaseHelper.DBException {
        String str3 = file.getPath() + File.separator + str;
        int i10 = (str3.endsWith(Advertisement.KEY_POSTROLL) || str3.endsWith("template")) ? 0 : 2;
        AdAsset adAsset = new AdAsset(advertisement.getId(), str2, str3);
        adAsset.status = 0;
        adAsset.fileType = i10;
        try {
            this.f27651f.save(adAsset);
        } catch (DatabaseHelper.DBException e10) {
            VungleLogger.error("AdLoader#saveAsset; loadAd sequence", String.format("Can't save adAsset %1$s; exception = %2$s", adAsset, e10));
            throw e10;
        }
    }

    public boolean canPlayAd(Advertisement advertisement) {
        if (advertisement == null || advertisement.getState() != 1) {
            return false;
        }
        return N(advertisement);
    }

    public boolean canRenderAd(Advertisement advertisement) {
        if (advertisement == null) {
            return false;
        }
        if (advertisement.getState() == 1 || advertisement.getState() == 2) {
            return N(advertisement);
        }
        return false;
    }

    public void clear() {
        HashSet<AdRequest> hashSet = new HashSet();
        hashSet.addAll(this.f27646a.keySet());
        hashSet.addAll(this.f27647b.keySet());
        for (AdRequest adRequest : hashSet) {
            Operation operationRemove = this.f27646a.remove(adRequest);
            this.f27648c.remove(operationRemove);
            X(operationRemove, 25);
            X(this.f27647b.remove(adRequest), 25);
        }
        for (Operation operation : this.f27648c) {
            this.f27648c.remove(operation);
            X(operation, 25);
        }
        this.f27652g.getBackgroundExecutor().submit(new Runnable() { // from class: com.vungle.warren.AdLoader.1
            @Override // java.lang.Runnable
            public void run() {
                AdLoader.this.f27650e = null;
                Iterator<OperationSequence.Entry> it = AdLoader.this.f27649d.d().iterator();
                while (it.hasNext()) {
                    AdLoader.this.X(it.next().f27821b, 25);
                }
            }
        });
    }

    void d0(boolean z10) {
        this.f27661p = z10;
    }

    public void dropCache(String str) {
        List<AdAsset> list = this.f27651f.loadAllAdAssets(str).get();
        if (list == null) {
            Log.w(f27645q, "No assets found in ad cache to cleanup");
            return;
        }
        HashSet hashSet = new HashSet();
        Iterator<AdAsset> it = list.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().serverPath);
        }
        Advertisement advertisement = (Advertisement) this.f27651f.load(str, Advertisement.class).get();
        if (advertisement != null) {
            hashSet.addAll(advertisement.getDownloadableUrls().values());
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            this.f27655j.dropCache((String) it2.next());
        }
    }

    public void init(JobRunner jobRunner) {
        this.f27657l.set(jobRunner);
        this.f27655j.init();
    }

    public boolean isLoading(AdRequest adRequest) {
        Operation operation = this.f27646a.get(adRequest);
        return operation != null && operation.f27704i.get();
    }

    public void load(final Operation operation) {
        JobRunner jobRunner = this.f27657l.get();
        if (jobRunner == null) {
            VungleLogger.error("AdLoader#load; loadAd sequence", String.format("Cannot load operation %s; job runner is null", operation));
            X(operation, 9);
            return;
        }
        F(operation.f27696a.getPlacementId(), operation.f27697b);
        Operation operationRemove = this.f27647b.remove(operation.f27696a);
        if (operationRemove != null) {
            operation.b(operationRemove);
        }
        if (operation.f27698c > 0) {
            this.f27647b.put(operation.f27696a, operation);
            jobRunner.execute(DownloadJob.makeJobInfo(operation.f27696a).setDelay(operation.f27698c).setUpdateCurrent(true));
        } else {
            operation.f27696a.timeStamp.set(System.currentTimeMillis());
            this.f27648c.add(operation);
            this.f27652g.getBackgroundExecutor().execute(new Runnable() { // from class: com.vungle.warren.AdLoader.2
                @Override // java.lang.Runnable
                public void run() {
                    if (AdLoader.this.f27648c.contains(operation)) {
                        Operation operation2 = operation;
                        Operation operation3 = (Operation) AdLoader.this.f27646a.get(operation2.f27696a);
                        if (operation3 != null) {
                            int i10 = operation3.f27706k;
                            operation3.b(operation2);
                            if (operation3.f27706k < i10) {
                                AdLoader.this.W(operation3);
                            }
                        } else {
                            OperationSequence.Entry entryC = AdLoader.this.f27649d.c(operation2.f27696a);
                            if (entryC != null) {
                                entryC.f27821b.b(operation2);
                                operation2 = entryC.f27821b;
                            }
                            if (operation2.f27706k <= 0) {
                                AdLoader.this.f0(operation2);
                            } else {
                                OperationSequence operationSequence = AdLoader.this.f27649d;
                                if (entryC == null) {
                                    entryC = new OperationSequence.Entry(operation2);
                                }
                                operationSequence.a(entryC);
                                AdLoader.this.g0(null);
                            }
                        }
                        AdLoader.this.f27648c.remove(operation2);
                    }
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void loadEndlessIfNeeded(com.vungle.warren.model.Placement r17, com.vungle.warren.AdConfig.AdSize r18, long r19) {
        /*
            r16 = this;
            r0 = r16
            boolean r1 = r17.isMultipleHBPEnabled()
            r2 = 1
            if (r1 == 0) goto L1d
            int r1 = r17.getPlacementAdType()
            if (r1 != r2) goto L1d
            boolean r1 = com.vungle.warren.AdConfig.AdSize.isBannerAdSize(r18)
            if (r1 != 0) goto L1d
            com.vungle.warren.AdConfig$AdSize r1 = r17.getRecommendedAdSize()
            r5 = r1
            r1 = r17
            goto L21
        L1d:
            r1 = r17
            r5 = r18
        L21:
            boolean r3 = r0.R(r1, r5)
            if (r3 == 0) goto L28
            return
        L28:
            r3 = 0
            boolean r4 = r17.isMultipleHBPEnabled()
            r6 = 0
            if (r4 == 0) goto L45
            boolean r4 = r17.isSingleHBPEnabled()
            if (r4 != 0) goto L45
            com.vungle.warren.AdRequest r3 = new com.vungle.warren.AdRequest
            java.lang.String r4 = r17.getId()
            int r7 = r17.getMaxHbCache()
            long r7 = (long) r7
            r3.<init>(r4, r2, r7)
            goto L69
        L45:
            boolean r2 = r17.isSingleHBPEnabled()
            r7 = 1
            if (r2 == 0) goto L59
            com.vungle.warren.AdRequest r2 = new com.vungle.warren.AdRequest
            java.lang.String r3 = r17.getId()
            r4 = 2
            r2.<init>(r3, r4, r7)
        L57:
            r4 = r2
            goto L6a
        L59:
            boolean r2 = r17.isAutoCached()
            if (r2 == 0) goto L69
            com.vungle.warren.AdRequest r2 = new com.vungle.warren.AdRequest
            java.lang.String r3 = r17.getId()
            r2.<init>(r3, r6, r7)
            goto L57
        L69:
            r4 = r3
        L6a:
            if (r4 == 0) goto L83
            com.vungle.warren.AdLoader$Operation r2 = new com.vungle.warren.AdLoader$Operation
            r8 = 2000(0x7d0, double:9.88E-321)
            r10 = 5
            r11 = 1
            r12 = 0
            r13 = 0
            int r14 = r17.getAutoCachePriority()
            com.vungle.warren.LoadAdCallback[] r15 = new com.vungle.warren.LoadAdCallback[r6]
            r3 = r2
            r6 = r19
            r3.<init>(r4, r5, r6, r8, r10, r11, r12, r13, r14, r15)
            r0.load(r2)
        L83:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.AdLoader.loadEndlessIfNeeded(com.vungle.warren.model.Placement, com.vungle.warren.AdConfig$AdSize, long):void");
    }

    public void loadPendingInternal(AdRequest adRequest) {
        Operation operationRemove = this.f27647b.remove(adRequest);
        if (operationRemove == null) {
            return;
        }
        load(operationRemove.a(0L));
    }

    public void load(AdRequest adRequest, AdConfig adConfig, LoadAdCallback loadAdCallback) {
        load(new Operation(adRequest, adConfig.getAdSize(), 0L, RETRY_DELAY, 5, 0, 0, true, 0, loadAdCallback));
    }
}
