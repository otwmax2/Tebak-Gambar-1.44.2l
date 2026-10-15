package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public class zzkp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzjo f23681c = zzjo.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected volatile zzlj f23682a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile zzjb f23683b;

    public final int a() {
        if (this.f23683b != null) {
            return ((zziy) this.f23683b).f23587s.length;
        }
        if (this.f23682a != null) {
            return this.f23682a.M();
        }
        return 0;
    }

    public final zzjb b() {
        if (this.f23683b != null) {
            return this.f23683b;
        }
        synchronized (this) {
            if (this.f23683b != null) {
                return this.f23683b;
            }
            if (this.f23682a == null) {
                this.f23683b = zzjb.f23589p;
            } else {
                this.f23683b = this.f23682a.T();
            }
            return this.f23683b;
        }
    }

    protected final void c(zzlj zzljVar) {
        if (this.f23682a != null) {
            return;
        }
        synchronized (this) {
            if (this.f23682a == null) {
                try {
                    this.f23682a = zzljVar;
                    this.f23683b = zzjb.f23589p;
                } catch (zzkm unused) {
                    this.f23682a = zzljVar;
                    this.f23683b = zzjb.f23589p;
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzkp)) {
            return false;
        }
        zzkp zzkpVar = (zzkp) obj;
        zzlj zzljVar = this.f23682a;
        zzlj zzljVar2 = zzkpVar.f23682a;
        if (zzljVar == null && zzljVar2 == null) {
            return b().equals(zzkpVar.b());
        }
        if (zzljVar != null && zzljVar2 != null) {
            return zzljVar.equals(zzljVar2);
        }
        if (zzljVar != null) {
            zzkpVar.c(zzljVar.a());
            return zzljVar.equals(zzkpVar.f23682a);
        }
        c(zzljVar2.a());
        return this.f23682a.equals(zzljVar2);
    }

    public int hashCode() {
        return 1;
    }
}
