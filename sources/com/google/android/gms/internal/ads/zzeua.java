package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeua implements zzcur, zzcwn, zzevq, com.google.android.gms.ads.internal.overlay.zzo, zzcwz, zzcve, zzdcc {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzfaf f17372o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final AtomicReference f17373p = new AtomicReference();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final AtomicReference f17374q = new AtomicReference();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final AtomicReference f17375r = new AtomicReference();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final AtomicReference f17376s = new AtomicReference();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final AtomicReference f17377t = new AtomicReference();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final AtomicReference f17378u = new AtomicReference();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private zzeua f17379v = null;

    public zzeua(zzfaf zzfafVar) {
        this.f17372o = zzfafVar;
    }

    public static zzeua f(zzeua zzeuaVar) {
        zzeua zzeuaVar2 = new zzeua(zzeuaVar.f17372o);
        zzeuaVar2.f17379v = zzeuaVar;
        return zzeuaVar2;
    }

    public final void C(zzavb zzavbVar) {
        this.f17373p.set(zzavbVar);
    }

    public final void D(zzavf zzavfVar) {
        this.f17375r.set(zzavfVar);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void G(final int i10) {
        zzeua zzeuaVar = this.f17379v;
        if (zzeuaVar != null) {
            zzeuaVar.G(i10);
        } else {
            zzevh.a(this.f17377t, new zzevg() { // from class: com.google.android.gms.internal.ads.zzetp
                @Override // com.google.android.gms.internal.ads.zzevg
                public final void a(Object obj) {
                    ((com.google.android.gms.ads.internal.overlay.zzo) obj).G(i10);
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void P0() {
        zzeua zzeuaVar = this.f17379v;
        if (zzeuaVar != null) {
            zzeuaVar.P0();
        } else {
            zzevh.a(this.f17377t, new zzevg() { // from class: com.google.android.gms.internal.ads.zzetq
                @Override // com.google.android.gms.internal.ads.zzevg
                public final void a(Object obj) {
                    ((com.google.android.gms.ads.internal.overlay.zzo) obj).P0();
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void Q4() {
    }

    @Override // com.google.android.gms.internal.ads.zzcve
    public final void W0(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzeua zzeuaVar = this.f17379v;
        if (zzeuaVar != null) {
            zzeuaVar.W0(zzeVar);
        } else {
            zzevh.a(this.f17375r, new zzevg() { // from class: com.google.android.gms.internal.ads.zzetw
                @Override // com.google.android.gms.internal.ads.zzevg
                public final void a(Object obj) throws RemoteException {
                    ((zzavf) obj).L0(zzeVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void X0() {
    }

    @Override // com.google.android.gms.internal.ads.zzevq
    public final void a(zzevq zzevqVar) {
        this.f17379v = (zzeua) zzevqVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void b() {
        zzeua zzeuaVar = this.f17379v;
        if (zzeuaVar != null) {
            zzeuaVar.b();
        } else {
            zzevh.a(this.f17377t, new zzevg() { // from class: com.google.android.gms.internal.ads.zzetx
                @Override // com.google.android.gms.internal.ads.zzevg
                public final void a(Object obj) {
                    ((com.google.android.gms.ads.internal.overlay.zzo) obj).b();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwz
    public final void c(final com.google.android.gms.ads.internal.client.zzs zzsVar) {
        zzeua zzeuaVar = this.f17379v;
        if (zzeuaVar != null) {
            zzeuaVar.c(zzsVar);
        } else {
            zzevh.a(this.f17378u, new zzevg() { // from class: com.google.android.gms.internal.ads.zzeto
                @Override // com.google.android.gms.internal.ads.zzevg
                public final void a(Object obj) throws RemoteException {
                    ((com.google.android.gms.ads.internal.client.zzdg) obj).Z6(zzsVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwn
    public final void e() {
        zzeua zzeuaVar = this.f17379v;
        if (zzeuaVar != null) {
            zzeuaVar.e();
        } else {
            zzevh.a(this.f17376s, new zzevg() { // from class: com.google.android.gms.internal.ads.zzetz
                @Override // com.google.android.gms.internal.ads.zzevg
                public final void a(Object obj) {
                    ((zzcwn) obj).e();
                }
            });
        }
    }

    public final void m() {
        zzeua zzeuaVar = this.f17379v;
        if (zzeuaVar != null) {
            zzeuaVar.m();
            return;
        }
        this.f17372o.a();
        zzevh.a(this.f17374q, new zzevg() { // from class: com.google.android.gms.internal.ads.zzetm
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzavc) obj).zza();
            }
        });
        zzevh.a(this.f17375r, new zzevg() { // from class: com.google.android.gms.internal.ads.zzetn
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzavf) obj).a();
            }
        });
    }

    public final void n(final zzauy zzauyVar) {
        zzeua zzeuaVar = this.f17379v;
        if (zzeuaVar != null) {
            zzeuaVar.n(zzauyVar);
        } else {
            zzevh.a(this.f17373p, new zzevg() { // from class: com.google.android.gms.internal.ads.zzets
                @Override // com.google.android.gms.internal.ads.zzevg
                public final void a(Object obj) throws RemoteException {
                    ((zzavb) obj).s6(zzauyVar);
                }
            });
        }
    }

    public final void o(com.google.android.gms.ads.internal.overlay.zzo zzoVar) {
        this.f17377t.set(zzoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final void p() {
        zzeua zzeuaVar = this.f17379v;
        if (zzeuaVar != null) {
            zzeuaVar.p();
        } else {
            zzevh.a(this.f17375r, new zzevg() { // from class: com.google.android.gms.internal.ads.zzety
                @Override // com.google.android.gms.internal.ads.zzevg
                public final void a(Object obj) throws RemoteException {
                    ((zzavf) obj).zzb();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final void q() {
    }

    @Override // com.google.android.gms.internal.ads.zzcur
    public final void v(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzeua zzeuaVar = this.f17379v;
        if (zzeuaVar != null) {
            zzeuaVar.v(zzeVar);
        } else {
            zzevh.a(this.f17373p, new zzevg() { // from class: com.google.android.gms.internal.ads.zzetl
                @Override // com.google.android.gms.internal.ads.zzevg
                public final void a(Object obj) throws RemoteException {
                    ((zzavb) obj).l8(zzeVar);
                }
            });
            zzevh.a(this.f17373p, new zzevg() { // from class: com.google.android.gms.internal.ads.zzetr
                @Override // com.google.android.gms.internal.ads.zzevg
                public final void a(Object obj) throws RemoteException {
                    ((zzavb) obj).z(zzeVar.f5841o);
                }
            });
        }
    }

    public final void w(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        this.f17378u.set(zzdgVar);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        zzeua zzeuaVar = this.f17379v;
        if (zzeuaVar != null) {
            zzeuaVar.zzb();
            return;
        }
        zzevh.a(this.f17377t, new zzevg() { // from class: com.google.android.gms.internal.ads.zzett
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) {
                ((com.google.android.gms.ads.internal.overlay.zzo) obj).zzb();
            }
        });
        zzevh.a(this.f17375r, new zzevg() { // from class: com.google.android.gms.internal.ads.zzetu
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzavf) obj).c();
            }
        });
        zzevh.a(this.f17375r, new zzevg() { // from class: com.google.android.gms.internal.ads.zzetv
            @Override // com.google.android.gms.internal.ads.zzevg
            public final void a(Object obj) throws RemoteException {
                ((zzavf) obj).b();
            }
        });
    }
}
