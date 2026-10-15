package com.vungle.warren.log;

import android.util.Log;
import com.vungle.warren.VungleLogger;
import com.vungle.warren.log.LogManager;
import java.lang.Thread;

/* JADX INFO: loaded from: classes2.dex */
class JVMCrashCollector implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LogManager.SdkLoggingEventListener f28062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f28063c = LogManager.sDefaultCollectFilter;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f28061a = Thread.getDefaultUncaughtExceptionHandler();

    JVMCrashCollector(LogManager.SdkLoggingEventListener sdkLoggingEventListener) {
        this.f28062b = sdkLoggingEventListener;
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    void a(String str) {
        this.f28063c = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        if (this.f28062b.isCrashReportEnabled() && thread != null && th != null) {
            boolean z10 = false;
            for (Throwable cause = th; cause != null; cause = cause.getCause()) {
                StackTraceElement[] stackTrace = cause.getStackTrace();
                int length = stackTrace.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    }
                    if (stackTrace[i10].getClassName().startsWith(this.f28063c)) {
                        z10 = true;
                        break;
                    }
                    i10++;
                }
            }
            if (z10) {
                this.f28062b.saveLog(VungleLogger.LoggerLevel.CRASH, "crash", Log.getStackTraceString(th), th.getClass().toString(), String.valueOf(thread.getId()));
            }
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f28061a;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }
}
