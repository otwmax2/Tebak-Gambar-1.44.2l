package x2;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.SystemClock;

/* JADX INFO: compiled from: LogTime.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final double f36248a;

    static {
        f36248a = 17 <= Build.VERSION.SDK_INT ? 1.0d / Math.pow(10.0d, 6.0d) : 1.0d;
    }

    public static double a(long j10) {
        double dB = b() - j10;
        double d10 = f36248a;
        Double.isNaN(dB);
        return dB * d10;
    }

    @TargetApi(17)
    public static long b() {
        return 17 <= Build.VERSION.SDK_INT ? SystemClock.elapsedRealtimeNanos() : System.currentTimeMillis();
    }
}
