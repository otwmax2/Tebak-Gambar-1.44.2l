package com.facebook.internal.instrument.anrreport;

import android.app.ActivityManager;
import android.os.Looper;
import android.os.Process;
import com.facebook.FacebookSdk;
import com.facebook.internal.instrument.InstrumentData;
import com.facebook.internal.instrument.InstrumentUtility;
import com.facebook.internal.instrument.anrreport.ANRDetector;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.vungle.mediation.BuildConfig;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import t9.m;

/* JADX INFO: compiled from: ANRDetector.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ANRDetector {
    private static final int DETECTION_INTERVAL_IN_MS = 500;
    public static final ANRDetector INSTANCE = new ANRDetector();
    private static final int myUid = Process.myUid();
    private static final ScheduledExecutorService scheduledExecutorService = Executors.newSingleThreadScheduledExecutor();
    private static String previousStackTrace = BuildConfig.FLAVOR;
    private static final Runnable anrDetectorRunnable = new Runnable() { // from class: e3.a
        @Override // java.lang.Runnable
        public final void run() {
            ANRDetector.m132anrDetectorRunnable$lambda0();
        }
    };

    private ANRDetector() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: anrDetectorRunnable$lambda-0, reason: not valid java name */
    public static final void m132anrDetectorRunnable$lambda0() {
        if (CrashShieldHandler.isObjectCrashing(ANRDetector.class)) {
            return;
        }
        try {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            Object systemService = FacebookSdk.getApplicationContext().getSystemService("activity");
            if (systemService == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.app.ActivityManager");
            }
            checkProcessError((ActivityManager) systemService);
        } catch (Exception unused) {
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ANRDetector.class);
        }
    }

    public static final void checkProcessError(ActivityManager activityManager) {
        if (CrashShieldHandler.isObjectCrashing(ANRDetector.class) || activityManager == null) {
            return;
        }
        try {
            List<ActivityManager.ProcessErrorStateInfo> processesInErrorState = activityManager.getProcessesInErrorState();
            if (processesInErrorState == null) {
                return;
            }
            for (ActivityManager.ProcessErrorStateInfo processErrorStateInfo : processesInErrorState) {
                if (processErrorStateInfo.condition == 2 && processErrorStateInfo.uid == myUid) {
                    Thread thread = Looper.getMainLooper().getThread();
                    m.d(thread, "getMainLooper().thread");
                    InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
                    String stackTrace = InstrumentUtility.getStackTrace(thread);
                    if (!m.a(stackTrace, previousStackTrace) && InstrumentUtility.isSDKRelatedThread(thread)) {
                        previousStackTrace = stackTrace;
                        InstrumentData.Builder builder = InstrumentData.Builder.INSTANCE;
                        InstrumentData.Builder.build(processErrorStateInfo.shortMsg, stackTrace).save();
                    }
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ANRDetector.class);
        }
    }

    public static final void start() {
        if (CrashShieldHandler.isObjectCrashing(ANRDetector.class)) {
            return;
        }
        try {
            scheduledExecutorService.scheduleAtFixedRate(anrDetectorRunnable, 0L, DETECTION_INTERVAL_IN_MS, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ANRDetector.class);
        }
    }
}
