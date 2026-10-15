package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgoj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f19353a;

    private zzgoj(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = new byte[i11];
        this.f19353a = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i11);
    }

    public static zzgoj b(byte[] bArr) {
        Objects.requireNonNull(bArr, "data must be non-null");
        return new zzgoj(bArr, 0, bArr.length);
    }

    public final int a() {
        return this.f19353a.length;
    }

    public final byte[] c() {
        byte[] bArr = this.f19353a;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzgoj) {
            return Arrays.equals(((zzgoj) obj).f19353a, this.f19353a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f19353a);
    }

    public final String toString() {
        return "Bytes(" + zzgnx.a(this.f19353a) + ")";
    }
}
