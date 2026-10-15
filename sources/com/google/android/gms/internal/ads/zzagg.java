package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzagg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f8898b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f8899c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f8900d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f8901e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzaf f8902f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f8903g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long[] f8904h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long[] f8905i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f8906j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzagh[] f8907k;

    public zzagg(int i10, int i11, long j10, long j11, long j12, zzaf zzafVar, int i12, zzagh[] zzaghVarArr, int i13, long[] jArr, long[] jArr2) {
        this.f8897a = i10;
        this.f8898b = i11;
        this.f8899c = j10;
        this.f8900d = j11;
        this.f8901e = j12;
        this.f8902f = zzafVar;
        this.f8903g = i12;
        this.f8907k = zzaghVarArr;
        this.f8906j = i13;
        this.f8904h = jArr;
        this.f8905i = jArr2;
    }

    public final zzagh a(int i10) {
        zzagh[] zzaghVarArr = this.f8907k;
        if (zzaghVarArr == null) {
            return null;
        }
        return zzaghVarArr[i10];
    }
}
