package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfwz implements Comparable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final byte[] f18809o;

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzfwz zzfwzVar = (zzfwz) obj;
        int length = this.f18809o.length;
        int length2 = zzfwzVar.f18809o.length;
        if (length != length2) {
            return length - length2;
        }
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f18809o;
            if (i10 >= bArr.length) {
                return 0;
            }
            byte b10 = bArr[i10];
            byte b11 = zzfwzVar.f18809o[i10];
            if (b10 != b11) {
                return b10 - b11;
            }
            i10++;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzfwz) {
            return Arrays.equals(this.f18809o, ((zzfwz) obj).f18809o);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f18809o);
    }

    public final String toString() {
        return zzgnx.a(this.f18809o);
    }
}
