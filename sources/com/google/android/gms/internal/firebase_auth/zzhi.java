package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzhi extends zzhh {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f22659d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f22660e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f22661f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f22662g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f22663h;

    private final void d() {
        int i10 = this.f22659d + this.f22660e;
        this.f22659d = i10;
        int i11 = this.f22662g + i10;
        int i12 = this.f22663h;
        if (i11 <= i12) {
            this.f22660e = 0;
            return;
        }
        int i13 = i11 - i12;
        this.f22660e = i13;
        this.f22659d = i10 - i13;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzhh
    public final int b(int i10) throws zzin {
        if (i10 < 0) {
            throw zzin.b();
        }
        int i11 = i10 + this.f22662g + this.f22661f;
        int i12 = this.f22663h;
        if (i11 > i12) {
            throw zzin.a();
        }
        this.f22663h = i11;
        d();
        return i12;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzhh
    public final int c() {
        return this.f22662g + this.f22661f;
    }
}
