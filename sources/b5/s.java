package b5;

import android.os.SystemClock;
import com.google.auto.value.AutoValue;

/* JADX INFO: compiled from: StartupTime.java */
/* JADX INFO: loaded from: classes2.dex */
@AutoValue
public abstract class s {
    public static s a(long j10, long j11, long j12) {
        return new a(j10, j11, j12);
    }

    public static s e() {
        return a(System.currentTimeMillis(), SystemClock.elapsedRealtime(), SystemClock.uptimeMillis());
    }

    public abstract long b();

    public abstract long c();

    public abstract long d();
}
