package com.vungle.warren;

import android.util.Log;
import androidx.annotation.Keep;
import com.vungle.warren.log.LogManager;

/* JADX INFO: loaded from: classes2.dex */
public class VungleLogger {
    public static final int LOGGER_MAX_ENTRIES = 100;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f27992c = "VungleLogger";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final VungleLogger f27993d = new VungleLogger();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LoggerLevel f27994a = LoggerLevel.DEBUG;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LogManager f27995b;

    @Keep
    public enum LoggerLevel {
        VERBOSE(0, "verbose"),
        DEBUG(1, "debug"),
        INFO(2, "info"),
        WARNING(3, "warn"),
        ERROR(4, "error"),
        CRASH(5, "crash");

        private int level;
        private String levelString;

        LoggerLevel(int i10, String str) {
            this.level = i10;
            this.levelString = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.levelString;
        }
    }

    private VungleLogger() {
    }

    private static boolean a(LoggerLevel loggerLevel) {
        return loggerLevel.level >= f27993d.f27994a.level;
    }

    public static void addCustomData(String str, String str2) {
        LogManager logManager = f27993d.f27995b;
        if (logManager == null) {
            Log.d(f27992c, "Please setup Logger first.");
        } else {
            logManager.addCustomData(str, str2);
        }
    }

    private static void b(LoggerLevel loggerLevel, String str, String str2) {
        VungleLogger vungleLogger = f27993d;
        LogManager logManager = vungleLogger.f27995b;
        if (logManager == null) {
            Log.d(f27992c, "Please setup Logger first.");
        } else if (logManager.isLoggingEnabled() && a(loggerLevel)) {
            vungleLogger.f27995b.saveLog(loggerLevel, str, str2, null, null);
        }
    }

    static void c(LogManager logManager, LoggerLevel loggerLevel, int i10) {
        VungleLogger vungleLogger = f27993d;
        vungleLogger.f27994a = loggerLevel;
        vungleLogger.f27995b = logManager;
        logManager.setMaxEntries(i10);
    }

    public static void debug(String str, String str2) {
        b(LoggerLevel.DEBUG, str, str2);
    }

    public static void error(String str, String str2) {
        b(LoggerLevel.ERROR, str, str2);
    }

    public static void info(String str, String str2) {
        b(LoggerLevel.INFO, str, str2);
    }

    public static void removeCustomData(String str) {
        LogManager logManager = f27993d.f27995b;
        if (logManager == null) {
            Log.d(f27992c, "Please setup Logger first.");
        } else {
            logManager.removeCustomData(str);
        }
    }

    public static void verbose(String str, String str2) {
        b(LoggerLevel.VERBOSE, str, str2);
    }

    public static void warn(String str, String str2) {
        b(LoggerLevel.WARNING, str, str2);
    }

    public static void debug(boolean z10, String str, String str2, String str3) {
        if (z10) {
            Log.d(str, "[" + str2 + "] " + str3);
        }
        debug(str2, str3);
    }

    public static void error(boolean z10, String str, String str2, String str3) {
        if (z10) {
            Log.e(str, "[" + str2 + "] " + str3);
        }
        error(str2, str3);
    }

    public static void info(boolean z10, String str, String str2, String str3) {
        if (z10) {
            Log.i(str, "[" + str2 + "] " + str3);
        }
        info(str2, str3);
    }

    public static void verbose(boolean z10, String str, String str2, String str3) {
        if (z10) {
            Log.v(str, "[" + str2 + "] " + str3);
        }
        verbose(str2, str3);
    }

    public static void warn(boolean z10, String str, String str2, String str3) {
        if (z10) {
            Log.w(str, "[" + str2 + "] " + str3);
        }
        warn(str2, str3);
    }
}
