package com.vungle.warren;

import android.annotation.SuppressLint;
import android.content.Context;
import com.vungle.warren.analytics.VungleAnalytics;
import com.vungle.warren.downloader.AssetDownloader;
import com.vungle.warren.downloader.CleverCache;
import com.vungle.warren.downloader.Downloader;
import com.vungle.warren.downloader.DownloaderCache;
import com.vungle.warren.downloader.LRUCachePolicy;
import com.vungle.warren.log.LogManager;
import com.vungle.warren.omsdk.OMInjector;
import com.vungle.warren.omsdk.OMTracker;
import com.vungle.warren.persistence.CacheManager;
import com.vungle.warren.persistence.Designer;
import com.vungle.warren.persistence.FilePreferences;
import com.vungle.warren.persistence.GraphicDesigner;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.tasks.JobCreator;
import com.vungle.warren.tasks.JobRunner;
import com.vungle.warren.tasks.ReconfigJob;
import com.vungle.warren.tasks.VungleJobCreator;
import com.vungle.warren.tasks.utility.JobRunnerThreadPriorityHelper;
import com.vungle.warren.utility.AppSession;
import com.vungle.warren.utility.ConcurrencyTimeoutProvider;
import com.vungle.warren.utility.Executors;
import com.vungle.warren.utility.NetworkProvider;
import com.vungle.warren.utility.SDKExecutors;
import com.vungle.warren.utility.TimeoutProvider;
import com.vungle.warren.utility.platform.AndroidPlatform;
import com.vungle.warren.utility.platform.Platform;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
class ServiceLocator {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static ServiceLocator f27850d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final VungleStaticApi f27851e = new VungleStaticApi() { // from class: com.vungle.warren.ServiceLocator.1
        @Override // com.vungle.warren.VungleStaticApi
        public Collection<String> getValidPlacements() {
            return Vungle.getValidPlacements();
        }

        @Override // com.vungle.warren.VungleStaticApi
        public boolean isInitialized() {
            return Vungle.isInitialized();
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ReconfigJob.ReconfigCall f27852f = new ReconfigJob.ReconfigCall() { // from class: com.vungle.warren.ServiceLocator.25
        @Override // com.vungle.warren.tasks.ReconfigJob.ReconfigCall
        public void reConfigVungle() {
            Vungle.reConfigure();
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f27853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<Class, Creator> f27854b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<Class, Object> f27855c = new HashMap();

    private abstract class Creator<T> {
        private Creator() {
        }

        boolean a() {
            return true;
        }

        abstract T create();
    }

    private ServiceLocator(Context context) {
        this.f27853a = context.getApplicationContext();
        d();
    }

    private void d() {
        this.f27854b.put(JobCreator.class, new Creator() { // from class: com.vungle.warren.ServiceLocator.2
            @Override // com.vungle.warren.ServiceLocator.Creator
            public JobCreator create() {
                return new VungleJobCreator((Repository) ServiceLocator.this.g(Repository.class), (Designer) ServiceLocator.this.g(Designer.class), (VungleApiClient) ServiceLocator.this.g(VungleApiClient.class), new VungleAnalytics((VungleApiClient) ServiceLocator.this.g(VungleApiClient.class), (Repository) ServiceLocator.this.g(Repository.class)), ServiceLocator.f27852f, (AdLoader) ServiceLocator.this.g(AdLoader.class), ServiceLocator.f27851e, (LogManager) ServiceLocator.this.g(LogManager.class), ((Executors) ServiceLocator.this.g(Executors.class)).getBackgroundExecutor());
            }
        });
        this.f27854b.put(JobRunner.class, new Creator() { // from class: com.vungle.warren.ServiceLocator.3
            @Override // com.vungle.warren.ServiceLocator.Creator
            public JobRunner create() {
                return new VungleJobRunner((JobCreator) ServiceLocator.this.g(JobCreator.class), ((Executors) ServiceLocator.this.g(Executors.class)).getJobExecutor(), new JobRunnerThreadPriorityHelper(), NetworkProvider.getInstance(ServiceLocator.this.f27853a));
            }
        });
        this.f27854b.put(AdLoader.class, new Creator() { // from class: com.vungle.warren.ServiceLocator.4
            @Override // com.vungle.warren.ServiceLocator.Creator
            public AdLoader create() {
                return new AdLoader((Executors) ServiceLocator.this.g(Executors.class), (Repository) ServiceLocator.this.g(Repository.class), (VungleApiClient) ServiceLocator.this.g(VungleApiClient.class), (CacheManager) ServiceLocator.this.g(CacheManager.class), (Downloader) ServiceLocator.this.g(Downloader.class), (RuntimeValues) ServiceLocator.this.g(RuntimeValues.class), (VungleStaticApi) ServiceLocator.this.g(VungleStaticApi.class), (VisionController) ServiceLocator.this.g(VisionController.class), (OperationSequence) ServiceLocator.this.g(OperationSequence.class), (OMInjector) ServiceLocator.this.g(OMInjector.class));
            }
        });
        this.f27854b.put(Downloader.class, new Creator() { // from class: com.vungle.warren.ServiceLocator.5
            @Override // com.vungle.warren.ServiceLocator.Creator
            public Downloader create() {
                return new AssetDownloader((DownloaderCache) ServiceLocator.this.g(DownloaderCache.class), AssetDownloader.VERIFICATION_WINDOW, 4, NetworkProvider.getInstance(ServiceLocator.this.f27853a), ((Executors) ServiceLocator.this.g(Executors.class)).getUIExecutor());
            }
        });
        this.f27854b.put(VungleApiClient.class, new Creator() { // from class: com.vungle.warren.ServiceLocator.6
            @Override // com.vungle.warren.ServiceLocator.Creator
            public VungleApiClient create() {
                return new VungleApiClient(ServiceLocator.this.f27853a, (CacheManager) ServiceLocator.this.g(CacheManager.class), (Repository) ServiceLocator.this.g(Repository.class), (OMInjector) ServiceLocator.this.g(OMInjector.class));
            }
        });
        this.f27854b.put(Repository.class, new Creator() { // from class: com.vungle.warren.ServiceLocator.7
            @Override // com.vungle.warren.ServiceLocator.Creator
            public Repository create() {
                Executors executors = (Executors) ServiceLocator.this.g(Executors.class);
                return new Repository(ServiceLocator.this.f27853a, (Designer) ServiceLocator.this.g(Designer.class), executors.getIOExecutor(), executors.getUIExecutor());
            }
        });
        this.f27854b.put(LogManager.class, new Creator() { // from class: com.vungle.warren.ServiceLocator.8
            @Override // com.vungle.warren.ServiceLocator.Creator
            Object create() {
                return new LogManager(ServiceLocator.this.f27853a, (CacheManager) ServiceLocator.this.g(CacheManager.class), (VungleApiClient) ServiceLocator.this.g(VungleApiClient.class), ((Executors) ServiceLocator.this.g(Executors.class)).getLoggerExecutor(), (FilePreferences) ServiceLocator.this.g(FilePreferences.class));
            }
        });
        this.f27854b.put(Designer.class, new Creator() { // from class: com.vungle.warren.ServiceLocator.9
            @Override // com.vungle.warren.ServiceLocator.Creator
            public Designer create() {
                return new GraphicDesigner((CacheManager) ServiceLocator.this.g(CacheManager.class));
            }
        });
        this.f27854b.put(CacheManager.class, new Creator() { // from class: com.vungle.warren.ServiceLocator.10
            @Override // com.vungle.warren.ServiceLocator.Creator
            public CacheManager create() {
                return new CacheManager(ServiceLocator.this.f27853a, (FilePreferences) ServiceLocator.this.g(FilePreferences.class));
            }
        });
        this.f27854b.put(Platform.class, new Creator<Platform>() { // from class: com.vungle.warren.ServiceLocator.11
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.warren.ServiceLocator.Creator
            public Platform create() {
                return new AndroidPlatform();
            }
        });
        this.f27854b.put(Executors.class, new Creator() { // from class: com.vungle.warren.ServiceLocator.12
            @Override // com.vungle.warren.ServiceLocator.Creator
            public Executors create() {
                return new SDKExecutors();
            }
        });
        this.f27854b.put(RuntimeValues.class, new Creator() { // from class: com.vungle.warren.ServiceLocator.13
            @Override // com.vungle.warren.ServiceLocator.Creator
            public RuntimeValues create() {
                return new RuntimeValues();
            }
        });
        this.f27854b.put(VungleStaticApi.class, new Creator() { // from class: com.vungle.warren.ServiceLocator.14
            @Override // com.vungle.warren.ServiceLocator.Creator
            public VungleStaticApi create() {
                return ServiceLocator.f27851e;
            }
        });
        this.f27854b.put(PresentationFactory.class, new Creator() { // from class: com.vungle.warren.ServiceLocator.15
            @Override // com.vungle.warren.ServiceLocator.Creator
            boolean a() {
                return false;
            }

            @Override // com.vungle.warren.ServiceLocator.Creator
            public PresentationFactory create() {
                return new AdvertisementPresentationFactory((AdLoader) ServiceLocator.this.g(AdLoader.class), (VungleStaticApi) ServiceLocator.this.g(VungleStaticApi.class), (Repository) ServiceLocator.this.g(Repository.class), (VungleApiClient) ServiceLocator.this.g(VungleApiClient.class), (JobRunner) ServiceLocator.this.g(JobRunner.class), (RuntimeValues) ServiceLocator.this.g(RuntimeValues.class), (OMTracker.Factory) ServiceLocator.this.g(OMTracker.Factory.class), ((Executors) ServiceLocator.this.g(Executors.class)).getTaskExecutor());
            }
        });
        this.f27854b.put(DownloaderCache.class, new Creator() { // from class: com.vungle.warren.ServiceLocator.16
            @Override // com.vungle.warren.ServiceLocator.Creator
            Object create() {
                CacheManager cacheManager = (CacheManager) ServiceLocator.this.g(CacheManager.class);
                return new CleverCache(cacheManager, new LRUCachePolicy(cacheManager, CleverCache.CC_DIR), new DownloaderSizeProvider(cacheManager, (RuntimeValues) ServiceLocator.this.g(RuntimeValues.class), 0.1f), TimeUnit.DAYS.toMillis(90L));
            }
        });
        this.f27854b.put(VisionController.class, new Creator() { // from class: com.vungle.warren.ServiceLocator.17
            @Override // com.vungle.warren.ServiceLocator.Creator
            public VisionController create() {
                return new VisionController((Repository) ServiceLocator.this.g(Repository.class), NetworkProvider.getInstance(ServiceLocator.this.f27853a));
            }
        });
        this.f27854b.put(TimeoutProvider.class, new Creator() { // from class: com.vungle.warren.ServiceLocator.18
            @Override // com.vungle.warren.ServiceLocator.Creator
            public TimeoutProvider create() {
                return new ConcurrencyTimeoutProvider();
            }
        });
        this.f27854b.put(OperationSequence.class, new Creator() { // from class: com.vungle.warren.ServiceLocator.19
            @Override // com.vungle.warren.ServiceLocator.Creator
            public OperationSequence create() {
                return new OperationSequence();
            }
        });
        this.f27854b.put(AppSession.class, new Creator<AppSession>() { // from class: com.vungle.warren.ServiceLocator.20
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.vungle.warren.ServiceLocator.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public AppSession create() {
                return new AppSession();
            }
        });
        this.f27854b.put(OMInjector.class, new Creator<OMInjector>() { // from class: com.vungle.warren.ServiceLocator.21
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.warren.ServiceLocator.Creator
            public OMInjector create() {
                return new OMInjector(ServiceLocator.this.f27853a);
            }
        });
        this.f27854b.put(OMTracker.Factory.class, new Creator<OMTracker.Factory>() { // from class: com.vungle.warren.ServiceLocator.22
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.warren.ServiceLocator.Creator
            public OMTracker.Factory create() {
                return new OMTracker.Factory();
            }
        });
        this.f27854b.put(CacheBustManager.class, new Creator<CacheBustManager>() { // from class: com.vungle.warren.ServiceLocator.23
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.warren.ServiceLocator.Creator
            public CacheBustManager create() {
                return new CacheBustManager((JobRunner) ServiceLocator.this.g(JobRunner.class));
            }
        });
        this.f27854b.put(FilePreferences.class, new Creator<FilePreferences>() { // from class: com.vungle.warren.ServiceLocator.24
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.warren.ServiceLocator.Creator
            public FilePreferences create() {
                return new FilePreferences(ServiceLocator.this.f27853a, ((Executors) ServiceLocator.this.g(Executors.class)).getIOExecutor());
            }
        });
    }

    static synchronized void e() {
        f27850d = null;
    }

    static synchronized ServiceLocator f(Context context) {
        if (f27850d == null) {
            f27850d = new ServiceLocator(context);
        }
        return f27850d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> T g(Class<T> cls) {
        Class clsI = i(cls);
        T t10 = (T) this.f27855c.get(clsI);
        if (t10 != null) {
            return t10;
        }
        Creator creator = this.f27854b.get(clsI);
        if (creator == null) {
            throw new IllegalArgumentException("Unknown class");
        }
        T t11 = (T) creator.create();
        if (creator.a()) {
            this.f27855c.put(clsI, t11);
        }
        return t11;
    }

    private Class i(Class cls) {
        for (Class cls2 : this.f27854b.keySet()) {
            if (cls2.isAssignableFrom(cls)) {
                return cls2;
            }
        }
        throw new IllegalArgumentException("Unknown dependency for " + cls);
    }

    synchronized <T> T h(Class<T> cls) {
        return (T) g(cls);
    }

    synchronized <T> boolean j(Class<T> cls) {
        return this.f27855c.containsKey(i(cls));
    }
}
