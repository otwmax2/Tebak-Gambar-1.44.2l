package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfld extends zzflo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f18382b;

    /* synthetic */ zzfld(String str, String str2, zzflc zzflcVar) {
        this.f18381a = str;
        this.f18382b = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzflo
    public final String a() {
        return this.f18382b;
    }

    @Override // com.google.android.gms.internal.ads.zzflo
    public final String b() {
        return this.f18381a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzflo) {
            zzflo zzfloVar = (zzflo) obj;
            String str = this.f18381a;
            if (str != null ? str.equals(zzfloVar.b()) : zzfloVar.b() == null) {
                String str2 = this.f18382b;
                if (str2 != null ? str2.equals(zzfloVar.a()) : zzfloVar.a() == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f18381a;
        int iHashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f18382b;
        return ((iHashCode ^ 1000003) * 1000003) ^ (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return "OverlayDisplayDismissRequest{sessionToken=" + this.f18381a + ", appId=" + this.f18382b + "}";
    }
}
