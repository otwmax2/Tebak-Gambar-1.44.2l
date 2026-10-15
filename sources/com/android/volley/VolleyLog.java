package com.android.volley;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class VolleyLog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f5135a = "Volley";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f5136b = Log.isLoggable("Volley", 2);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f5137c = VolleyLog.class.getName();

    static class MarkerLog {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final boolean f5138c = VolleyLog.f5136b;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<Marker> f5139a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f5140b = false;

        private static class Marker {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f5141a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final long f5142b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final long f5143c;

            public Marker(String str, long j10, long j11) {
                this.f5141a = str;
                this.f5142b = j10;
                this.f5143c = j11;
            }
        }

        MarkerLog() {
        }

        private long c() {
            if (this.f5139a.size() == 0) {
                return 0L;
            }
            return this.f5139a.get(r2.size() - 1).f5143c - this.f5139a.get(0).f5143c;
        }

        public synchronized void a(String str, long j10) {
            if (this.f5140b) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.f5139a.add(new Marker(str, j10, SystemClock.elapsedRealtime()));
        }

        public synchronized void b(String str) {
            this.f5140b = true;
            long jC = c();
            if (jC <= 0) {
                return;
            }
            long j10 = this.f5139a.get(0).f5143c;
            VolleyLog.b("(%-4d ms) %s", Long.valueOf(jC), str);
            for (Marker marker : this.f5139a) {
                long j11 = marker.f5143c;
                VolleyLog.b("(+%-4d) [%2d] %s", Long.valueOf(j11 - j10), Long.valueOf(marker.f5142b), marker.f5141a);
                j10 = j11;
            }
        }

        protected void finalize() throws Throwable {
            if (this.f5140b) {
                return;
            }
            b("Request on the loose");
            VolleyLog.c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }
    }

    private static String a(String str, Object... objArr) {
        String str2;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i10 = 2;
        while (true) {
            if (i10 >= stackTrace.length) {
                str2 = "<unknown>";
                break;
            }
            if (!stackTrace[i10].getClassName().equals(f5137c)) {
                String className = stackTrace[i10].getClassName();
                String strSubstring = className.substring(className.lastIndexOf(46) + 1);
                str2 = strSubstring.substring(strSubstring.lastIndexOf(36) + 1) + "." + stackTrace[i10].getMethodName();
                break;
            }
            i10++;
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }

    public static void b(String str, Object... objArr) {
        Log.d(f5135a, a(str, objArr));
    }

    public static void c(String str, Object... objArr) {
        Log.e(f5135a, a(str, objArr));
    }

    public static void d(Throwable th, String str, Object... objArr) {
        Log.e(f5135a, a(str, objArr), th);
    }

    public static void e(String str, Object... objArr) {
        if (f5136b) {
            Log.v(f5135a, a(str, objArr));
        }
    }

    public static void f(String str, Object... objArr) {
        Log.wtf(f5135a, a(str, objArr));
    }
}
