package com.google.android.play.core.assetpacks;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class m0 extends h3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f25989a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f25990b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f25991c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f25992d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f25993e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final byte[] f25994f;

    m0(String str, long j10, int i10, boolean z10, boolean z11, byte[] bArr) {
        this.f25989a = str;
        this.f25990b = j10;
        this.f25991c = i10;
        this.f25992d = z10;
        this.f25993e = z11;
        this.f25994f = bArr;
    }

    @Override // com.google.android.play.core.assetpacks.h3
    final int a() {
        return this.f25991c;
    }

    @Override // com.google.android.play.core.assetpacks.h3
    final long b() {
        return this.f25990b;
    }

    @Override // com.google.android.play.core.assetpacks.h3
    final String c() {
        return this.f25989a;
    }

    @Override // com.google.android.play.core.assetpacks.h3
    final boolean d() {
        return this.f25993e;
    }

    @Override // com.google.android.play.core.assetpacks.h3
    final boolean e() {
        return this.f25992d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof h3) {
            h3 h3Var = (h3) obj;
            String str = this.f25989a;
            if (str != null ? str.equals(h3Var.c()) : h3Var.c() == null) {
                if (this.f25990b == h3Var.b() && this.f25991c == h3Var.a() && this.f25992d == h3Var.e() && this.f25993e == h3Var.d()) {
                    if (Arrays.equals(this.f25994f, h3Var instanceof m0 ? ((m0) h3Var).f25994f : h3Var.f())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.android.play.core.assetpacks.h3
    final byte[] f() {
        return this.f25994f;
    }

    public final int hashCode() {
        String str = this.f25989a;
        int iHashCode = str == null ? 0 : str.hashCode();
        long j10 = this.f25990b;
        return ((((((((((iHashCode ^ 1000003) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ this.f25991c) * 1000003) ^ (true != this.f25992d ? 1237 : 1231)) * 1000003) ^ (true == this.f25993e ? 1231 : 1237)) * 1000003) ^ Arrays.hashCode(this.f25994f);
    }

    public final String toString() {
        String str = this.f25989a;
        long j10 = this.f25990b;
        int i10 = this.f25991c;
        boolean z10 = this.f25992d;
        boolean z11 = this.f25993e;
        String string = Arrays.toString(this.f25994f);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 126 + String.valueOf(string).length());
        sb.append("ZipEntry{name=");
        sb.append(str);
        sb.append(", size=");
        sb.append(j10);
        sb.append(", compressionMethod=");
        sb.append(i10);
        sb.append(", isPartial=");
        sb.append(z10);
        sb.append(", isEndOfArchive=");
        sb.append(z11);
        sb.append(", headerBytes=");
        sb.append(string);
        sb.append("}");
        return sb.toString();
    }
}
