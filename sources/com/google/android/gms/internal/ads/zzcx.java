package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcx {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f14141e = zzew.p(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f14142f = zzew.p(1);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f14143g = zzew.p(3);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f14144h = zzew.p(4);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final zzn f14145i = new zzn() { // from class: com.google.android.gms.internal.ads.zzcw
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f14146a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcp f14147b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int[] f14148c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean[] f14149d;

    public zzcx(zzcp zzcpVar, boolean z10, int[] iArr, boolean[] zArr) {
        int i10 = zzcpVar.f13690a;
        this.f14146a = 1;
        this.f14147b = zzcpVar;
        this.f14148c = (int[]) iArr.clone();
        this.f14149d = (boolean[]) zArr.clone();
    }

    public final int a() {
        return this.f14147b.f13692c;
    }

    public final zzaf b(int i10) {
        return this.f14147b.b(i10);
    }

    public final boolean c() {
        for (boolean z10 : this.f14149d) {
            if (z10) {
                return true;
            }
        }
        return false;
    }

    public final boolean d(int i10) {
        return this.f14149d[i10];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzcx.class == obj.getClass()) {
            zzcx zzcxVar = (zzcx) obj;
            if (this.f14147b.equals(zzcxVar.f14147b) && Arrays.equals(this.f14148c, zzcxVar.f14148c) && Arrays.equals(this.f14149d, zzcxVar.f14149d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((this.f14147b.hashCode() * 961) + Arrays.hashCode(this.f14148c)) * 31) + Arrays.hashCode(this.f14149d);
    }
}
