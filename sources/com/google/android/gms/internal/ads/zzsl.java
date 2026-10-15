package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzsl extends zzsg {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f20625i = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Object f20626g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Object f20627h;

    private zzsl(zzcn zzcnVar, Object obj, Object obj2) {
        super(zzcnVar);
        this.f20626g = obj;
        this.f20627h = obj2;
    }

    public static zzsl q(zzbg zzbgVar) {
        return new zzsl(new zzsm(zzbgVar), zzcm.f13450o, f20625i);
    }

    public static zzsl r(zzcn zzcnVar, Object obj, Object obj2) {
        return new zzsl(zzcnVar, obj, obj2);
    }

    @Override // com.google.android.gms.internal.ads.zzsg, com.google.android.gms.internal.ads.zzcn
    public final int a(Object obj) {
        Object obj2;
        zzcn zzcnVar = this.f20608f;
        if (f20625i.equals(obj) && (obj2 = this.f20627h) != null) {
            obj = obj2;
        }
        return zzcnVar.a(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzsg, com.google.android.gms.internal.ads.zzcn
    public final zzck d(int i10, zzck zzckVar, boolean z10) {
        this.f20608f.d(i10, zzckVar, z10);
        if (zzew.u(zzckVar.f13165b, this.f20627h) && z10) {
            zzckVar.f13165b = f20625i;
        }
        return zzckVar;
    }

    @Override // com.google.android.gms.internal.ads.zzsg, com.google.android.gms.internal.ads.zzcn
    public final zzcm e(int i10, zzcm zzcmVar, long j10) {
        this.f20608f.e(i10, zzcmVar, j10);
        if (zzew.u(zzcmVar.f13462a, this.f20626g)) {
            zzcmVar.f13462a = zzcm.f13450o;
        }
        return zzcmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzsg, com.google.android.gms.internal.ads.zzcn
    public final Object f(int i10) {
        Object objF = this.f20608f.f(i10);
        return zzew.u(objF, this.f20627h) ? f20625i : objF;
    }

    public final zzsl p(zzcn zzcnVar) {
        return new zzsl(zzcnVar, this.f20626g, this.f20627h);
    }
}
