package com.facebook.internal;

import android.util.Log;
import com.facebook.FacebookSdk;
import com.facebook.LoggingBehavior;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import t9.b0;

/* JADX INFO: compiled from: Logger.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Logger {
    public static final String LOG_TAG_BASE = "FacebookSDK.";
    private final LoggingBehavior behavior;
    private StringBuilder contents;
    private int priority;
    private final String tag;
    public static final Companion Companion = new Companion(null);
    private static final HashMap<String, String> stringsToReplace = new HashMap<>();

    /* JADX INFO: compiled from: Logger.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final synchronized String replaceStrings(String str) {
            String strS;
            strS = str;
            for (Map.Entry entry : Logger.stringsToReplace.entrySet()) {
                strS = ba.p.s(strS, (String) entry.getKey(), (String) entry.getValue(), false, 4, null);
            }
            return strS;
        }

        public final void log(LoggingBehavior loggingBehavior, String str, String str2) {
            t9.m.e(loggingBehavior, "behavior");
            t9.m.e(str, "tag");
            t9.m.e(str2, "string");
            log(loggingBehavior, 3, str, str2);
        }

        public final synchronized void registerAccessToken(String str) {
            t9.m.e(str, SDKConstants.PARAM_ACCESS_TOKEN);
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            if (!FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.INCLUDE_ACCESS_TOKENS)) {
                registerStringToReplace(str, "ACCESS_TOKEN_REMOVED");
            }
        }

        public final synchronized void registerStringToReplace(String str, String str2) {
            t9.m.e(str, "original");
            t9.m.e(str2, "replace");
            Logger.stringsToReplace.put(str, str2);
        }

        public final void log(LoggingBehavior loggingBehavior, String str, String str2, Object... objArr) {
            t9.m.e(loggingBehavior, "behavior");
            t9.m.e(str, "tag");
            t9.m.e(str2, "format");
            t9.m.e(objArr, "args");
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            if (FacebookSdk.isLoggingBehaviorEnabled(loggingBehavior)) {
                b0 b0Var = b0.f35528a;
                Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
                String str3 = String.format(str2, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
                t9.m.d(str3, "java.lang.String.format(format, *args)");
                log(loggingBehavior, 3, str, str3);
            }
        }

        public final void log(LoggingBehavior loggingBehavior, int i10, String str, String str2, Object... objArr) {
            t9.m.e(loggingBehavior, "behavior");
            t9.m.e(str, "tag");
            t9.m.e(str2, "format");
            t9.m.e(objArr, "args");
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            if (FacebookSdk.isLoggingBehaviorEnabled(loggingBehavior)) {
                b0 b0Var = b0.f35528a;
                Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
                String str3 = String.format(str2, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
                t9.m.d(str3, "java.lang.String.format(format, *args)");
                log(loggingBehavior, i10, str, str3);
            }
        }

        public final void log(LoggingBehavior loggingBehavior, int i10, String str, String str2) {
            t9.m.e(loggingBehavior, "behavior");
            t9.m.e(str, "tag");
            t9.m.e(str2, "string");
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            if (FacebookSdk.isLoggingBehaviorEnabled(loggingBehavior)) {
                String strReplaceStrings = replaceStrings(str2);
                if (!ba.p.u(str, Logger.LOG_TAG_BASE, false, 2, null)) {
                    str = t9.m.k(Logger.LOG_TAG_BASE, str);
                }
                Log.println(i10, str, strReplaceStrings);
                if (loggingBehavior == LoggingBehavior.DEVELOPER_ERRORS) {
                    new Exception().printStackTrace();
                }
            }
        }
    }

    public Logger(LoggingBehavior loggingBehavior, String str) {
        t9.m.e(loggingBehavior, "behavior");
        t9.m.e(str, "tag");
        this.priority = 3;
        this.behavior = loggingBehavior;
        Validate validate = Validate.INSTANCE;
        this.tag = t9.m.k(LOG_TAG_BASE, Validate.notNullOrEmpty(str, "tag"));
        this.contents = new StringBuilder();
    }

    public static final void log(LoggingBehavior loggingBehavior, int i10, String str, String str2) {
        Companion.log(loggingBehavior, i10, str, str2);
    }

    public static final void log(LoggingBehavior loggingBehavior, int i10, String str, String str2, Object... objArr) {
        Companion.log(loggingBehavior, i10, str, str2, objArr);
    }

    public static final void log(LoggingBehavior loggingBehavior, String str, String str2) {
        Companion.log(loggingBehavior, str, str2);
    }

    public static final void log(LoggingBehavior loggingBehavior, String str, String str2, Object... objArr) {
        Companion.log(loggingBehavior, str, str2, objArr);
    }

    public static final synchronized void registerAccessToken(String str) {
        Companion.registerAccessToken(str);
    }

    public static final synchronized void registerStringToReplace(String str, String str2) {
        Companion.registerStringToReplace(str, str2);
    }

    private final boolean shouldLog() {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        return FacebookSdk.isLoggingBehaviorEnabled(this.behavior);
    }

    public final void append(StringBuilder sb) {
        t9.m.e(sb, "stringBuilder");
        if (shouldLog()) {
            this.contents.append((CharSequence) sb);
        }
    }

    public final void appendKeyValue(String str, Object obj) {
        t9.m.e(str, SDKConstants.PARAM_KEY);
        t9.m.e(obj, SDKConstants.PARAM_VALUE);
        append("  %s:\t%s\n", str, obj);
    }

    public final String getContents() {
        Companion companion = Companion;
        String string = this.contents.toString();
        t9.m.d(string, "contents.toString()");
        return companion.replaceStrings(string);
    }

    public final int getPriority() {
        return this.priority;
    }

    public final void log() {
        String string = this.contents.toString();
        t9.m.d(string, "contents.toString()");
        logString(string);
        this.contents = new StringBuilder();
    }

    public final void logString(String str) {
        t9.m.e(str, "string");
        Companion.log(this.behavior, this.priority, this.tag, str);
    }

    public final void setPriority(int i10) {
        Validate validate = Validate.INSTANCE;
        Validate.oneOf(Integer.valueOf(i10), SDKConstants.PARAM_VALUE, 7, 3, 6, 4, 2, 5);
        setPriority(i10);
    }

    public final void append(String str) {
        t9.m.e(str, "string");
        if (shouldLog()) {
            this.contents.append(str);
        }
    }

    public final void append(String str, Object... objArr) {
        t9.m.e(str, "format");
        t9.m.e(objArr, "args");
        if (shouldLog()) {
            StringBuilder sb = this.contents;
            b0 b0Var = b0.f35528a;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            String str2 = String.format(str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
            t9.m.d(str2, "java.lang.String.format(format, *args)");
            sb.append(str2);
        }
    }
}
