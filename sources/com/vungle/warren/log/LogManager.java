package com.vungle.warren.log;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.f;
import com.vungle.mediation.BuildConfig;
import com.vungle.warren.Vungle;
import com.vungle.warren.VungleApiClient;
import com.vungle.warren.VungleLogger;
import com.vungle.warren.persistence.CacheManager;
import com.vungle.warren.persistence.FilePreferences;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class LogManager {
    public static final boolean DEFAULT_CRASH_COLLECT_ENABLED = false;
    public static final int DEFAULT_CRASH_SEND_BATCH_MAX = 5;
    public static final boolean DEFAULT_LOGGING_ENABLED = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f28075o = "LogManager";
    public static String sDefaultCollectFilter = "com.vungle";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LogPersister f28076a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LogSender f28077b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f28078c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final FilePreferences f28079d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private JVMCrashCollector f28080e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicBoolean f28081f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicBoolean f28082g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f28083h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AtomicInteger f28084i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f28085j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final String f28086k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Map<String, String> f28087l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private f f28088m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private SdkLoggingEventListener f28089n;

    interface SdkLoggingEventListener {
        boolean isCrashReportEnabled();

        void saveLog(VungleLogger.LoggerLevel loggerLevel, String str, String str2, String str3, String str4);

        void sendPendingLogs();
    }

    public LogManager(Context context, CacheManager cacheManager, VungleApiClient vungleApiClient, Executor executor, FilePreferences filePreferences) {
        this(context, new LogPersister(cacheManager.getCache()), new LogSender(vungleApiClient, filePreferences), executor, filePreferences);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String e() {
        if (this.f28087l.isEmpty()) {
            return null;
        }
        return this.f28088m.t(this.f28087l);
    }

    private void g() {
        if (!isCrashReportEnabled()) {
            Log.d(f28075o, "Crash report disabled, no need to send crash log files.");
            return;
        }
        File[] fileArrB = this.f28076a.b(this.f28084i.get());
        if (fileArrB == null || fileArrB.length == 0) {
            Log.d(f28075o, "No need to send empty crash log files.");
        } else {
            this.f28077b.e(fileArrB);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (!isLoggingEnabled()) {
            Log.d(f28075o, "Logging disabled, no need to send log files.");
            return;
        }
        File[] fileArrG = this.f28076a.g();
        if (fileArrG == null || fileArrG.length == 0) {
            Log.d(f28075o, "No need to send empty files.");
        } else {
            this.f28077b.e(fileArrG);
        }
    }

    public void addCustomData(String str, String str2) {
        this.f28087l.put(str, str2);
    }

    synchronized void f() {
        if (!this.f28085j) {
            if (!isCrashReportEnabled()) {
                Log.d(f28075o, "crash report is disabled.");
                return;
            }
            if (this.f28080e == null) {
                this.f28080e = new JVMCrashCollector(this.f28089n);
            }
            this.f28080e.a(this.f28083h);
            this.f28085j = true;
        }
    }

    public boolean isCrashReportEnabled() {
        return this.f28082g.get();
    }

    public boolean isLoggingEnabled() {
        return this.f28081f.get();
    }

    public void removeCustomData(String str) {
        this.f28087l.remove(str);
    }

    public void saveLog(final VungleLogger.LoggerLevel loggerLevel, final String str, final String str2, final String str3, final String str4) {
        final String headerUa = VungleApiClient.getHeaderUa();
        if (loggerLevel != VungleLogger.LoggerLevel.CRASH || !isCrashReportEnabled()) {
            this.f28078c.execute(new Runnable() { // from class: com.vungle.warren.log.LogManager.1
                @Override // java.lang.Runnable
                public void run() {
                    if (LogManager.this.isLoggingEnabled()) {
                        LogManager.this.f28076a.i(str2, loggerLevel.toString(), str, BuildConfig.FLAVOR, headerUa, LogManager.this.f28086k, LogManager.this.e(), str3, str4);
                    }
                }
            });
        } else {
            synchronized (this) {
                this.f28076a.saveCrashLogData(str2, loggerLevel.toString(), str, BuildConfig.FLAVOR, headerUa, this.f28086k, e(), str3, str4);
            }
        }
    }

    public void sendSdkLogs() {
        g();
        h();
    }

    public void setLoggingEnabled(boolean z10) {
        if (this.f28081f.compareAndSet(!z10, z10)) {
            this.f28079d.put("logging_enabled", z10);
            this.f28079d.apply();
        }
    }

    public void setMaxEntries(int i10) {
        this.f28076a.j(i10);
    }

    public synchronized void updateCrashReportConfig(boolean z10, String str, int i10) {
        boolean z11 = true;
        boolean z12 = this.f28082g.get() != z10;
        boolean z13 = (TextUtils.isEmpty(str) || str.equals(this.f28083h)) ? false : true;
        int iMax = Math.max(i10, 0);
        if (this.f28084i.get() == iMax) {
            z11 = false;
        }
        if (z12 || z13 || z11) {
            if (z12) {
                this.f28082g.set(z10);
                this.f28079d.put("crash_report_enabled", z10);
            }
            if (z13) {
                if ("*".equals(str)) {
                    this.f28083h = BuildConfig.FLAVOR;
                } else {
                    this.f28083h = str;
                }
                this.f28079d.put("crash_collect_filter", this.f28083h);
            }
            if (z11) {
                this.f28084i.set(iMax);
                this.f28079d.put("crash_batch_max", iMax);
            }
            this.f28079d.apply();
            JVMCrashCollector jVMCrashCollector = this.f28080e;
            if (jVMCrashCollector != null) {
                jVMCrashCollector.a(this.f28083h);
            }
            if (z10) {
                f();
            }
        }
    }

    LogManager(Context context, LogPersister logPersister, LogSender logSender, Executor executor, FilePreferences filePreferences) {
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.f28081f = atomicBoolean;
        AtomicBoolean atomicBoolean2 = new AtomicBoolean(false);
        this.f28082g = atomicBoolean2;
        this.f28083h = sDefaultCollectFilter;
        this.f28084i = new AtomicInteger(5);
        this.f28085j = false;
        this.f28087l = new ConcurrentHashMap();
        this.f28088m = new f();
        this.f28089n = new SdkLoggingEventListener() { // from class: com.vungle.warren.log.LogManager.2
            @Override // com.vungle.warren.log.LogManager.SdkLoggingEventListener
            public boolean isCrashReportEnabled() {
                return LogManager.this.isCrashReportEnabled();
            }

            @Override // com.vungle.warren.log.LogManager.SdkLoggingEventListener
            public void saveLog(VungleLogger.LoggerLevel loggerLevel, String str, String str2, String str3, String str4) {
                LogManager.this.saveLog(loggerLevel, str, str2, str3, str4);
            }

            @Override // com.vungle.warren.log.LogManager.SdkLoggingEventListener
            public void sendPendingLogs() {
                LogManager.this.h();
            }
        };
        this.f28086k = context.getPackageName();
        this.f28077b = logSender;
        this.f28076a = logPersister;
        this.f28078c = executor;
        this.f28079d = filePreferences;
        logPersister.k(this.f28089n);
        Package r62 = Vungle.class.getPackage();
        if (r62 != null) {
            sDefaultCollectFilter = r62.getName();
        }
        atomicBoolean.set(filePreferences.getBoolean("logging_enabled", false));
        atomicBoolean2.set(filePreferences.getBoolean("crash_report_enabled", false));
        this.f28083h = filePreferences.getString("crash_collect_filter", sDefaultCollectFilter);
        this.f28084i.set(filePreferences.getInt("crash_batch_max", 5));
        f();
    }
}
