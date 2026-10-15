package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcp {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f13687f = zzew.p(0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f13688g = zzew.p(1);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final zzn f13689h = new zzn() { // from class: com.google.android.gms.internal.ads.zzco
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f13690a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f13691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f13692c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzaf[] f13693d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f13694e;

    public zzcp(String str, zzaf... zzafVarArr) {
        this.f13691b = str;
        this.f13693d = zzafVarArr;
        int iB = zzbt.b(zzafVarArr[0].f8731l);
        this.f13692c = iB == -1 ? zzbt.b(zzafVarArr[0].f8730k) : iB;
        d(zzafVarArr[0].f8722c);
        int i10 = zzafVarArr[0].f8724e;
    }

    private static String d(String str) {
        return (str == null || str.equals("und")) ? BuildConfig.FLAVOR : str;
    }

    public final int a(zzaf zzafVar) {
        for (int i10 = 0; i10 <= 0; i10++) {
            if (zzafVar == this.f13693d[i10]) {
                return i10;
            }
        }
        return -1;
    }

    public final zzaf b(int i10) {
        return this.f13693d[i10];
    }

    public final zzcp c(String str) {
        return new zzcp(str, this.f13693d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzcp.class == obj.getClass()) {
            zzcp zzcpVar = (zzcp) obj;
            if (this.f13691b.equals(zzcpVar.f13691b) && Arrays.equals(this.f13693d, zzcpVar.f13693d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.f13694e;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((this.f13691b.hashCode() + 527) * 31) + Arrays.hashCode(this.f13693d);
        this.f13694e = iHashCode;
        return iHashCode;
    }
}
