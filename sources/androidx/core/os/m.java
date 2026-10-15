package androidx.core.os;

import android.os.Build;
import android.os.Trace;
import android.util.Log;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: TraceCompat.java */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static long f2283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Method f2284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Method f2285c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Method f2286d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Method f2287e;

    /* JADX INFO: compiled from: TraceCompat.java */
    static class a {
        static void a(String str) {
            Trace.beginSection(str);
        }

        static void b() {
            Trace.endSection();
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 18 || i10 >= 29) {
            return;
        }
        try {
            f2283a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
            Class cls = Long.TYPE;
            f2284b = Trace.class.getMethod("isTagEnabled", cls);
            Class cls2 = Integer.TYPE;
            f2285c = Trace.class.getMethod("asyncTraceBegin", cls, String.class, cls2);
            f2286d = Trace.class.getMethod("asyncTraceEnd", cls, String.class, cls2);
            f2287e = Trace.class.getMethod("traceCounter", cls, String.class, cls2);
        } catch (Exception e10) {
            Log.i("TraceCompat", "Unable to initialize via reflection.", e10);
        }
    }

    public static void a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            a.a(str);
        }
    }

    public static void b() {
        if (Build.VERSION.SDK_INT >= 18) {
            a.b();
        }
    }
}
