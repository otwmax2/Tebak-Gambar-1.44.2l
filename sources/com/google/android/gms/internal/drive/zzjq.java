package com.google.android.gms.internal.drive;

/* JADX INFO: loaded from: classes2.dex */
final class zzjq extends zzjo {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f22093d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f22094e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f22095f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f22096g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f22097h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f22098i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f22099j;

    private zzjq(byte[] bArr, int i10, int i11, boolean z10) {
        super();
        this.f22099j = Integer.MAX_VALUE;
        this.f22093d = bArr;
        this.f22095f = i11 + i10;
        this.f22097h = i10;
        this.f22098i = i10;
        this.f22094e = z10;
    }

    @Override // com.google.android.gms.internal.drive.zzjo
    public final int b() {
        return this.f22097h - this.f22098i;
    }

    @Override // com.google.android.gms.internal.drive.zzjo
    public final int c(int i10) throws zzkq {
        if (i10 < 0) {
            throw zzkq.b();
        }
        int iB = i10 + b();
        int i11 = this.f22099j;
        if (iB > i11) {
            throw zzkq.a();
        }
        this.f22099j = iB;
        int i12 = this.f22095f + this.f22096g;
        this.f22095f = i12;
        int i13 = i12 - this.f22098i;
        if (i13 > iB) {
            int i14 = i13 - iB;
            this.f22096g = i14;
            this.f22095f = i12 - i14;
        } else {
            this.f22096g = 0;
        }
        return i11;
    }
}
