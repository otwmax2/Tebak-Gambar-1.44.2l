package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzea {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f16057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzy f16058b = new zzy();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f16059c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f16060d;

    public zzea(Object obj) {
        this.f16057a = obj;
    }

    public final void a(int i10, zzdy zzdyVar) {
        if (this.f16060d) {
            return;
        }
        if (i10 != -1) {
            this.f16058b.a(i10);
        }
        this.f16059c = true;
        zzdyVar.a(this.f16057a);
    }

    public final void b(zzdz zzdzVar) {
        if (this.f16060d || !this.f16059c) {
            return;
        }
        zzaa zzaaVarB = this.f16058b.b();
        this.f16058b = new zzy();
        this.f16059c = false;
        zzdzVar.a(this.f16057a, zzaaVarB);
    }

    public final void c(zzdz zzdzVar) {
        this.f16060d = true;
        if (this.f16059c) {
            this.f16059c = false;
            zzdzVar.a(this.f16057a, this.f16058b.b());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzea.class != obj.getClass()) {
            return false;
        }
        return this.f16057a.equals(((zzea) obj).f16057a);
    }

    public final int hashCode() {
        return this.f16057a.hashCode();
    }
}
