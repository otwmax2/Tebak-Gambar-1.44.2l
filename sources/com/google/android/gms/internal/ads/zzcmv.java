package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcmv implements zzcuo, zzcwc, zzcvi, com.google.android.gms.ads.internal.client.zza, zzcve {
    private final WeakReference A;
    private final zzctr B;

    @GuardedBy("this")
    private boolean C;
    private final AtomicBoolean D = new AtomicBoolean();
    private final zzbbv E;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f13506o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Executor f13507p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Executor f13508q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final ScheduledExecutorService f13509r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzeyo f13510s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzeyc f13511t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zzffb f13512u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zzezg f13513v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final zzapw f13514w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final zzbbt f13515x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final zzfen f13516y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final WeakReference f13517z;

    zzcmv(Context context, Executor executor, Executor executor2, ScheduledExecutorService scheduledExecutorService, zzeyo zzeyoVar, zzeyc zzeycVar, zzffb zzffbVar, zzezg zzezgVar, View view, zzcei zzceiVar, zzapw zzapwVar, zzbbt zzbbtVar, zzbbv zzbbvVar, zzfen zzfenVar, zzctr zzctrVar, byte[] bArr) {
        this.f13506o = context;
        this.f13507p = executor;
        this.f13508q = executor2;
        this.f13509r = scheduledExecutorService;
        this.f13510s = zzeyoVar;
        this.f13511t = zzeycVar;
        this.f13512u = zzffbVar;
        this.f13513v = zzezgVar;
        this.f13514w = zzapwVar;
        this.f13517z = new WeakReference(view);
        this.A = new WeakReference(zzceiVar);
        this.f13515x = zzbbtVar;
        this.E = zzbbvVar;
        this.f13516y = zzfenVar;
        this.B = zzctrVar;
    }

    private final void C(final int i10, final int i11) {
        View view;
        if (i10 <= 0 || !((view = (View) this.f13517z.get()) == null || view.getHeight() == 0 || view.getWidth() == 0)) {
            w();
        } else {
            this.f13509r.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmo
                @Override // java.lang.Runnable
                public final void run() {
                    this.f13494o.v(i10, i11);
                }
            }, i11, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w() {
        int i10;
        String strG = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10162a3)).booleanValue() ? this.f13514w.c().g(this.f13506o, (View) this.f13517z.get(), null) : null;
        if ((((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10280l0)).booleanValue() && this.f13510s.f17703b.f17700b.f17684g) || !((Boolean) zzbcj.f10565h.e()).booleanValue()) {
            zzezg zzezgVar = this.f13513v;
            zzffb zzffbVar = this.f13512u;
            zzeyo zzeyoVar = this.f13510s;
            zzeyc zzeycVar = this.f13511t;
            zzezgVar.a(zzffbVar.d(zzeyoVar, zzeycVar, false, strG, null, zzeycVar.f17638d));
            return;
        }
        if (((Boolean) zzbcj.f10564g.e()).booleanValue() && ((i10 = this.f13511t.f17634b) == 1 || i10 == 2 || i10 == 5)) {
        }
        zzfuj.q((zzfua) zzfuj.n(zzfua.D(zzfuj.h(null)), ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.P0)).longValue(), TimeUnit.MILLISECONDS, this.f13509r), new zzcmu(this, strG), this.f13507p);
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void I() {
        zzezg zzezgVar = this.f13513v;
        zzffb zzffbVar = this.f13512u;
        zzeyo zzeyoVar = this.f13510s;
        zzeyc zzeycVar = this.f13511t;
        zzezgVar.a(zzffbVar.c(zzeyoVar, zzeycVar, zzeycVar.f17646h));
    }

    @Override // com.google.android.gms.internal.ads.zzcve
    public final void W0(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10314o1)).booleanValue()) {
            this.f13513v.a(this.f13512u.c(this.f13510s, this.f13511t, zzffb.f(2, zzeVar.f5841o, this.f13511t.f17662p)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void h() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvi
    public final void j() {
        if (this.D.compareAndSet(false, true)) {
            int iIntValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10239h3)).intValue();
            if (iIntValue > 0) {
                C(iIntValue, ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10250i3)).intValue());
                return;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10228g3)).booleanValue()) {
                this.f13508q.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmr
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f13501o.p();
                    }
                });
            } else {
                w();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwc
    public final synchronized void k() {
        zzctr zzctrVar;
        if (this.C) {
            ArrayList arrayList = new ArrayList(this.f13511t.f17638d);
            arrayList.addAll(this.f13511t.f17644g);
            this.f13513v.a(this.f13512u.d(this.f13510s, this.f13511t, true, null, null, arrayList));
        } else {
            zzezg zzezgVar = this.f13513v;
            zzffb zzffbVar = this.f13512u;
            zzeyo zzeyoVar = this.f13510s;
            zzeyc zzeycVar = this.f13511t;
            zzezgVar.a(zzffbVar.c(zzeyoVar, zzeycVar, zzeycVar.f17658n));
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10206e3)).booleanValue() && (zzctrVar = this.B) != null) {
                this.f13513v.a(this.f13512u.c(this.B.c(), this.B.b(), zzffb.g(zzctrVar.b().f17658n, zzctrVar.a().f())));
            }
            zzezg zzezgVar2 = this.f13513v;
            zzffb zzffbVar2 = this.f13512u;
            zzeyo zzeyoVar2 = this.f13510s;
            zzeyc zzeycVar2 = this.f13511t;
            zzezgVar2.a(zzffbVar2.c(zzeyoVar2, zzeycVar2, zzeycVar2.f17644g));
        }
        this.C = true;
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void l() {
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void m() {
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void n(zzbud zzbudVar, String str, String str2) {
        zzezg zzezgVar = this.f13513v;
        zzffb zzffbVar = this.f13512u;
        zzeyc zzeycVar = this.f13511t;
        zzezgVar.a(zzffbVar.e(zzeycVar, zzeycVar.f17648i, zzbudVar));
    }

    final /* synthetic */ void p() {
        this.f13507p.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcms
            @Override // java.lang.Runnable
            public final void run() {
                this.f13502o.w();
            }
        });
    }

    final /* synthetic */ void q(int i10, int i11) {
        C(i10 - 1, i11);
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void r() {
        zzezg zzezgVar = this.f13513v;
        zzffb zzffbVar = this.f13512u;
        zzeyo zzeyoVar = this.f13510s;
        zzeyc zzeycVar = this.f13511t;
        zzezgVar.a(zzffbVar.c(zzeyoVar, zzeycVar, zzeycVar.f17650j));
    }

    final /* synthetic */ void v(final int i10, final int i11) {
        this.f13507p.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmq
            @Override // java.lang.Runnable
            public final void run() {
                this.f13498o.q(i10, i11);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void w0() {
        if (!(((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10280l0)).booleanValue() && this.f13510s.f17703b.f17700b.f17684g) && ((Boolean) zzbcj.f10561d.e()).booleanValue()) {
            zzfuj.q(zzfuj.e(zzfua.D(this.f13515x.a()), Throwable.class, new zzfnj() { // from class: com.google.android.gms.internal.ads.zzcmp
                @Override // com.google.android.gms.internal.ads.zzfnj
                public final Object a(Object obj) {
                    return "failure_click_attok";
                }
            }, zzbzn.f11619f), new zzcmt(this), this.f13507p);
            return;
        }
        zzezg zzezgVar = this.f13513v;
        zzffb zzffbVar = this.f13512u;
        zzeyo zzeyoVar = this.f13510s;
        zzeyc zzeycVar = this.f13511t;
        zzezgVar.c(zzffbVar.c(zzeyoVar, zzeycVar, zzeycVar.f17636c), true == com.google.android.gms.ads.internal.zzt.q().x(this.f13506o) ? 2 : 1);
    }
}
