package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdyj implements zzczg, com.google.android.gms.ads.internal.client.zza, zzcvi, zzcus {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f15944o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzezm f15945p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzeyo f15946q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzeyc f15947r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzeaf f15948s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Boolean f15949t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final boolean f15950u = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10374t6)).booleanValue();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zzfdk f15951v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final String f15952w;

    public zzdyj(Context context, zzezm zzezmVar, zzeyo zzeyoVar, zzeyc zzeycVar, zzeaf zzeafVar, zzfdk zzfdkVar, String str) {
        this.f15944o = context;
        this.f15945p = zzezmVar;
        this.f15946q = zzeyoVar;
        this.f15947r = zzeycVar;
        this.f15948s = zzeafVar;
        this.f15951v = zzfdkVar;
        this.f15952w = str;
    }

    private final zzfdj a(String str) {
        zzfdj zzfdjVarB = zzfdj.b(str);
        zzfdjVarB.h(this.f15946q, null);
        zzfdjVarB.f(this.f15947r);
        zzfdjVarB.a(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.f15952w);
        if (!this.f15947r.f17668u.isEmpty()) {
            zzfdjVarB.a("ancn", (String) this.f15947r.f17668u.get(0));
        }
        if (this.f15947r.f17651j0) {
            zzfdjVarB.a("device_connectivity", true != com.google.android.gms.ads.internal.zzt.q().x(this.f15944o) ? "offline" : "online");
            zzfdjVarB.a("event_timestamp", String.valueOf(com.google.android.gms.ads.internal.zzt.b().a()));
            zzfdjVarB.a("offline_ad", AppEventsConstants.EVENT_PARAM_VALUE_YES);
        }
        return zzfdjVarB;
    }

    private final void c(zzfdj zzfdjVar) {
        if (!this.f15947r.f17651j0) {
            this.f15951v.a(zzfdjVar);
            return;
        }
        this.f15948s.e(new zzeah(com.google.android.gms.ads.internal.zzt.b().a(), this.f15946q.f17703b.f17700b.f17679b, this.f15951v.b(zzfdjVar), 2));
    }

    private final boolean e() {
        if (this.f15949t == null) {
            synchronized (this) {
                if (this.f15949t == null) {
                    String str = (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10292m1);
                    com.google.android.gms.ads.internal.zzt.r();
                    String strM = com.google.android.gms.ads.internal.util.zzs.M(this.f15944o);
                    boolean zMatches = false;
                    if (str != null && strM != null) {
                        try {
                            zMatches = Pattern.matches(str, strM);
                        } catch (RuntimeException e10) {
                            com.google.android.gms.ads.internal.zzt.q().u(e10, "CsiActionsListener.isPatternMatched");
                        }
                    }
                    this.f15949t = Boolean.valueOf(zMatches);
                }
            }
        }
        return this.f15949t.booleanValue();
    }

    @Override // com.google.android.gms.internal.ads.zzcus
    public final void C(zzded zzdedVar) {
        if (this.f15950u) {
            zzfdj zzfdjVarA = a("ifts");
            zzfdjVarA.a("reason", "exception");
            if (!TextUtils.isEmpty(zzdedVar.getMessage())) {
                zzfdjVarA.a(SDKConstants.PARAM_DEBUG_MESSAGE, zzdedVar.getMessage());
            }
            this.f15951v.a(zzfdjVarA);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczg
    public final void b() {
        if (e()) {
            this.f15951v.a(a("adapter_impression"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczg
    public final void d() {
        if (e()) {
            this.f15951v.a(a("adapter_shown"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcvi
    public final void j() {
        if (e() || this.f15947r.f17651j0) {
            c(a("impression"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcus
    public final void v(com.google.android.gms.ads.internal.client.zze zzeVar) {
        com.google.android.gms.ads.internal.client.zze zzeVar2;
        if (this.f15950u) {
            int i10 = zzeVar.f5841o;
            String str = zzeVar.f5842p;
            if (zzeVar.f5843q.equals("com.google.android.gms.ads") && (zzeVar2 = zzeVar.f5844r) != null && !zzeVar2.f5843q.equals("com.google.android.gms.ads")) {
                com.google.android.gms.ads.internal.client.zze zzeVar3 = zzeVar.f5844r;
                i10 = zzeVar3.f5841o;
                str = zzeVar3.f5842p;
            }
            String strA = this.f15945p.a(str);
            zzfdj zzfdjVarA = a("ifts");
            zzfdjVarA.a("reason", "adapter");
            if (i10 >= 0) {
                zzfdjVarA.a("arec", String.valueOf(i10));
            }
            if (strA != null) {
                zzfdjVarA.a("areec", strA);
            }
            this.f15951v.a(zzfdjVarA);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void w0() {
        if (this.f15947r.f17651j0) {
            c(a("click"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcus
    public final void zzb() {
        if (this.f15950u) {
            zzfdk zzfdkVar = this.f15951v;
            zzfdj zzfdjVarA = a("ifts");
            zzfdjVarA.a("reason", "blocked");
            zzfdkVar.a(zzfdjVarA);
        }
    }
}
