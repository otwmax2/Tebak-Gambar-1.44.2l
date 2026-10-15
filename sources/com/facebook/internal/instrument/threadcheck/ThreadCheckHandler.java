package com.facebook.internal.instrument.threadcheck;

import android.os.Looper;
import android.util.Log;
import com.facebook.internal.instrument.InstrumentData;
import java.util.Arrays;
import java.util.Locale;
import t9.b0;
import t9.m;

/* JADX INFO: compiled from: ThreadCheckHandler.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ThreadCheckHandler {
    public static final ThreadCheckHandler INSTANCE = new ThreadCheckHandler();
    private static final String TAG = ThreadCheckHandler.class.getCanonicalName();
    private static boolean enabled;

    private ThreadCheckHandler() {
    }

    public static final void enable() {
        enabled = true;
    }

    private final void log(String str, Class<?> cls, String str2, String str3) {
        if (enabled) {
            b0 b0Var = b0.f35528a;
            String str4 = String.format(Locale.US, "%s annotation violation detected in %s.%s%s. Current looper is %s and main looper is %s.", Arrays.copyOf(new Object[]{str, cls.getName(), str2, str3, Looper.myLooper(), Looper.getMainLooper()}, 6));
            m.d(str4, "java.lang.String.format(locale, format, *args)");
            Exception exc = new Exception();
            Log.e(TAG, str4, exc);
            InstrumentData.Builder builder = InstrumentData.Builder.INSTANCE;
            InstrumentData.Builder.build(exc, InstrumentData.Type.ThreadCheck).save();
        }
    }

    public static final void uiThreadViolationDetected(Class<?> cls, String str, String str2) {
        m.e(cls, "clazz");
        m.e(str, "methodName");
        m.e(str2, "methodDesc");
        INSTANCE.log("@UiThread", cls, str, str2);
    }

    public static final void workerThreadViolationDetected(Class<?> cls, String str, String str2) {
        m.e(cls, "clazz");
        m.e(str, "methodName");
        m.e(str2, "methodDesc");
        INSTANCE.log("@WorkerThread", cls, str, str2);
    }
}
