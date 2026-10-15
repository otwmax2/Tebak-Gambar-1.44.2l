package com.google.android.gms.internal.auth;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzed extends zzee {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f21466b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f21467c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f21468d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f21469e;

    /* synthetic */ zzed(byte[] bArr, int i10, int i11, boolean z10, zzec zzecVar) {
        super(null);
        this.f21469e = Integer.MAX_VALUE;
        this.f21466b = bArr;
        this.f21467c = 0;
    }

    public final int c(int i10) throws zzew {
        int i11 = this.f21469e;
        this.f21469e = 0;
        int i12 = this.f21467c + this.f21468d;
        this.f21467c = i12;
        if (i12 > 0) {
            this.f21468d = i12;
            this.f21467c = 0;
        } else {
            this.f21468d = 0;
        }
        return i11;
    }
}
