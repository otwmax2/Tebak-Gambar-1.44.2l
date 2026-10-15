package com.google.android.gms.internal.ads;

import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzeei {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzezm f16424a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdna f16425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdpi f16426c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfdk f16427d;

    public zzeei(zzezm zzezmVar, zzdna zzdnaVar, zzdpi zzdpiVar, zzfdk zzfdkVar) {
        this.f16424a = zzezmVar;
        this.f16425b = zzdnaVar;
        this.f16426c = zzdpiVar;
        this.f16427d = zzfdkVar;
    }

    public final void a(zzeyf zzeyfVar, zzeyc zzeycVar, int i10, @Nullable zzeax zzeaxVar, long j10) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S7)).booleanValue()) {
            zzfdj zzfdjVarB = zzfdj.b("adapter_status");
            zzfdjVarB.g(zzeyfVar);
            zzfdjVarB.f(zzeycVar);
            zzfdjVarB.a("adapter_l", String.valueOf(j10));
            zzfdjVarB.a("sc", Integer.toString(i10));
            if (zzeaxVar != null) {
                zzfdjVarB.a("arec", Integer.toString(zzeaxVar.b().f5841o));
                String strA = this.f16424a.a(zzeaxVar.getMessage());
                if (strA != null) {
                    zzfdjVarB.a("areec", strA);
                }
            }
            zzdmz zzdmzVarB = this.f16425b.b(zzeycVar.f17668u);
            if (zzdmzVarB != null) {
                zzfdjVarB.a("ancn", zzdmzVarB.f15206a);
                zzbpq zzbpqVar = zzdmzVarB.f15207b;
                if (zzbpqVar != null) {
                    zzfdjVarB.a("adapter_v", zzbpqVar.toString());
                }
                zzbpq zzbpqVar2 = zzdmzVarB.f15208c;
                if (zzbpqVar2 != null) {
                    zzfdjVarB.a("adapter_sv", zzbpqVar2.toString());
                }
            }
            this.f16427d.a(zzfdjVarB);
            return;
        }
        zzdph zzdphVarA = this.f16426c.a();
        zzdphVarA.e(zzeyfVar);
        zzdphVarA.d(zzeycVar);
        zzdphVarA.b("action", "adapter_status");
        zzdphVarA.b("adapter_l", String.valueOf(j10));
        zzdphVarA.b("sc", Integer.toString(i10));
        if (zzeaxVar != null) {
            zzdphVarA.b("arec", Integer.toString(zzeaxVar.b().f5841o));
            String strA2 = this.f16424a.a(zzeaxVar.getMessage());
            if (strA2 != null) {
                zzdphVarA.b("areec", strA2);
            }
        }
        zzdmz zzdmzVarB2 = this.f16425b.b(zzeycVar.f17668u);
        if (zzdmzVarB2 != null) {
            zzdphVarA.b("ancn", zzdmzVarB2.f15206a);
            zzbpq zzbpqVar3 = zzdmzVarB2.f15207b;
            if (zzbpqVar3 != null) {
                zzdphVarA.b("adapter_v", zzbpqVar3.toString());
            }
            zzbpq zzbpqVar4 = zzdmzVarB2.f15208c;
            if (zzbpqVar4 != null) {
                zzdphVarA.b("adapter_sv", zzbpqVar4.toString());
            }
        }
        zzdphVarA.g();
    }
}
