package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaho {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final byte[] f9088e = {0, 0, 1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f9089a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9091c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f9092d = new byte[128];

    public zzaho(int i10) {
    }

    public final void a(byte[] bArr, int i10, int i11) {
        if (this.f9089a) {
            int i12 = i11 - i10;
            byte[] bArr2 = this.f9092d;
            int length = bArr2.length;
            int i13 = this.f9090b + i12;
            if (length < i13) {
                this.f9092d = Arrays.copyOf(bArr2, i13 + i13);
            }
            System.arraycopy(bArr, i10, this.f9092d, this.f9090b, i12);
            this.f9090b += i12;
        }
    }

    public final void b() {
        this.f9089a = false;
        this.f9090b = 0;
        this.f9091c = 0;
    }

    public final boolean c(int i10, int i11) {
        if (this.f9089a) {
            int i12 = this.f9090b - i11;
            this.f9090b = i12;
            if (this.f9091c != 0 || i10 != 181) {
                this.f9089a = false;
                return true;
            }
            this.f9091c = i12;
        } else if (i10 == 179) {
            this.f9089a = true;
        }
        a(f9088e, 0, 3);
        return false;
    }
}
