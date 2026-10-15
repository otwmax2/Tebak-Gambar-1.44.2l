package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzva implements zzwe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final zzcp f20831a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final int f20832b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final int[] f20833c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzaf[] f20834d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f20835e;

    public zzva(zzcp zzcpVar, int[] iArr, int i10) {
        int length = iArr.length;
        zzdl.f(length > 0);
        Objects.requireNonNull(zzcpVar);
        this.f20831a = zzcpVar;
        this.f20832b = length;
        this.f20834d = new zzaf[length];
        for (int i11 = 0; i11 < iArr.length; i11++) {
            this.f20834d[i11] = zzcpVar.b(iArr[i11]);
        }
        Arrays.sort(this.f20834d, new Comparator() { // from class: com.google.android.gms.internal.ads.zzuz
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((zzaf) obj2).f8727h - ((zzaf) obj).f8727h;
            }
        });
        this.f20833c = new int[this.f20832b];
        for (int i12 = 0; i12 < this.f20832b; i12++) {
            this.f20833c[i12] = zzcpVar.a(this.f20834d[i12]);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final zzaf K(int i10) {
        return this.f20834d[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final int a() {
        return this.f20833c.length;
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final zzcp b() {
        return this.f20831a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzva zzvaVar = (zzva) obj;
            if (this.f20831a == zzvaVar.f20831a && Arrays.equals(this.f20833c, zzvaVar.f20833c)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final int h(int i10) {
        return this.f20833c[0];
    }

    public final int hashCode() {
        int i10 = this.f20835e;
        if (i10 != 0) {
            return i10;
        }
        int iIdentityHashCode = (System.identityHashCode(this.f20831a) * 31) + Arrays.hashCode(this.f20833c);
        this.f20835e = iIdentityHashCode;
        return iIdentityHashCode;
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final int z(int i10) {
        for (int i11 = 0; i11 < this.f20832b; i11++) {
            if (this.f20833c[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }
}
