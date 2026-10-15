package i1;

import android.app.Notification;

/* JADX INFO: compiled from: ForegroundInfo.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f30348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f30349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Notification f30350c;

    public e(int i10, Notification notification, int i11) {
        this.f30348a = i10;
        this.f30350c = notification;
        this.f30349b = i11;
    }

    public int a() {
        return this.f30349b;
    }

    public Notification b() {
        return this.f30350c;
    }

    public int c() {
        return this.f30348a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f30348a == eVar.f30348a && this.f30349b == eVar.f30349b) {
            return this.f30350c.equals(eVar.f30350c);
        }
        return false;
    }

    public int hashCode() {
        return (((this.f30348a * 31) + this.f30349b) * 31) + this.f30350c.hashCode();
    }

    public String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f30348a + ", mForegroundServiceType=" + this.f30349b + ", mNotification=" + this.f30350c + '}';
    }
}
