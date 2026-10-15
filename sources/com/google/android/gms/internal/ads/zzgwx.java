package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgwx implements zzgxl, zzgws {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f19725c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile zzgxl f19726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Object f19727b = f19725c;

    private zzgwx(zzgxl zzgxlVar) {
        this.f19726a = zzgxlVar;
    }

    public static zzgws a(zzgxl zzgxlVar) {
        if (zzgxlVar instanceof zzgws) {
            return (zzgws) zzgxlVar;
        }
        Objects.requireNonNull(zzgxlVar);
        return new zzgwx(zzgxlVar);
    }

    public static zzgxl b(zzgxl zzgxlVar) {
        Objects.requireNonNull(zzgxlVar);
        return zzgxlVar instanceof zzgwx ? zzgxlVar : new zzgwx(zzgxlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final Object zzb() {
        Object objZzb = this.f19727b;
        Object obj = f19725c;
        if (objZzb == obj) {
            synchronized (this) {
                objZzb = this.f19727b;
                if (objZzb == obj) {
                    objZzb = this.f19726a.zzb();
                    Object obj2 = this.f19727b;
                    if (obj2 != obj && obj2 != objZzb) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj2 + " & " + objZzb + ". This is likely due to a circular dependency.");
                    }
                    this.f19727b = objZzb;
                    this.f19726a = null;
                }
            }
        }
        return objZzb;
    }
}
