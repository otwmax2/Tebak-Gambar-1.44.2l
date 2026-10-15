package g1;

import android.os.IBinder;

/* JADX INFO: compiled from: WindowIdApi14.java */
/* JADX INFO: loaded from: classes.dex */
class k0 implements m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IBinder f29734a;

    k0(IBinder iBinder) {
        this.f29734a = iBinder;
    }

    public boolean equals(Object obj) {
        return (obj instanceof k0) && ((k0) obj).f29734a.equals(this.f29734a);
    }

    public int hashCode() {
        return this.f29734a.hashCode();
    }
}
