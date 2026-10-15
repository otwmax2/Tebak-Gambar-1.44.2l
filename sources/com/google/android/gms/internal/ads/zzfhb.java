package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfhb implements zzfgg {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final zzfhb f18199i = new zzfhb();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Handler f18200j = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static Handler f18201k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Runnable f18202l = new zzfgx();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Runnable f18203m = new zzfgy();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f18205b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f18211h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f18204a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f18206c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f18207d = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzfgu f18209f = new zzfgu();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzfgi f18208e = new zzfgi();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzfgv f18210g = new zzfgv(new zzfhe());

    zzfhb() {
    }

    public static zzfhb d() {
        return f18199i;
    }

    static /* bridge */ /* synthetic */ void g(zzfhb zzfhbVar) {
        zzfhbVar.f18205b = 0;
        zzfhbVar.f18207d.clear();
        zzfhbVar.f18206c = false;
        for (zzffo zzffoVar : zzffz.a().b()) {
        }
        zzfhbVar.f18211h = System.nanoTime();
        zzfhbVar.f18209f.i();
        long jNanoTime = System.nanoTime();
        zzfgh zzfghVarA = zzfhbVar.f18208e.a();
        if (zzfhbVar.f18209f.e().size() > 0) {
            for (String str : zzfhbVar.f18209f.e()) {
                JSONObject jSONObjectA = zzfgp.a(0, 0, 0, 0);
                View viewA = zzfhbVar.f18209f.a(str);
                zzfgh zzfghVarB = zzfhbVar.f18208e.b();
                String strC = zzfhbVar.f18209f.c(str);
                if (strC != null) {
                    JSONObject jSONObjectB = zzfghVarB.b(viewA);
                    zzfgp.b(jSONObjectB, str);
                    zzfgp.f(jSONObjectB, strC);
                    zzfgp.c(jSONObjectA, jSONObjectB);
                }
                zzfgp.i(jSONObjectA);
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                zzfhbVar.f18210g.c(jSONObjectA, hashSet, jNanoTime);
            }
        }
        if (zzfhbVar.f18209f.f().size() > 0) {
            JSONObject jSONObjectA2 = zzfgp.a(0, 0, 0, 0);
            zzfhbVar.k(null, zzfghVarA, jSONObjectA2, 1, false);
            zzfgp.i(jSONObjectA2);
            zzfhbVar.f18210g.d(jSONObjectA2, zzfhbVar.f18209f.f(), jNanoTime);
        } else {
            zzfhbVar.f18210g.b();
        }
        zzfhbVar.f18209f.g();
        long jNanoTime2 = System.nanoTime() - zzfhbVar.f18211h;
        if (zzfhbVar.f18204a.size() > 0) {
            for (zzfha zzfhaVar : zzfhbVar.f18204a) {
                TimeUnit.NANOSECONDS.toMillis(jNanoTime2);
                zzfhaVar.zzb();
                if (zzfhaVar instanceof zzfgz) {
                    ((zzfgz) zzfhaVar).zza();
                }
            }
        }
    }

    private final void k(View view, zzfgh zzfghVar, JSONObject jSONObject, int i10, boolean z10) {
        zzfghVar.a(view, jSONObject, this, i10 == 1, z10);
    }

    private static final void l() {
        Handler handler = f18201k;
        if (handler != null) {
            handler.removeCallbacks(f18203m);
            f18201k = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfgg
    public final void a(View view, zzfgh zzfghVar, JSONObject jSONObject, boolean z10) {
        int iK;
        boolean z11;
        if (zzfgs.b(view) != null || (iK = this.f18209f.k(view)) == 3) {
            return;
        }
        JSONObject jSONObjectB = zzfghVar.b(view);
        zzfgp.c(jSONObject, jSONObjectB);
        String strD = this.f18209f.d(view);
        if (strD != null) {
            zzfgp.b(jSONObjectB, strD);
            zzfgp.e(jSONObjectB, Boolean.valueOf(this.f18209f.j(view)));
            this.f18209f.h();
        } else {
            zzfgt zzfgtVarB = this.f18209f.b(view);
            if (zzfgtVarB != null) {
                zzfgp.d(jSONObjectB, zzfgtVarB);
                z11 = true;
            } else {
                z11 = false;
            }
            k(view, zzfghVar, jSONObjectB, iK, z10 || z11);
        }
        this.f18205b++;
    }

    public final void h() {
        l();
    }

    public final void i() {
        if (f18201k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f18201k = handler;
            handler.post(f18202l);
            f18201k.postDelayed(f18203m, 200L);
        }
    }

    public final void j() {
        l();
        this.f18204a.clear();
        f18200j.post(new zzfgw(this));
    }
}
