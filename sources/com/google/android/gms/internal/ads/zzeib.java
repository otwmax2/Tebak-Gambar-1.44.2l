package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.util.Pair;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeib implements AppEventListener, zzcxj, zzcwc, zzcur, zzcvi, com.google.android.gms.ads.internal.client.zza, zzcuo, zzcwz, zzcve, zzdcc {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final zzfdk f16703w;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final AtomicReference f16695o = new AtomicReference();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final AtomicReference f16696p = new AtomicReference();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final AtomicReference f16697q = new AtomicReference();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final AtomicReference f16698r = new AtomicReference();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final AtomicReference f16699s = new AtomicReference();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final AtomicBoolean f16700t = new AtomicBoolean(true);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final AtomicBoolean f16701u = new AtomicBoolean(false);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final AtomicBoolean f16702v = new AtomicBoolean(false);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @VisibleForTesting
    final BlockingQueue f16704x = new ArrayBlockingQueue(((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10189c8)).intValue());

    public zzeib(zzfdk zzfdkVar) {
        this.f16703w = zzfdkVar;
    }

    private final void G() {
        if (this.f16701u.get() && this.f16702v.get()) {
            for (final Pair pair : this.f16704x) {
                zzevh.a(this.f16696p, new zzevg() { // from class: com.google.android.gms.internal.ads.zzehs
                    @Override // com.google.android.gms.internal.ads.zzevg
                    public final void a(Object obj) throws RemoteException {
                        Pair pair2 = pair;
                        ((com.google.android.gms.ads.internal.client.zzcb) obj).j1((String) pair2.first, (String) pair2.second);
                    }
                });
            }
            this.f16704x.clear();
            this.f16700t.set(false);
        }
    }

    public final void C(com.google.android.gms.ads.internal.client.zzcb zzcbVar) {
        this.f16696p.set(zzcbVar);
        this.f16701u.set(true);
        G();
    }

    public final void D(com.google.android.gms.ads.internal.client.zzci zzciVar) {
        this.f16699s.set(zzciVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void I() {
    }

    @Override // com.google.android.gms.internal.ads.zzcve
    public final void W0(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzevh.a(this.f16699s, new zzevg() { // from class: com.google.android.gms.internal.ads.zzehp
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((com.google.android.gms.ads.internal.client.zzci) obj).L0(zzeVar);
            }
        });
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzbh a() {
        return (com.google.android.gms.ads.internal.client.zzbh) this.f16695o.get();
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzcb b() {
        return (com.google.android.gms.ads.internal.client.zzcb) this.f16696p.get();
    }

    @Override // com.google.android.gms.internal.ads.zzcwz
    public final void c(final com.google.android.gms.ads.internal.client.zzs zzsVar) {
        zzevh.a(this.f16697q, new zzevg() { // from class: com.google.android.gms.internal.ads.zzehq
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((com.google.android.gms.ads.internal.client.zzdg) obj).Z6(zzsVar);
            }
        });
    }

    public final void e(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
        this.f16695o.set(zzbhVar);
    }

    @Override // com.google.android.gms.ads.admanager.AppEventListener
    public final synchronized void f(final String str, final String str2) {
        if (!this.f16700t.get()) {
            zzevh.a(this.f16696p, new zzevg() { // from class: com.google.android.gms.internal.ads.zzeho
                @Override // com.google.android.gms.internal.ads.zzevg
                public final void a(Object obj) throws RemoteException {
                    ((com.google.android.gms.ads.internal.client.zzcb) obj).j1(str, str2);
                }
            });
            return;
        }
        if (!this.f16704x.offer(new Pair(str, str2))) {
            zzbza.b("The queue for app events is full, dropping the new event.");
            zzfdk zzfdkVar = this.f16703w;
            if (zzfdkVar != null) {
                zzfdj zzfdjVarB = zzfdj.b("dae_action");
                zzfdjVarB.a("dae_name", str);
                zzfdjVarB.a("dae_data", str2);
                zzfdkVar.a(zzfdjVarB);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void h() {
        zzevh.a(this.f16695o, new zzevg() { // from class: com.google.android.gms.internal.ads.zzeia
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).d();
            }
        });
        zzevh.a(this.f16699s, new zzevg() { // from class: com.google.android.gms.internal.ads.zzehj
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((com.google.android.gms.ads.internal.client.zzci) obj).a();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvi
    public final void j() {
        zzevh.a(this.f16695o, new zzevg() { // from class: com.google.android.gms.internal.ads.zzehi
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).e();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwc
    public final synchronized void k() {
        zzevh.a(this.f16695o, new zzevg() { // from class: com.google.android.gms.internal.ads.zzehy
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).g();
            }
        });
        zzevh.a(this.f16698r, new zzevg() { // from class: com.google.android.gms.internal.ads.zzehz
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((com.google.android.gms.ads.internal.client.zzbk) obj).a();
            }
        });
        this.f16702v.set(true);
        G();
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void l() {
        zzevh.a(this.f16695o, new zzevg() { // from class: com.google.android.gms.internal.ads.zzehr
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).f();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcxj
    public final void l0(zzeyo zzeyoVar) {
        this.f16700t.set(true);
        this.f16702v.set(false);
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void m() {
        zzevh.a(this.f16695o, new zzevg() { // from class: com.google.android.gms.internal.ads.zzehl
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).h();
            }
        });
        zzevh.a(this.f16699s, new zzevg() { // from class: com.google.android.gms.internal.ads.zzehm
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((com.google.android.gms.ads.internal.client.zzci) obj).c();
            }
        });
        zzevh.a(this.f16699s, new zzevg() { // from class: com.google.android.gms.internal.ads.zzehn
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((com.google.android.gms.ads.internal.client.zzci) obj).b();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void n(zzbud zzbudVar, String str, String str2) {
    }

    public final void o(com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
        this.f16698r.set(zzbkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final void p() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10223f9)).booleanValue()) {
            zzevh.a(this.f16695o, zzeht.f16686a);
        }
        zzevh.a(this.f16699s, new zzevg() { // from class: com.google.android.gms.internal.ads.zzehu
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((com.google.android.gms.ads.internal.client.zzci) obj).zzb();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final void q() {
        zzevh.a(this.f16695o, new zzevg() { // from class: com.google.android.gms.internal.ads.zzehk
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).i();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void r() {
    }

    @Override // com.google.android.gms.internal.ads.zzcxj
    public final void t0(zzbtn zzbtnVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzcur
    public final void v(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzevh.a(this.f16695o, new zzevg() { // from class: com.google.android.gms.internal.ads.zzehv
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).A(zzeVar);
            }
        });
        zzevh.a(this.f16695o, new zzevg() { // from class: com.google.android.gms.internal.ads.zzehw
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).F(zzeVar.f5841o);
            }
        });
        zzevh.a(this.f16698r, new zzevg() { // from class: com.google.android.gms.internal.ads.zzehx
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((com.google.android.gms.ads.internal.client.zzbk) obj).b1(zzeVar);
            }
        });
        this.f16700t.set(false);
        this.f16704x.clear();
    }

    public final void w(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        this.f16697q.set(zzdgVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void w0() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10223f9)).booleanValue()) {
            return;
        }
        zzevh.a(this.f16695o, zzeht.f16686a);
    }
}
