package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdor implements zzczg, com.google.android.gms.ads.internal.client.zza, zzcvi, zzcus {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f15279o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzezm f15280p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzdpi f15281q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzeyo f15282r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzeyc f15283s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzeaf f15284t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Boolean f15285u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final boolean f15286v = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10374t6)).booleanValue();

    public zzdor(Context context, zzezm zzezmVar, zzdpi zzdpiVar, zzeyo zzeyoVar, zzeyc zzeycVar, zzeaf zzeafVar) {
        this.f15279o = context;
        this.f15280p = zzezmVar;
        this.f15281q = zzdpiVar;
        this.f15282r = zzeyoVar;
        this.f15283s = zzeycVar;
        this.f15284t = zzeafVar;
    }

    private final zzdph a(String str) {
        zzdph zzdphVarA = this.f15281q.a();
        zzdphVarA.e(this.f15282r.f17703b.f17700b);
        zzdphVarA.d(this.f15283s);
        zzdphVarA.b("action", str);
        if (!this.f15283s.f17668u.isEmpty()) {
            zzdphVarA.b("ancn", (String) this.f15283s.f17668u.get(0));
        }
        if (this.f15283s.f17651j0) {
            zzdphVarA.b("device_connectivity", true != com.google.android.gms.ads.internal.zzt.q().x(this.f15279o) ? "offline" : "online");
            zzdphVarA.b("event_timestamp", String.valueOf(com.google.android.gms.ads.internal.zzt.b().a()));
            zzdphVarA.b("offline_ad", AppEventsConstants.EVENT_PARAM_VALUE_YES);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.C6)).booleanValue()) {
            boolean z10 = com.google.android.gms.ads.nonagon.signalgeneration.zzf.e(this.f15282r.f17702a.f17696a) != 1;
            zzdphVarA.b("scar", String.valueOf(z10));
            if (z10) {
                com.google.android.gms.ads.internal.client.zzl zzlVar = this.f15282r.f17702a.f17696a.f17731d;
                zzdphVarA.c("ragent", zzlVar.D);
                zzdphVarA.c("rtype", com.google.android.gms.ads.nonagon.signalgeneration.zzf.a(com.google.android.gms.ads.nonagon.signalgeneration.zzf.b(zzlVar)));
            }
        }
        return zzdphVarA;
    }

    private final void c(zzdph zzdphVar) {
        if (!this.f15283s.f17651j0) {
            zzdphVar.g();
            return;
        }
        this.f15284t.e(new zzeah(com.google.android.gms.ads.internal.zzt.b().a(), this.f15282r.f17703b.f17700b.f17679b, zzdphVar.f(), 2));
    }

    private final boolean e() {
        if (this.f15285u == null) {
            synchronized (this) {
                if (this.f15285u == null) {
                    String str = (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10292m1);
                    com.google.android.gms.ads.internal.zzt.r();
                    String strM = com.google.android.gms.ads.internal.util.zzs.M(this.f15279o);
                    boolean zMatches = false;
                    if (str != null && strM != null) {
                        try {
                            zMatches = Pattern.matches(str, strM);
                        } catch (RuntimeException e10) {
                            com.google.android.gms.ads.internal.zzt.q().u(e10, "CsiActionsListener.isPatternMatched");
                        }
                    }
                    this.f15285u = Boolean.valueOf(zMatches);
                }
            }
        }
        return this.f15285u.booleanValue();
    }

    @Override // com.google.android.gms.internal.ads.zzcus
    public final void C(zzded zzdedVar) {
        if (this.f15286v) {
            zzdph zzdphVarA = a("ifts");
            zzdphVarA.b("reason", "exception");
            if (!TextUtils.isEmpty(zzdedVar.getMessage())) {
                zzdphVarA.b(SDKConstants.PARAM_DEBUG_MESSAGE, zzdedVar.getMessage());
            }
            zzdphVarA.g();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczg
    public final void b() {
        if (e()) {
            a("adapter_impression").g();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczg
    public final void d() {
        if (e()) {
            a("adapter_shown").g();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcvi
    public final void j() {
        if (e() || this.f15283s.f17651j0) {
            c(a("impression"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcus
    public final void v(com.google.android.gms.ads.internal.client.zze zzeVar) {
        com.google.android.gms.ads.internal.client.zze zzeVar2;
        if (this.f15286v) {
            zzdph zzdphVarA = a("ifts");
            zzdphVarA.b("reason", "adapter");
            int i10 = zzeVar.f5841o;
            String str = zzeVar.f5842p;
            if (zzeVar.f5843q.equals("com.google.android.gms.ads") && (zzeVar2 = zzeVar.f5844r) != null && !zzeVar2.f5843q.equals("com.google.android.gms.ads")) {
                com.google.android.gms.ads.internal.client.zze zzeVar3 = zzeVar.f5844r;
                i10 = zzeVar3.f5841o;
                str = zzeVar3.f5842p;
            }
            if (i10 >= 0) {
                zzdphVarA.b("arec", String.valueOf(i10));
            }
            String strA = this.f15280p.a(str);
            if (strA != null) {
                zzdphVarA.b("areec", strA);
            }
            zzdphVarA.g();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void w0() {
        if (this.f15283s.f17651j0) {
            c(a("click"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcus
    public final void zzb() {
        if (this.f15286v) {
            zzdph zzdphVarA = a("ifts");
            zzdphVarA.b("reason", "blocked");
            zzdphVarA.g();
        }
    }
}
