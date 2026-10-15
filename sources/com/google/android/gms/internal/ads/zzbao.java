package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbao implements zzbda {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzbap f10148a;

    zzbao(zzbap zzbapVar) {
        this.f10148a = zzbapVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbda
    public final String a(String str, String str2) {
        return this.f10148a.f10153e.getString(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbda
    public final Double b(String str, double d10) {
        try {
            return Double.valueOf(this.f10148a.f10153e.getFloat(str, (float) d10));
        } catch (ClassCastException unused) {
            return Double.valueOf(this.f10148a.f10153e.getString(str, String.valueOf(d10)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbda
    public final Long c(String str, long j10) {
        try {
            return Long.valueOf(this.f10148a.f10153e.getLong(str, j10));
        } catch (ClassCastException unused) {
            return Long.valueOf(this.f10148a.f10153e.getInt(str, (int) j10));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbda
    public final Boolean d(String str, boolean z10) {
        try {
            return Boolean.valueOf(this.f10148a.f10153e.getBoolean(str, z10));
        } catch (ClassCastException unused) {
            return Boolean.valueOf(this.f10148a.f10153e.getString(str, String.valueOf(z10)));
        }
    }
}
