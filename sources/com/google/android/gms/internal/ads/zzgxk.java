package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgxk implements zzgxl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f19738c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile zzgxl f19739a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Object f19740b = f19738c;

    private zzgxk(zzgxl zzgxlVar) {
        this.f19739a = zzgxlVar;
    }

    public static zzgxl a(zzgxl zzgxlVar) {
        if ((zzgxlVar instanceof zzgxk) || (zzgxlVar instanceof zzgwx)) {
            return zzgxlVar;
        }
        Objects.requireNonNull(zzgxlVar);
        return new zzgxk(zzgxlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final Object zzb() {
        Object obj = this.f19740b;
        if (obj != f19738c) {
            return obj;
        }
        zzgxl zzgxlVar = this.f19739a;
        if (zzgxlVar == null) {
            return this.f19740b;
        }
        Object objZzb = zzgxlVar.zzb();
        this.f19740b = objZzb;
        this.f19739a = null;
        return objZzb;
    }
}
