package com.google.android.play.core.assetpacks;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class k0 extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f25961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, AssetPackState> f25962b;

    k0(long j10, Map<String, AssetPackState> map) {
        this.f25961a = j10;
        this.f25962b = map;
    }

    @Override // com.google.android.play.core.assetpacks.c
    public final Map<String, AssetPackState> a() {
        return this.f25962b;
    }

    @Override // com.google.android.play.core.assetpacks.c
    public final long b() {
        return this.f25961a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            if (this.f25961a == cVar.b() && this.f25962b.equals(cVar.a())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f25961a;
        return this.f25962b.hashCode() ^ ((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003);
    }

    public final String toString() {
        long j10 = this.f25961a;
        String strValueOf = String.valueOf(this.f25962b);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 61);
        sb.append("AssetPackStates{totalBytes=");
        sb.append(j10);
        sb.append(", packStates=");
        sb.append(strValueOf);
        sb.append("}");
        return sb.toString();
    }
}
