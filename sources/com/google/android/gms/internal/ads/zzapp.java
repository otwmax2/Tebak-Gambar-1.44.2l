package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.vungle.mediation.BuildConfig;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzapp implements zzaps {
    private static zzapp F;
    private volatile boolean C;
    private volatile boolean D;
    private final int E;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f9672o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzfje f9673p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzfjl f9674q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzfjn f9675r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzaqr f9676s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzfhp f9677t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Executor f9678u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zzfjk f9679v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final zzarh f9681x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final zzaqy f9682y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final zzaqp f9683z;
    volatile long A = 0;
    private final Object B = new Object();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final CountDownLatch f9680w = new CountDownLatch(1);

    zzapp(Context context, zzfhp zzfhpVar, zzfje zzfjeVar, zzfjl zzfjlVar, zzfjn zzfjnVar, zzaqr zzaqrVar, Executor executor, zzfhk zzfhkVar, int i10, zzarh zzarhVar, zzaqy zzaqyVar, zzaqp zzaqpVar) {
        this.D = false;
        this.f9672o = context;
        this.f9677t = zzfhpVar;
        this.f9673p = zzfjeVar;
        this.f9674q = zzfjlVar;
        this.f9675r = zzfjnVar;
        this.f9676s = zzaqrVar;
        this.f9678u = executor;
        this.E = i10;
        this.f9681x = zzarhVar;
        this.f9682y = zzaqyVar;
        this.f9683z = zzaqpVar;
        this.D = false;
        this.f9679v = new zzapn(this, zzfhkVar);
    }

    public static synchronized zzapp i(String str, Context context, boolean z10, boolean z11) {
        return j(str, context, Executors.newCachedThreadPool(), z10, z11);
    }

    @Deprecated
    public static synchronized zzapp j(String str, Context context, Executor executor, boolean z10, boolean z11) {
        if (F == null) {
            zzfhq zzfhqVarA = zzfhr.a();
            zzfhqVarA.a(str);
            zzfhqVarA.c(z10);
            zzfhr zzfhrVarD = zzfhqVarA.d();
            zzfhp zzfhpVarA = zzfhp.a(context, executor, z11);
            zzaqa zzaqaVarC = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.T2)).booleanValue() ? zzaqa.c(context) : null;
            zzarh zzarhVarD = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.U2)).booleanValue() ? zzarh.d(context, executor) : null;
            zzaqy zzaqyVar = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10282l2)).booleanValue() ? new zzaqy() : null;
            zzaqp zzaqpVar = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10304n2)).booleanValue() ? new zzaqp() : null;
            zzfii zzfiiVarE = zzfii.e(context, executor, zzfhpVarA, zzfhrVarD);
            zzaqq zzaqqVar = new zzaqq(context);
            zzaqr zzaqrVar = new zzaqr(zzfhrVarD, zzfiiVarE, new zzarf(context, zzaqqVar), zzaqqVar, zzaqaVarC, zzarhVarD, zzaqyVar, zzaqpVar);
            int iB = zzfir.b(context, zzfhpVarA);
            zzfhk zzfhkVar = new zzfhk();
            zzapp zzappVar = new zzapp(context, zzfhpVarA, new zzfje(context, iB), new zzfjl(context, iB, new zzapm(zzfhpVarA), ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.U1)).booleanValue()), new zzfjn(context, zzaqrVar, zzfhpVarA, zzfhkVar), zzaqrVar, executor, zzfhkVar, iB, zzarhVarD, zzaqyVar, zzaqpVar);
            F = zzappVar;
            zzappVar.o();
            F.p();
        }
        return F;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00fb A[Catch: all -> 0x0128, zzgqy -> 0x012a, TRY_ENTER, TRY_LEAVE, TryCatch #0 {zzgqy -> 0x012a, blocks: (B:6:0x0021, B:8:0x0032, B:11:0x0037, B:12:0x0043, B:14:0x0051, B:16:0x005f, B:19:0x006c, B:26:0x009b, B:30:0x00b4, B:36:0x00cd, B:40:0x00df, B:42:0x00e5, B:44:0x00ed, B:45:0x00ef, B:33:0x00be, B:34:0x00c5, B:22:0x0073, B:24:0x0089, B:47:0x00fb, B:49:0x010a, B:51:0x0119), top: B:61:0x0021, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static /* bridge */ /* synthetic */ void n(com.google.android.gms.internal.ads.zzapp r12) {
        /*
            Method dump skipped, instruction units count: 322
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzapp.n(com.google.android.gms.internal.ads.zzapp):void");
    }

    private final void s() {
        zzarh zzarhVar = this.f9681x;
        if (zzarhVar != null) {
            zzarhVar.h();
        }
    }

    private final zzfjd t(int i10) {
        if (zzfir.a(this.E)) {
            return ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S1)).booleanValue() ? this.f9674q.c(1) : this.f9673p.c(1);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final void a(View view) {
        this.f9676s.b(view);
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final void b(StackTraceElement[] stackTraceElementArr) {
        zzaqp zzaqpVar = this.f9683z;
        if (zzaqpVar != null) {
            zzaqpVar.b(Arrays.asList(stackTraceElementArr));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final String c(Context context) {
        s();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10282l2)).booleanValue()) {
            this.f9682y.j();
        }
        p();
        zzfhs zzfhsVarA = this.f9675r.a();
        if (zzfhsVarA == null) {
            return BuildConfig.FLAVOR;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strA = zzfhsVarA.a(context, null);
        this.f9677t.f(5001, System.currentTimeMillis() - jCurrentTimeMillis, strA, null);
        return strA;
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final void d(int i10, int i11, int i12) {
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final String e(Context context, String str, View view, Activity activity) {
        s();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10282l2)).booleanValue()) {
            this.f9682y.i();
        }
        p();
        zzfhs zzfhsVarA = this.f9675r.a();
        if (zzfhsVarA == null) {
            return BuildConfig.FLAVOR;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strC = zzfhsVarA.c(context, null, str, view, activity);
        this.f9677t.f(5000, System.currentTimeMillis() - jCurrentTimeMillis, strC, null);
        return strC;
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final void f(MotionEvent motionEvent) {
        zzfhs zzfhsVarA = this.f9675r.a();
        if (zzfhsVarA != null) {
            try {
                zzfhsVarA.b(null, motionEvent);
            } catch (zzfjm e10) {
                this.f9677t.c(e10.a(), -1L, e10);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final String g(Context context, View view, Activity activity) {
        s();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10282l2)).booleanValue()) {
            this.f9682y.k(context, view);
        }
        p();
        zzfhs zzfhsVarA = this.f9675r.a();
        if (zzfhsVarA == null) {
            return BuildConfig.FLAVOR;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strD = zzfhsVarA.d(context, null, view, activity);
        this.f9677t.f(5002, System.currentTimeMillis() - jCurrentTimeMillis, strD, null);
        return strD;
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final String h(Context context, String str, View view) {
        return e(context, str, view, null);
    }

    final synchronized void o() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        zzfjd zzfjdVarT = t(1);
        if (zzfjdVarT == null) {
            this.f9677t.d(4013, System.currentTimeMillis() - jCurrentTimeMillis);
        } else if (this.f9675r.c(zzfjdVarT)) {
            this.D = true;
            this.f9680w.countDown();
        }
    }

    public final void p() {
        if (this.C) {
            return;
        }
        synchronized (this.B) {
            if (!this.C) {
                if ((System.currentTimeMillis() / 1000) - this.A < 3600) {
                    return;
                }
                zzfjd zzfjdVarB = this.f9675r.b();
                if ((zzfjdVarB == null || zzfjdVarB.d(3600L)) && zzfir.a(this.E)) {
                    this.f9678u.execute(new zzapo(this));
                }
            }
        }
    }

    public final synchronized boolean r() {
        return this.D;
    }
}
