package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzflm extends zzfme {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f18404b;

    /* synthetic */ zzflm(String str, String str2, zzfll zzfllVar) {
        this.f18403a = str;
        this.f18404b = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzfme
    public final String a() {
        return this.f18404b;
    }

    @Override // com.google.android.gms.internal.ads.zzfme
    public final String b() {
        return this.f18403a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfme) {
            zzfme zzfmeVar = (zzfme) obj;
            String str = this.f18403a;
            if (str != null ? str.equals(zzfmeVar.b()) : zzfmeVar.b() == null) {
                String str2 = this.f18404b;
                if (str2 != null ? str2.equals(zzfmeVar.a()) : zzfmeVar.a() == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f18403a;
        int iHashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f18404b;
        return ((iHashCode ^ 1000003) * 1000003) ^ (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return "OverlayDisplayUpdateRequest{sessionToken=" + this.f18403a + ", appId=" + this.f18404b + "}";
    }
}
