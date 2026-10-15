package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzhc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f19772a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzaf f19773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzaf f19774c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f19775d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f19776e;

    public zzhc(String str, zzaf zzafVar, zzaf zzafVar2, int i10, int i11) {
        boolean z10 = false;
        if (i10 == 0) {
            z10 = true;
        } else if (i11 == 0) {
            i11 = 0;
            z10 = true;
        }
        zzdl.d(z10);
        zzdl.c(str);
        this.f19772a = str;
        Objects.requireNonNull(zzafVar);
        this.f19773b = zzafVar;
        Objects.requireNonNull(zzafVar2);
        this.f19774c = zzafVar2;
        this.f19775d = i10;
        this.f19776e = i11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzhc.class == obj.getClass()) {
            zzhc zzhcVar = (zzhc) obj;
            if (this.f19775d == zzhcVar.f19775d && this.f19776e == zzhcVar.f19776e && this.f19772a.equals(zzhcVar.f19772a) && this.f19773b.equals(zzhcVar.f19773b) && this.f19774c.equals(zzhcVar.f19774c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((this.f19775d + 527) * 31) + this.f19776e) * 31) + this.f19772a.hashCode()) * 31) + this.f19773b.hashCode()) * 31) + this.f19774c.hashCode();
    }
}
