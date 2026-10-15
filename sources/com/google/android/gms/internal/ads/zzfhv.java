package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfhv extends zzfhr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18241a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f18242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f18243c;

    /* synthetic */ zzfhv(String str, boolean z10, boolean z11, zzfhu zzfhuVar) {
        this.f18241a = str;
        this.f18242b = z10;
        this.f18243c = z11;
    }

    @Override // com.google.android.gms.internal.ads.zzfhr
    public final String b() {
        return this.f18241a;
    }

    @Override // com.google.android.gms.internal.ads.zzfhr
    public final boolean c() {
        return this.f18243c;
    }

    @Override // com.google.android.gms.internal.ads.zzfhr
    public final boolean d() {
        return this.f18242b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfhr) {
            zzfhr zzfhrVar = (zzfhr) obj;
            if (this.f18241a.equals(zzfhrVar.b()) && this.f18242b == zzfhrVar.d() && this.f18243c == zzfhrVar.c()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f18241a.hashCode() ^ 1000003;
        return (((iHashCode * 1000003) ^ (true != this.f18242b ? 1237 : 1231)) * 1000003) ^ (true == this.f18243c ? 1231 : 1237);
    }

    public final String toString() {
        return "AdShield2Options{clientVersion=" + this.f18241a + ", shouldGetAdvertisingId=" + this.f18242b + ", isGooglePlayServicesAvailable=" + this.f18243c + "}";
    }
}
