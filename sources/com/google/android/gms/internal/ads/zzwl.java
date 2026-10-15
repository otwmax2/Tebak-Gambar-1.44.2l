package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzwl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f20950a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzkp[] f20951b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzwe[] f20952c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final zzcy f20953d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f20954e;

    public zzwl(zzkp[] zzkpVarArr, zzwe[] zzweVarArr, zzcy zzcyVar, Object obj) {
        this.f20951b = zzkpVarArr;
        this.f20952c = (zzwe[]) zzweVarArr.clone();
        this.f20953d = zzcyVar;
        this.f20954e = obj;
        this.f20950a = zzkpVarArr.length;
    }

    public final boolean a(zzwl zzwlVar, int i10) {
        return zzwlVar != null && zzew.u(this.f20951b[i10], zzwlVar.f20951b[i10]) && zzew.u(this.f20952c[i10], zzwlVar.f20952c[i10]);
    }

    public final boolean b(int i10) {
        return this.f20951b[i10] != null;
    }
}
