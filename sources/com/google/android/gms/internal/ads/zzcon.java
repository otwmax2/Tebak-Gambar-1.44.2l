package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcon extends zzcok {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Context f13642i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final View f13643j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzcei f13644k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzeyd f13645l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzcqk f13646m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzdgt f13647n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzdce f13648o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzgws f13649p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Executor f13650q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zzq f13651r;

    zzcon(zzcql zzcqlVar, Context context, zzeyd zzeydVar, View view, zzcei zzceiVar, zzcqk zzcqkVar, zzdgt zzdgtVar, zzdce zzdceVar, zzgws zzgwsVar, Executor executor) {
        super(zzcqlVar);
        this.f13642i = context;
        this.f13643j = view;
        this.f13644k = zzceiVar;
        this.f13645l = zzeydVar;
        this.f13646m = zzcqkVar;
        this.f13647n = zzdgtVar;
        this.f13648o = zzdceVar;
        this.f13649p = zzgwsVar;
        this.f13650q = executor;
    }

    public static /* synthetic */ void o(zzcon zzconVar) {
        zzdgt zzdgtVar = zzconVar.f13647n;
        if (zzdgtVar.e() == null) {
            return;
        }
        try {
            zzdgtVar.e().S1((com.google.android.gms.ads.internal.client.zzbu) zzconVar.f13649p.zzb(), ObjectWrapper.Q4(zzconVar.f13642i));
        } catch (RemoteException e10) {
            zzbza.e("RemoteException when notifyAdLoad is called", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcqm
    public final void b() {
        this.f13650q.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcom
            @Override // java.lang.Runnable
            public final void run() {
                zzcon.o(this.f13641o);
            }
        });
        super.b();
    }

    @Override // com.google.android.gms.internal.ads.zzcok
    public final int h() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10243h7)).booleanValue() && this.f13772b.f17647h0) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10254i7)).booleanValue()) {
                return 0;
            }
        }
        return this.f13771a.f17703b.f17700b.f17680c;
    }

    @Override // com.google.android.gms.internal.ads.zzcok
    public final View i() {
        return this.f13643j;
    }

    @Override // com.google.android.gms.internal.ads.zzcok
    public final com.google.android.gms.ads.internal.client.zzdq j() {
        try {
            return this.f13646m.zza();
        } catch (zzezc unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcok
    public final zzeyd k() {
        com.google.android.gms.ads.internal.client.zzq zzqVar = this.f13651r;
        if (zzqVar != null) {
            return zzezb.b(zzqVar);
        }
        zzeyc zzeycVar = this.f13772b;
        if (zzeycVar.f17639d0) {
            for (String str : zzeycVar.f17632a) {
                if (str == null || !str.contains("FirstParty")) {
                }
            }
            return new zzeyd(this.f13643j.getWidth(), this.f13643j.getHeight(), false);
        }
        return (zzeyd) this.f13772b.f17666s.get(0);
    }

    @Override // com.google.android.gms.internal.ads.zzcok
    public final zzeyd l() {
        return this.f13645l;
    }

    @Override // com.google.android.gms.internal.ads.zzcok
    public final void m() {
        this.f13648o.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcok
    public final void n(ViewGroup viewGroup, com.google.android.gms.ads.internal.client.zzq zzqVar) {
        zzcei zzceiVar;
        if (viewGroup == null || (zzceiVar = this.f13644k) == null) {
            return;
        }
        zzceiVar.C0(zzcfx.c(zzqVar));
        viewGroup.setMinimumHeight(zzqVar.f5933q);
        viewGroup.setMinimumWidth(zzqVar.f5936t);
        this.f13651r = zzqVar;
    }
}
