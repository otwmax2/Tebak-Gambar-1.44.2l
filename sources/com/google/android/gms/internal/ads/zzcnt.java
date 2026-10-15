package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcnt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfdk f13613a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdpi f13614b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzeyo f13615c;

    public zzcnt(zzdpi zzdpiVar, zzeyo zzeyoVar, zzfdk zzfdkVar) {
        this.f13613a = zzfdkVar;
        this.f13614b = zzdpiVar;
        this.f13615c = zzeyoVar;
    }

    private static String b(int i10) {
        int i11 = i10 - 1;
        return i11 != 0 ? i11 != 1 ? i11 != 2 ? i11 != 3 ? i11 != 4 ? "u" : "ac" : "cb" : "cc" : "bb" : "h";
    }

    public final void a(long j10, int i10) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S7)).booleanValue()) {
            zzfdk zzfdkVar = this.f13613a;
            zzfdj zzfdjVarB = zzfdj.b("ad_closed");
            zzfdjVarB.g(this.f13615c.f17703b.f17700b);
            zzfdjVarB.a("show_time", String.valueOf(j10));
            zzfdjVarB.a("ad_format", "app_open_ad");
            zzfdjVarB.a("acr", b(i10));
            zzfdkVar.a(zzfdjVarB);
            return;
        }
        zzdph zzdphVarA = this.f13614b.a();
        zzdphVarA.e(this.f13615c.f17703b.f17700b);
        zzdphVarA.b("action", "ad_closed");
        zzdphVarA.b("show_time", String.valueOf(j10));
        zzdphVarA.b("ad_format", "app_open_ad");
        zzdphVarA.b("acr", b(i10));
        zzdphVarA.g();
    }
}
