package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzexf implements OnAdMetadataChangedListener, zzcwc, zzcur, zzcuo, zzcve, zzcwz, zzevq, zzdcc {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzfaf f17561o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final AtomicReference f17562p = new AtomicReference();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final AtomicReference f17563q = new AtomicReference();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final AtomicReference f17564r = new AtomicReference();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final AtomicReference f17565s = new AtomicReference();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final AtomicReference f17566t = new AtomicReference();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final AtomicReference f17567u = new AtomicReference();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final AtomicReference f17568v = new AtomicReference();

    public zzexf(zzfaf zzfafVar) {
        this.f17561o = zzfafVar;
    }

    @Deprecated
    public final void C(zzbuj zzbujVar) {
        this.f17565s.set(zzbujVar);
    }

    @Deprecated
    public final void D(zzbue zzbueVar) {
        this.f17567u.set(zzbueVar);
    }

    public final void G(zzbve zzbveVar) {
        this.f17566t.set(zzbveVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void I() {
        zzevh.a(this.f17565s, new zzevg() { // from class: com.google.android.gms.internal.ads.zzewu
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzbuj) obj).j();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcve
    public final void W0(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzevh.a(this.f17564r, new zzevg() { // from class: com.google.android.gms.internal.ads.zzewo
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzbuz) obj).Q8(zzeVar);
            }
        });
        zzevh.a(this.f17564r, new zzevg() { // from class: com.google.android.gms.internal.ads.zzewp
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzbuz) obj).j0(zzeVar.f5841o);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzevq
    public final void a(zzevq zzevqVar) {
        throw null;
    }

    public final void b(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        this.f17562p.set(onAdMetadataChangedListener);
    }

    @Override // com.google.android.gms.internal.ads.zzcwz
    public final void c(final com.google.android.gms.ads.internal.client.zzs zzsVar) {
        zzevh.a(this.f17568v, new zzevg() { // from class: com.google.android.gms.internal.ads.zzewk
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((com.google.android.gms.ads.internal.client.zzdg) obj).Z6(zzsVar);
            }
        });
    }

    public final void e(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        this.f17568v.set(zzdgVar);
    }

    public final void f(zzbuz zzbuzVar) {
        this.f17564r.set(zzbuzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void h() {
        this.f17561o.a();
        zzevh.a(this.f17564r, new zzevg() { // from class: com.google.android.gms.internal.ads.zzewr
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzbuz) obj).e();
            }
        });
        zzevh.a(this.f17565s, new zzevg() { // from class: com.google.android.gms.internal.ads.zzews
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzbuj) obj).c();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwc
    public final void k() {
        zzevh.a(this.f17563q, new zzevg() { // from class: com.google.android.gms.internal.ads.zzewx
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzbvd) obj).e();
            }
        });
        zzevh.a(this.f17565s, new zzevg() { // from class: com.google.android.gms.internal.ads.zzewy
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzbuj) obj).g();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void l() {
        zzevh.a(this.f17565s, new zzevg() { // from class: com.google.android.gms.internal.ads.zzexa
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzbuj) obj).f();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void m() {
        zzevh.a(this.f17564r, new zzevg() { // from class: com.google.android.gms.internal.ads.zzewt
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzbuz) obj).h();
            }
        });
        zzevh.a(this.f17565s, new zzevg() { // from class: com.google.android.gms.internal.ads.zzewv
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzbuj) obj).h();
            }
        });
        zzevh.a(this.f17564r, new zzevg() { // from class: com.google.android.gms.internal.ads.zzeww
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzbuz) obj).c();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void n(final zzbud zzbudVar, final String str, final String str2) {
        zzevh.a(this.f17564r, new zzevg() { // from class: com.google.android.gms.internal.ads.zzexb
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                zzbud zzbudVar2 = zzbudVar;
                ((zzbuz) obj).g8(new zzbvn(zzbudVar2.a(), zzbudVar2.zzb()));
            }
        });
        zzevh.a(this.f17566t, new zzevg() { // from class: com.google.android.gms.internal.ads.zzexc
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                zzbud zzbudVar2 = zzbudVar;
                ((zzbve) obj).A9(new zzbvn(zzbudVar2.a(), zzbudVar2.zzb()), str, str2);
            }
        });
        zzevh.a(this.f17565s, new zzevg() { // from class: com.google.android.gms.internal.ads.zzexd
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzbuj) obj).O2(zzbudVar);
            }
        });
        zzevh.a(this.f17567u, new zzevg() { // from class: com.google.android.gms.internal.ads.zzexe
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzbue) obj).A9(zzbudVar, str, str2);
            }
        });
    }

    @Override // com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener
    public final void o() {
        zzevh.a(this.f17562p, new zzevg() { // from class: com.google.android.gms.internal.ads.zzewz
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) {
                ((OnAdMetadataChangedListener) obj).o();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final void p() {
        zzevh.a(this.f17564r, new zzevg() { // from class: com.google.android.gms.internal.ads.zzewj
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzbuz) obj).b();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final void q() {
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void r() {
        zzevh.a(this.f17565s, new zzevg() { // from class: com.google.android.gms.internal.ads.zzewq
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzbuj) obj).i();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcur
    public final void v(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        final int i10 = zzeVar.f5841o;
        zzevh.a(this.f17563q, new zzevg() { // from class: com.google.android.gms.internal.ads.zzewl
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzbvd) obj).A(zzeVar);
            }
        });
        zzevh.a(this.f17563q, new zzevg() { // from class: com.google.android.gms.internal.ads.zzewm
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzbvd) obj).F(i10);
            }
        });
        zzevh.a(this.f17565s, new zzevg() { // from class: com.google.android.gms.internal.ads.zzewn
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzbuj) obj).w(i10);
            }
        });
    }

    public final void w(zzbvd zzbvdVar) {
        this.f17563q.set(zzbvdVar);
    }
}
