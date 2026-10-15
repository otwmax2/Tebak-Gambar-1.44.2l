package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzflj extends zzfmb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f18399a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f18400b;

    /* synthetic */ zzflj(int i10, String str, zzfli zzfliVar) {
        this.f18399a = i10;
        this.f18400b = str;
    }

    @Override // com.google.android.gms.internal.ads.zzfmb
    public final int a() {
        return this.f18399a;
    }

    @Override // com.google.android.gms.internal.ads.zzfmb
    public final String b() {
        return this.f18400b;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfmb) {
            zzfmb zzfmbVar = (zzfmb) obj;
            if (this.f18399a == zzfmbVar.a() && ((str = this.f18400b) != null ? str.equals(zzfmbVar.b()) : zzfmbVar.b() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.f18399a ^ 1000003;
        String str = this.f18400b;
        return (i10 * 1000003) ^ (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "OverlayDisplayState{statusCode=" + this.f18399a + ", sessionToken=" + this.f18400b + "}";
    }
}
