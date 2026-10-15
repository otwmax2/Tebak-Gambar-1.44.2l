package com.facebook.appevents.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.facebook.FacebookSdk;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.Logger;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.internal.security.CertificateUtil;
import java.util.Arrays;
import java.util.Locale;
import t9.b0;
import t9.m;

/* JADX INFO: compiled from: SessionLogger.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SessionLogger {
    private static final String PACKAGE_CHECKSUM = "PCKGCHKSUM";
    public static final SessionLogger INSTANCE = new SessionLogger();
    private static final String TAG = SessionLogger.class.getCanonicalName();
    private static final long[] INACTIVE_SECONDS_QUANTA = {300000, 900000, 1800000, 3600000, 21600000, 43200000, 86400000, 172800000, 259200000, 604800000, 1209600000, 1814400000, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L};

    private SessionLogger() {
    }

    private final String computePackageChecksum(Context context) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            String strK = m.k("PCKGCHKSUM;", packageManager.getPackageInfo(context.getPackageName(), 0).versionName);
            SharedPreferences sharedPreferences = context.getSharedPreferences(FacebookSdk.APP_EVENT_PREFERENCES, 0);
            String string = sharedPreferences.getString(strK, null);
            if (string != null && string.length() == 32) {
                return string;
            }
            HashUtils hashUtils = HashUtils.INSTANCE;
            String strComputeChecksumWithPackageManager = HashUtils.computeChecksumWithPackageManager(context, null);
            if (strComputeChecksumWithPackageManager == null) {
                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
                m.d(applicationInfo, "pm.getApplicationInfo(context.packageName, 0)");
                strComputeChecksumWithPackageManager = HashUtils.computeChecksum(applicationInfo.sourceDir);
            }
            sharedPreferences.edit().putString(strK, strComputeChecksumWithPackageManager).apply();
            return strComputeChecksumWithPackageManager;
        } catch (Exception unused) {
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public static final int getQuantaIndex(long j10) {
        if (CrashShieldHandler.isObjectCrashing(SessionLogger.class)) {
            return 0;
        }
        int i10 = 0;
        while (true) {
            try {
                long[] jArr = INACTIVE_SECONDS_QUANTA;
                if (i10 >= jArr.length || jArr[i10] >= j10) {
                    break;
                }
                i10++;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, SessionLogger.class);
                return 0;
            }
        }
        return i10;
    }

    public static final void logActivateApp(String str, SourceApplicationInfo sourceApplicationInfo, String str2, Context context) {
        String string;
        if (CrashShieldHandler.isObjectCrashing(SessionLogger.class)) {
            return;
        }
        try {
            m.e(str, "activityName");
            m.e(context, "context");
            String str3 = "Unclassified";
            if (sourceApplicationInfo != null && (string = sourceApplicationInfo.toString()) != null) {
                str3 = string;
            }
            Bundle bundle = new Bundle();
            bundle.putString(AppEventsConstants.EVENT_PARAM_SOURCE_APPLICATION, str3);
            bundle.putString(AppEventsConstants.EVENT_PARAM_PACKAGE_FP, INSTANCE.computePackageChecksum(context));
            CertificateUtil certificateUtil = CertificateUtil.INSTANCE;
            bundle.putString(AppEventsConstants.EVENT_PARAM_APP_CERT_HASH, CertificateUtil.getCertificateHash(context));
            InternalAppEventsLogger.Companion companion = InternalAppEventsLogger.Companion;
            InternalAppEventsLogger internalAppEventsLoggerCreateInstance = companion.createInstance(str, str2, null);
            internalAppEventsLoggerCreateInstance.logEvent(AppEventsConstants.EVENT_NAME_ACTIVATED_APP, bundle);
            if (companion.getFlushBehavior() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY) {
                internalAppEventsLoggerCreateInstance.flush();
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SessionLogger.class);
        }
    }

    private final void logClockSkewEvent() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Logger.Companion companion = Logger.Companion;
            LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
            String str = TAG;
            m.b(str);
            companion.log(loggingBehavior, str, "Clock skew detected");
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public static final void logDeactivateApp(String str, SessionInfo sessionInfo, String str2) {
        long jLongValue;
        String string;
        if (CrashShieldHandler.isObjectCrashing(SessionLogger.class)) {
            return;
        }
        try {
            m.e(str, "activityName");
            if (sessionInfo == null) {
                return;
            }
            Long diskRestoreTime = sessionInfo.getDiskRestoreTime();
            long jLongValue2 = 0;
            if (diskRestoreTime == null) {
                Long sessionLastEventTime = sessionInfo.getSessionLastEventTime();
                jLongValue = 0 - (sessionLastEventTime == null ? 0L : sessionLastEventTime.longValue());
            } else {
                jLongValue = diskRestoreTime.longValue();
            }
            if (jLongValue < 0) {
                INSTANCE.logClockSkewEvent();
                jLongValue = 0;
            }
            long sessionLength = sessionInfo.getSessionLength();
            if (sessionLength < 0) {
                INSTANCE.logClockSkewEvent();
                sessionLength = 0;
            }
            Bundle bundle = new Bundle();
            bundle.putInt(AppEventsConstants.EVENT_NAME_SESSION_INTERRUPTIONS, sessionInfo.getInterruptionCount());
            b0 b0Var = b0.f35528a;
            String str3 = String.format(Locale.ROOT, "session_quanta_%d", Arrays.copyOf(new Object[]{Integer.valueOf(getQuantaIndex(jLongValue))}, 1));
            m.d(str3, "java.lang.String.format(locale, format, *args)");
            bundle.putString(AppEventsConstants.EVENT_NAME_TIME_BETWEEN_SESSIONS, str3);
            SourceApplicationInfo sourceApplicationInfo = sessionInfo.getSourceApplicationInfo();
            String str4 = "Unclassified";
            if (sourceApplicationInfo != null && (string = sourceApplicationInfo.toString()) != null) {
                str4 = string;
            }
            bundle.putString(AppEventsConstants.EVENT_PARAM_SOURCE_APPLICATION, str4);
            Long sessionLastEventTime2 = sessionInfo.getSessionLastEventTime();
            if (sessionLastEventTime2 != null) {
                jLongValue2 = sessionLastEventTime2.longValue();
            }
            bundle.putLong(Constants.LOG_TIME_APP_EVENT_KEY, jLongValue2 / ((long) 1000));
            InternalAppEventsLogger internalAppEventsLoggerCreateInstance = InternalAppEventsLogger.Companion.createInstance(str, str2, null);
            double d10 = sessionLength;
            double d11 = 1000L;
            Double.isNaN(d10);
            Double.isNaN(d11);
            internalAppEventsLoggerCreateInstance.logEvent(AppEventsConstants.EVENT_NAME_DEACTIVATED_APP, d10 / d11, bundle);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SessionLogger.class);
        }
    }
}
