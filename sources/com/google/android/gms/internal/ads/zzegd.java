package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzegd implements zzeat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f16590a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcph f16591b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzbbp f16592c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfuu f16593d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzfda f16594e;

    public zzegd(Context context, zzcph zzcphVar, zzfda zzfdaVar, zzfuu zzfuuVar, zzbbp zzbbpVar) {
        this.f16590a = context;
        this.f16591b = zzcphVar;
        this.f16594e = zzfdaVar;
        this.f16593d = zzfuuVar;
        this.f16592c = zzbbpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final boolean a(zzeyo zzeyoVar, zzeyc zzeycVar) {
        zzeyh zzeyhVar;
        return (this.f16592c == null || (zzeyhVar = zzeycVar.f17667t) == null || zzeyhVar.f17690a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final zzfut b(zzeyo zzeyoVar, zzeyc zzeycVar) {
        zzcol zzcolVarA = this.f16591b.a(new zzcrb(zzeyoVar, zzeycVar, null), new zzegb(this, new View(this.f16590a), null, new zzcqk() { // from class: com.google.android.gms.internal.ads.zzefz
            @Override // com.google.android.gms.internal.ads.zzcqk
            public final com.google.android.gms.ads.internal.client.zzdq zza() {
                return null;
            }
        }, (zzeyd) zzeycVar.f17669v.get(0)));
        zzegc zzegcVarK = zzcolVarA.k();
        zzeyh zzeyhVar = zzeycVar.f17667t;
        final zzbbk zzbbkVar = new zzbbk(zzegcVarK, zzeyhVar.f17691b, zzeyhVar.f17690a);
        zzfda zzfdaVar = this.f16594e;
        return zzfck.d(new zzfce() { // from class: com.google.android.gms.internal.ads.zzega
            @Override // com.google.android.gms.internal.ads.zzfce
            public final void zza() throws Exception {
                this.f16582a.c(zzbbkVar);
            }
        }, this.f16593d, zzfcu.CUSTOM_RENDER_SYN, zzfdaVar).b(zzfcu.CUSTOM_RENDER_ACK).d(zzfuj.h(zzcolVarA.h())).a();
    }

    final /* synthetic */ void c(zzbbk zzbbkVar) throws Exception {
        this.f16592c.S4(zzbbkVar);
    }
}
