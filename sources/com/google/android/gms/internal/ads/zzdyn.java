package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdyn implements zzdbh {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f15968q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzfdk f15969r;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f15966o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f15967p = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzg f15970s = com.google.android.gms.ads.internal.zzt.q().h();

    public zzdyn(String str, zzfdk zzfdkVar) {
        this.f15968q = str;
        this.f15969r = zzfdkVar;
    }

    private final zzfdj a(String str) {
        String str2 = this.f15970s.g0() ? BuildConfig.FLAVOR : this.f15968q;
        zzfdj zzfdjVarB = zzfdj.b(str);
        zzfdjVarB.a("tms", Long.toString(com.google.android.gms.ads.internal.zzt.b().b(), 10));
        zzfdjVarB.a("tid", str2);
        return zzfdjVarB;
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void D(String str) {
        zzfdk zzfdkVar = this.f15969r;
        zzfdj zzfdjVarA = a("adapter_init_started");
        zzfdjVarA.a("ancn", str);
        zzfdkVar.a(zzfdjVarA);
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void O(String str) {
        zzfdk zzfdkVar = this.f15969r;
        zzfdj zzfdjVarA = a("adapter_init_finished");
        zzfdjVarA.a("ancn", str);
        zzfdkVar.a(zzfdjVarA);
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final synchronized void b() {
        if (this.f15967p) {
            return;
        }
        this.f15969r.a(a("init_finished"));
        this.f15967p = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final synchronized void c() {
        if (this.f15966o) {
            return;
        }
        this.f15969r.a(a("init_started"));
        this.f15966o = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void n(String str, String str2) {
        zzfdk zzfdkVar = this.f15969r;
        zzfdj zzfdjVarA = a("adapter_init_finished");
        zzfdjVarA.a("ancn", str);
        zzfdjVarA.a("rqe", str2);
        zzfdkVar.a(zzfdjVarA);
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void o(String str) {
        zzfdk zzfdkVar = this.f15969r;
        zzfdj zzfdjVarA = a("aaia");
        zzfdjVarA.a("aair", "MalformedJson");
        zzfdkVar.a(zzfdjVarA);
    }
}
