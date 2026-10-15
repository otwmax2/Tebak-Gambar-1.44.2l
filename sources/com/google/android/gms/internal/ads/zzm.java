package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzm implements zzcg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final zzcm f20159a = new zzcm();

    protected zzm() {
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final boolean a() {
        zzcn zzcnVarR = r();
        return !zzcnVarR.o() && zzcnVarR.e(e(), this.f20159a, 0L).b();
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final boolean d() {
        zzcn zzcnVarR = r();
        return !zzcnVarR.o() && zzcnVarR.e(e(), this.f20159a, 0L).f13467f;
    }

    public abstract void z(int i10, long j10, int i11, boolean z10);

    @Override // com.google.android.gms.internal.ads.zzcg
    public final boolean zzb() {
        zzcn zzcnVarR = r();
        return !zzcnVarR.o() && zzcnVarR.e(e(), this.f20159a, 0L).f13468g;
    }
}
