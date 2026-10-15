package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcng implements zzatf, zzcvj, com.google.android.gms.ads.internal.overlay.zzo, zzcvi {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcnb f13561o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzcnc f13562p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzbmr f13564r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Executor f13565s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Clock f13566t;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Set f13563q = new HashSet();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final AtomicBoolean f13567u = new AtomicBoolean(false);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @GuardedBy("this")
    private final zzcnf f13568v = new zzcnf();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f13569w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private WeakReference f13570x = new WeakReference(this);

    public zzcng(zzbmo zzbmoVar, zzcnc zzcncVar, Executor executor, zzcnb zzcnbVar, Clock clock) {
        this.f13561o = zzcnbVar;
        zzblz zzblzVar = zzbmc.f10946b;
        this.f13564r = zzbmoVar.a("google.afma.activeView.handleUpdate", zzblzVar, zzblzVar);
        this.f13562p = zzcncVar;
        this.f13565s = executor;
        this.f13566t = clock;
    }

    private final void i() {
        Iterator it = this.f13563q.iterator();
        while (it.hasNext()) {
            this.f13561o.f((zzcei) it.next());
        }
        this.f13561o.e();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void G(int i10) {
    }

    @Override // com.google.android.gms.internal.ads.zzatf
    public final synchronized void H0(zzate zzateVar) {
        zzcnf zzcnfVar = this.f13568v;
        zzcnfVar.f13555a = zzateVar.f9886j;
        zzcnfVar.f13560f = zzateVar;
        a();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void P0() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void Q4() {
        this.f13568v.f13556b = false;
        a();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void X0() {
        this.f13568v.f13556b = true;
        a();
    }

    public final synchronized void a() {
        if (this.f13570x.get() == null) {
            f();
            return;
        }
        if (this.f13569w || !this.f13567u.get()) {
            return;
        }
        try {
            this.f13568v.f13558d = this.f13566t.b();
            final JSONObject jSONObjectA = this.f13562p.c(this.f13568v);
            for (final zzcei zzceiVar : this.f13563q) {
                this.f13565s.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcne
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzceiVar.Z0("AFMA_updateActiveView", jSONObjectA);
                    }
                });
            }
            zzbzq.b(this.f13564r.c(jSONObjectA), "ActiveViewListener.callActiveViewJs");
        } catch (Exception e10) {
            com.google.android.gms.ads.internal.util.zze.l("Failed to call ActiveViewJS", e10);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void b() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvj
    public final synchronized void c(Context context) {
        this.f13568v.f13556b = false;
        a();
    }

    public final synchronized void d(zzcei zzceiVar) {
        this.f13563q.add(zzceiVar);
        this.f13561o.d(zzceiVar);
    }

    public final void e(Object obj) {
        this.f13570x = new WeakReference(obj);
    }

    public final synchronized void f() {
        i();
        this.f13569w = true;
    }

    @Override // com.google.android.gms.internal.ads.zzcvi
    public final synchronized void j() {
        if (this.f13567u.compareAndSet(false, true)) {
            this.f13561o.c(this);
            a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcvj
    public final synchronized void o(Context context) {
        this.f13568v.f13559e = "u";
        a();
        i();
        this.f13569w = true;
    }

    @Override // com.google.android.gms.internal.ads.zzcvj
    public final synchronized void p(Context context) {
        this.f13568v.f13556b = true;
        a();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
    }
}
