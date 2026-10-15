package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzahq {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final byte[] f9110f = {0, 0, 1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f9111a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f9112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9113c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9114d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f9115e = new byte[128];

    public zzahq(int i10) {
    }

    public final void a(byte[] bArr, int i10, int i11) {
        if (this.f9111a) {
            int i12 = i11 - i10;
            byte[] bArr2 = this.f9115e;
            int length = bArr2.length;
            int i13 = this.f9113c + i12;
            if (length < i13) {
                this.f9115e = Arrays.copyOf(bArr2, i13 + i13);
            }
            System.arraycopy(bArr, i10, this.f9115e, this.f9113c, i12);
            this.f9113c += i12;
        }
    }

    public final void b() {
        this.f9111a = false;
        this.f9113c = 0;
        this.f9112b = 0;
    }

    public final boolean c(int i10, int i11) {
        int i12 = this.f9112b;
        if (i12 != 0) {
            if (i12 != 1) {
                if (i12 != 2) {
                    if (i12 != 3) {
                        if (i10 == 179 || i10 == 181) {
                            this.f9113c -= i11;
                            this.f9111a = false;
                            return true;
                        }
                    } else if ((i10 & 240) != 32) {
                        zzee.e("H263Reader", "Unexpected start code value");
                        b();
                    } else {
                        this.f9114d = this.f9113c;
                        this.f9112b = 4;
                    }
                } else if (i10 > 31) {
                    zzee.e("H263Reader", "Unexpected start code value");
                    b();
                } else {
                    this.f9112b = 3;
                }
            } else if (i10 != 181) {
                zzee.e("H263Reader", "Unexpected start code value");
                b();
            } else {
                this.f9112b = 2;
            }
        } else if (i10 == 176) {
            this.f9112b = 1;
            this.f9111a = true;
        }
        a(f9110f, 0, 3);
        return false;
    }
}
