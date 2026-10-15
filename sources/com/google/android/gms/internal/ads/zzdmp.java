package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdmp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzcum f15149a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdca f15150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzcvv f15151c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzcwi f15152d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzcwu f15153e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzczi f15154f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Executor f15155g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzdbw f15156h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzcng f15157i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.zzb f15158j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzbwb f15159k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzapw f15160l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzcyz f15161m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzeaf f15162n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzfff f15163o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzdpi f15164p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzfdk f15165q;

    public zzdmp(zzcum zzcumVar, zzcvv zzcvvVar, zzcwi zzcwiVar, zzcwu zzcwuVar, zzczi zzcziVar, Executor executor, zzdbw zzdbwVar, zzcng zzcngVar, com.google.android.gms.ads.internal.zzb zzbVar, zzbwb zzbwbVar, zzapw zzapwVar, zzcyz zzcyzVar, zzeaf zzeafVar, zzfff zzfffVar, zzdpi zzdpiVar, zzfdk zzfdkVar, zzdca zzdcaVar) {
        this.f15149a = zzcumVar;
        this.f15151c = zzcvvVar;
        this.f15152d = zzcwiVar;
        this.f15153e = zzcwuVar;
        this.f15154f = zzcziVar;
        this.f15155g = executor;
        this.f15156h = zzdbwVar;
        this.f15157i = zzcngVar;
        this.f15158j = zzbVar;
        this.f15159k = zzbwbVar;
        this.f15160l = zzapwVar;
        this.f15161m = zzcyzVar;
        this.f15162n = zzeafVar;
        this.f15163o = zzfffVar;
        this.f15164p = zzdpiVar;
        this.f15165q = zzfdkVar;
        this.f15150b = zzdcaVar;
    }

    public static final zzfut j(zzcei zzceiVar, String str, String str2) {
        final zzbzs zzbzsVar = new zzbzs();
        zzceiVar.J().n0(new zzcft() { // from class: com.google.android.gms.internal.ads.zzdmn
            @Override // com.google.android.gms.internal.ads.zzcft
            public final void S(boolean z10) {
                zzbzs zzbzsVar2 = zzbzsVar;
                if (z10) {
                    zzbzsVar2.c(null);
                } else {
                    zzbzsVar2.d(new Exception("Ad Web View failed to load."));
                }
            }
        });
        zzceiVar.Q0(str, str2, null);
        return zzbzsVar;
    }

    final /* synthetic */ void c() {
        this.f15149a.w0();
    }

    final /* synthetic */ void d(String str, String str2) {
        this.f15154f.m(str, str2);
    }

    final /* synthetic */ void e() {
        this.f15151c.zzb();
    }

    final /* synthetic */ void f(View view) {
        this.f15158j.a();
    }

    final /* synthetic */ void g(zzcei zzceiVar, zzcei zzceiVar2, Map map) {
        this.f15157i.d(zzceiVar);
    }

    final /* synthetic */ boolean h(View view, MotionEvent motionEvent) {
        this.f15158j.a();
        if (view == null) {
            return false;
        }
        view.performClick();
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void i(final zzcei zzceiVar, boolean z10, zzbhr zzbhrVar) {
        zzaps zzapsVarC;
        zzceiVar.J().M0(new com.google.android.gms.ads.internal.client.zza() { // from class: com.google.android.gms.internal.ads.zzdmg
            @Override // com.google.android.gms.ads.internal.client.zza
            public final void w0() {
                this.f15139o.c();
            }
        }, this.f15152d, this.f15153e, new zzbgk() { // from class: com.google.android.gms.internal.ads.zzdmh
            @Override // com.google.android.gms.internal.ads.zzbgk
            public final void m(String str, String str2) {
                this.f15140o.d(str, str2);
            }
        }, new com.google.android.gms.ads.internal.overlay.zzz() { // from class: com.google.android.gms.internal.ads.zzdmi
            @Override // com.google.android.gms.ads.internal.overlay.zzz
            public final void e() {
                this.f15141o.e();
            }
        }, z10, zzbhrVar, this.f15158j, new zzdmo(this), this.f15159k, this.f15162n, this.f15163o, this.f15164p, this.f15165q, null, this.f15150b, null, null);
        zzceiVar.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.gms.internal.ads.zzdmj
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                this.f15142o.h(view, motionEvent);
                return false;
            }
        });
        zzceiVar.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzdmk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f15143o.f(view);
            }
        });
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10260j2)).booleanValue() && (zzapsVarC = this.f15160l.c()) != null) {
            zzapsVarC.a((View) zzceiVar);
        }
        this.f15156h.L0(zzceiVar, this.f15155g);
        this.f15156h.L0(new zzatf() { // from class: com.google.android.gms.internal.ads.zzdml
            @Override // com.google.android.gms.internal.ads.zzatf
            public final void H0(zzate zzateVar) {
                zzcfv zzcfvVarJ = zzceiVar.J();
                Rect rect = zzateVar.f9880d;
                zzcfvVarJ.T0(rect.left, rect.top, false);
            }
        }, this.f15155g);
        this.f15156h.Y0((View) zzceiVar);
        zzceiVar.c0("/trackActiveViewUnit", new zzbhp() { // from class: com.google.android.gms.internal.ads.zzdmm
            @Override // com.google.android.gms.internal.ads.zzbhp
            public final void a(Object obj, Map map) {
                this.f15145a.g(zzceiVar, (zzcei) obj, map);
            }
        });
        this.f15157i.e(zzceiVar);
    }
}
