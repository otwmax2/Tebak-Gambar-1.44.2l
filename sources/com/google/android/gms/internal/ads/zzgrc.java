package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzgrc {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzgpy f19524c = zzgpy.f19437c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected volatile zzgrw f19525a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile zzgpe f19526b;

    public final int a() {
        if (this.f19526b != null) {
            return ((zzgpa) this.f19526b).f19372s.length;
        }
        if (this.f19525a != null) {
            return this.f19525a.U();
        }
        return 0;
    }

    public final zzgpe b() {
        if (this.f19526b != null) {
            return this.f19526b;
        }
        synchronized (this) {
            if (this.f19526b != null) {
                return this.f19526b;
            }
            if (this.f19525a == null) {
                this.f19526b = zzgpe.f19379p;
            } else {
                this.f19526b = this.f19525a.d();
            }
            return this.f19526b;
        }
    }

    protected final void c(zzgrw zzgrwVar) {
        if (this.f19525a != null) {
            return;
        }
        synchronized (this) {
            if (this.f19525a == null) {
                try {
                    this.f19525a = zzgrwVar;
                    this.f19526b = zzgpe.f19379p;
                } catch (zzgqy unused) {
                    this.f19525a = zzgrwVar;
                    this.f19526b = zzgpe.f19379p;
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzgrc)) {
            return false;
        }
        zzgrc zzgrcVar = (zzgrc) obj;
        zzgrw zzgrwVar = this.f19525a;
        zzgrw zzgrwVar2 = zzgrcVar.f19525a;
        if (zzgrwVar == null && zzgrwVar2 == null) {
            return b().equals(zzgrcVar.b());
        }
        if (zzgrwVar != null && zzgrwVar2 != null) {
            return zzgrwVar.equals(zzgrwVar2);
        }
        if (zzgrwVar != null) {
            zzgrcVar.c(zzgrwVar.d1());
            return zzgrwVar.equals(zzgrcVar.f19525a);
        }
        c(zzgrwVar2.d1());
        return this.f19525a.equals(zzgrwVar2);
    }

    public int hashCode() {
        return 1;
    }
}
