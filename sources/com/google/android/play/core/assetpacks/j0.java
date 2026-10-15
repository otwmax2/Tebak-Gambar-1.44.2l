package com.google.android.play.core.assetpacks;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class j0 extends AssetPackState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f25948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f25949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f25950c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f25951d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f25952e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f25953f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f25954g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f25955h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f25956i;

    j0(String str, int i10, int i11, long j10, long j11, int i12, int i13, String str2, String str3) {
        Objects.requireNonNull(str, "Null name");
        this.f25948a = str;
        this.f25949b = i10;
        this.f25950c = i11;
        this.f25951d = j10;
        this.f25952e = j11;
        this.f25953f = i12;
        this.f25954g = i13;
        Objects.requireNonNull(str2, "Null availableVersionTag");
        this.f25955h = str2;
        Objects.requireNonNull(str3, "Null installedVersionTag");
        this.f25956i = str3;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final long a() {
        return this.f25951d;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final int b() {
        return this.f25950c;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final String c() {
        return this.f25948a;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final int d() {
        return this.f25949b;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final long e() {
        return this.f25952e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AssetPackState) {
            AssetPackState assetPackState = (AssetPackState) obj;
            if (this.f25948a.equals(assetPackState.c()) && this.f25949b == assetPackState.d() && this.f25950c == assetPackState.b() && this.f25951d == assetPackState.a() && this.f25952e == assetPackState.e() && this.f25953f == assetPackState.f() && this.f25954g == assetPackState.g() && this.f25955h.equals(assetPackState.j()) && this.f25956i.equals(assetPackState.k())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final int f() {
        return this.f25953f;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final int g() {
        return this.f25954g;
    }

    public final int hashCode() {
        int iHashCode = this.f25948a.hashCode();
        int i10 = this.f25949b;
        int i11 = this.f25950c;
        long j10 = this.f25951d;
        long j11 = this.f25952e;
        return ((((((((((((((((iHashCode ^ 1000003) * 1000003) ^ i10) * 1000003) ^ i11) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f25953f) * 1000003) ^ this.f25954g) * 1000003) ^ this.f25955h.hashCode()) * 1000003) ^ this.f25956i.hashCode();
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final String j() {
        return this.f25955h;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final String k() {
        return this.f25956i;
    }

    public final String toString() {
        String str = this.f25948a;
        int i10 = this.f25949b;
        int i11 = this.f25950c;
        long j10 = this.f25951d;
        long j11 = this.f25952e;
        int i12 = this.f25953f;
        int i13 = this.f25954g;
        String str2 = this.f25955h;
        String str3 = this.f25956i;
        int length = str.length();
        StringBuilder sb = new StringBuilder(length + 261 + str2.length() + str3.length());
        sb.append("AssetPackState{name=");
        sb.append(str);
        sb.append(", status=");
        sb.append(i10);
        sb.append(", errorCode=");
        sb.append(i11);
        sb.append(", bytesDownloaded=");
        sb.append(j10);
        sb.append(", totalBytesToDownload=");
        sb.append(j11);
        sb.append(", transferProgressPercentage=");
        sb.append(i12);
        sb.append(", updateAvailability=");
        sb.append(i13);
        sb.append(", availableVersionTag=");
        sb.append(str2);
        sb.append(", installedVersionTag=");
        sb.append(str3);
        sb.append("}");
        return sb.toString();
    }
}
