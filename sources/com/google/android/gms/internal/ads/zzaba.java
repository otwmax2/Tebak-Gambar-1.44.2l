package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaba {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8357a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f8358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f8359c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f8360d;

    public zzaba(int i10, byte[] bArr, int i11, int i12) {
        this.f8357a = i10;
        this.f8358b = bArr;
        this.f8359c = i11;
        this.f8360d = i12;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaba.class == obj.getClass()) {
            zzaba zzabaVar = (zzaba) obj;
            if (this.f8357a == zzabaVar.f8357a && this.f8359c == zzabaVar.f8359c && this.f8360d == zzabaVar.f8360d && Arrays.equals(this.f8358b, zzabaVar.f8358b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((((this.f8357a * 31) + Arrays.hashCode(this.f8358b)) * 31) + this.f8359c) * 31) + this.f8360d;
    }
}
