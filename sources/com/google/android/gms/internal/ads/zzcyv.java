package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzcyv implements AppEventListener, OnAdMetadataChangedListener, zzcuo, com.google.android.gms.ads.internal.client.zza, zzcwz, zzcvi, zzcwn, com.google.android.gms.ads.internal.overlay.zzo, zzcve, zzdcc {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcyt f14205o = new zzcyt(this, null);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private zzeib f14206p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private zzeif f14207q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private zzeua f14208r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private zzexf f14209s;

    private static void O(Object obj, zzcyu zzcyuVar) {
        if (obj != null) {
            zzcyuVar.a(obj);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void G(final int i10) {
        O(this.f14208r, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcyf
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzeua) obj).G(i10);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void I() {
        O(this.f14206p, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcxp
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
            }
        });
        O(this.f14209s, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcxq
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzexf) obj).I();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void P0() {
        O(this.f14208r, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcxr
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzeua) obj).P0();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void Q4() {
        O(this.f14208r, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcyh
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcve
    public final void W0(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        O(this.f14209s, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcxs
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzexf) obj).W0(zzeVar);
            }
        });
        O(this.f14206p, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcxt
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzeib) obj).W0(zzeVar);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void X0() {
        O(this.f14208r, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcxo
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
            }
        });
    }

    public final zzcyt a() {
        return this.f14205o;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void b() {
        O(this.f14208r, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcxk
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzeua) obj).b();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwz
    public final void c(final com.google.android.gms.ads.internal.client.zzs zzsVar) {
        O(this.f14206p, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcym
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzeib) obj).c(zzsVar);
            }
        });
        O(this.f14209s, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcyn
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzexf) obj).c(zzsVar);
            }
        });
        O(this.f14208r, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcyo
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzeua) obj).c(zzsVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwn
    public final void e() {
        O(this.f14208r, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcxx
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzeua) obj).e();
            }
        });
    }

    @Override // com.google.android.gms.ads.admanager.AppEventListener
    public final void f(final String str, final String str2) {
        O(this.f14206p, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcxl
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzeib) obj).f(str, str2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void h() {
        O(this.f14206p, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcyd
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzeib) obj).h();
            }
        });
        O(this.f14209s, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcye
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzexf) obj).h();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvi
    public final void j() {
        O(this.f14206p, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcxv
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzeib) obj).j();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void l() {
        O(this.f14206p, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcyg
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzeib) obj).l();
            }
        });
        O(this.f14209s, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcyl
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzexf) obj).l();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void m() {
        O(this.f14206p, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcyq
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzeib) obj).m();
            }
        });
        O(this.f14209s, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcyr
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzexf) obj).m();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void n(final zzbud zzbudVar, final String str, final String str2) {
        O(this.f14206p, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcxu
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
            }
        });
        O(this.f14209s, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcxw
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzexf) obj).n(zzbudVar, str, str2);
            }
        });
    }

    @Override // com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener
    public final void o() {
        O(this.f14209s, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcyc
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzexf) obj).o();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final void p() {
        O(this.f14206p, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcxy
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzeib) obj).p();
            }
        });
        O(this.f14207q, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcxz
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzeif) obj).p();
            }
        });
        O(this.f14209s, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcya
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzexf) obj).p();
            }
        });
        O(this.f14208r, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcyb
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzeua) obj).p();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final void q() {
        O(this.f14206p, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcyi
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzeib) obj).q();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void r() {
        O(this.f14206p, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcxm
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
            }
        });
        O(this.f14209s, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcxn
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzexf) obj).r();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void w0() {
        O(this.f14206p, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcyj
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzeib) obj).w0();
            }
        });
        O(this.f14207q, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcyk
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzeif) obj).w0();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        O(this.f14208r, new zzcyu() { // from class: com.google.android.gms.internal.ads.zzcyp
            @Override // com.google.android.gms.internal.ads.zzcyu
            public final void a(Object obj) {
                ((zzeua) obj).zzb();
            }
        });
    }
}
