package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzhj extends zzhh {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f22664d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f22665e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f22666f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f22667g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f22668h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f22669i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f22670j;

    private zzhj(byte[] bArr, int i10, int i11, boolean z10) {
        super();
        this.f22670j = Integer.MAX_VALUE;
        this.f22664d = bArr;
        this.f22666f = i11 + i10;
        this.f22668h = i10;
        this.f22669i = i10;
        this.f22665e = z10;
    }

    private final void d() {
        int i10 = this.f22666f + this.f22667g;
        this.f22666f = i10;
        int i11 = i10 - this.f22669i;
        int i12 = this.f22670j;
        if (i11 <= i12) {
            this.f22667g = 0;
            return;
        }
        int i13 = i11 - i12;
        this.f22667g = i13;
        this.f22666f = i10 - i13;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzhh
    public final int b(int i10) throws zzin {
        if (i10 < 0) {
            throw zzin.b();
        }
        int iC = i10 + c();
        int i11 = this.f22670j;
        if (iC > i11) {
            throw zzin.a();
        }
        this.f22670j = iC;
        d();
        return i11;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzhh
    public final int c() {
        return this.f22668h - this.f22669i;
    }
}
