package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjd extends zzjf {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f23593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f23594c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f23595d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f23596e;

    /* synthetic */ zzjd(byte[] bArr, int i10, int i11, boolean z10, zzjc zzjcVar) {
        super(null);
        this.f23596e = Integer.MAX_VALUE;
        this.f23593b = bArr;
        this.f23594c = 0;
    }

    public final int c(int i10) throws zzkm {
        int i11 = this.f23596e;
        this.f23596e = 0;
        int i12 = this.f23594c + this.f23595d;
        this.f23594c = i12;
        if (i12 > 0) {
            this.f23595d = i12;
            this.f23594c = 0;
        } else {
            this.f23595d = 0;
        }
        return i11;
    }
}
