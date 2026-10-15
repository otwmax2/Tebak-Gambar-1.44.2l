package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzapp;
import com.google.android.gms.internal.ads.zzaps;
import com.google.android.gms.internal.ads.zzapv;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbyt;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzbzg;
import com.google.android.gms.internal.ads.zzbzn;
import com.google.android.gms.internal.ads.zzfhp;
import com.google.android.gms.internal.ads.zzfir;
import com.google.android.gms.internal.ads.zzfjl;
import com.vungle.mediation.BuildConfig;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzi implements Runnable, zzaps {
    private final boolean A;
    private int C;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @VisibleForTesting
    protected boolean f6216r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final boolean f6217s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final boolean f6218t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Executor f6219u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zzfhp f6220v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Context f6221w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Context f6222x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private zzbzg f6223y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final zzbzg f6224z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final List f6213o = new Vector();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final AtomicReference f6214p = new AtomicReference();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final AtomicReference f6215q = new AtomicReference();
    final CountDownLatch B = new CountDownLatch(1);

    public zzi(Context context, zzbzg zzbzgVar) {
        this.f6221w = context;
        this.f6222x = context;
        this.f6223y = zzbzgVar;
        this.f6224z = zzbzgVar;
        ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool();
        this.f6219u = executorServiceNewCachedThreadPool;
        boolean zBooleanValue = ((Boolean) zzba.c().b(zzbar.X1)).booleanValue();
        this.A = zBooleanValue;
        this.f6220v = zzfhp.a(context, executorServiceNewCachedThreadPool, zBooleanValue);
        this.f6217s = ((Boolean) zzba.c().b(zzbar.T1)).booleanValue();
        this.f6218t = ((Boolean) zzba.c().b(zzbar.Y1)).booleanValue();
        if (((Boolean) zzba.c().b(zzbar.W1)).booleanValue()) {
            this.C = 2;
        } else {
            this.C = 1;
        }
        if (!((Boolean) zzba.c().b(zzbar.X2)).booleanValue()) {
            this.f6216r = k();
        }
        if (((Boolean) zzba.c().b(zzbar.Q2)).booleanValue()) {
            zzbzn.f11614a.execute(this);
            return;
        }
        zzay.b();
        if (zzbyt.A()) {
            zzbzn.f11614a.execute(this);
        } else {
            run();
        }
    }

    private final zzaps n() {
        return m() == 2 ? (zzaps) this.f6215q.get() : (zzaps) this.f6214p.get();
    }

    private final void o() {
        zzaps zzapsVarN = n();
        if (this.f6213o.isEmpty() || zzapsVarN == null) {
            return;
        }
        for (Object[] objArr : this.f6213o) {
            int length = objArr.length;
            if (length == 1) {
                zzapsVarN.f((MotionEvent) objArr[0]);
            } else if (length == 3) {
                zzapsVarN.d(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
            }
        }
        this.f6213o.clear();
    }

    private final void p(boolean z10) {
        this.f6214p.set(zzapv.y(this.f6223y.f11605o, q(this.f6221w), z10, this.C));
    }

    private static final Context q(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final void a(View view) {
        zzaps zzapsVarN = n();
        if (zzapsVarN != null) {
            zzapsVarN.a(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final void b(StackTraceElement[] stackTraceElementArr) {
        zzaps zzapsVarN;
        if (!l() || (zzapsVarN = n()) == null) {
            return;
        }
        zzapsVarN.b(stackTraceElementArr);
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final String c(Context context) {
        zzaps zzapsVarN;
        if (!l() || (zzapsVarN = n()) == null) {
            return BuildConfig.FLAVOR;
        }
        o();
        return zzapsVarN.c(q(context));
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final void d(int i10, int i11, int i12) {
        zzaps zzapsVarN = n();
        if (zzapsVarN == null) {
            this.f6213o.add(new Object[]{Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12)});
        } else {
            o();
            zzapsVarN.d(i10, i11, i12);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final String e(Context context, String str, View view, Activity activity) {
        if (!l()) {
            return BuildConfig.FLAVOR;
        }
        zzaps zzapsVarN = n();
        if (((Boolean) zzba.c().b(zzbar.f10168a9)).booleanValue()) {
            zzt.r();
            com.google.android.gms.ads.internal.util.zzs.f(view, 4, null);
        }
        if (zzapsVarN == null) {
            return BuildConfig.FLAVOR;
        }
        o();
        return zzapsVarN.e(q(context), str, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final void f(MotionEvent motionEvent) {
        zzaps zzapsVarN = n();
        if (zzapsVarN == null) {
            this.f6213o.add(new Object[]{motionEvent});
        } else {
            o();
            zzapsVarN.f(motionEvent);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final String g(Context context, View view, Activity activity) {
        if (!((Boolean) zzba.c().b(zzbar.Z8)).booleanValue()) {
            zzaps zzapsVarN = n();
            if (((Boolean) zzba.c().b(zzbar.f10168a9)).booleanValue()) {
                zzt.r();
                com.google.android.gms.ads.internal.util.zzs.f(view, 2, null);
            }
            return zzapsVarN != null ? zzapsVarN.g(context, view, activity) : BuildConfig.FLAVOR;
        }
        if (!l()) {
            return BuildConfig.FLAVOR;
        }
        zzaps zzapsVarN2 = n();
        if (((Boolean) zzba.c().b(zzbar.f10168a9)).booleanValue()) {
            zzt.r();
            com.google.android.gms.ads.internal.util.zzs.f(view, 2, null);
        }
        return zzapsVarN2 != null ? zzapsVarN2.g(context, view, activity) : BuildConfig.FLAVOR;
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final String h(Context context, String str, View view) {
        return e(context, str, view, null);
    }

    final /* synthetic */ void j(boolean z10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            zzapp.i(this.f6224z.f11605o, q(this.f6222x), z10, this.A).p();
        } catch (NullPointerException e10) {
            this.f6220v.c(2027, System.currentTimeMillis() - jCurrentTimeMillis, e10);
        }
    }

    protected final boolean k() {
        Context context = this.f6221w;
        zzfhp zzfhpVar = this.f6220v;
        a aVar = new a(this);
        return new zzfjl(this.f6221w, zzfir.b(context, zzfhpVar), aVar, ((Boolean) zzba.c().b(zzbar.U1)).booleanValue()).d(1);
    }

    public final boolean l() {
        try {
            this.B.await();
            return true;
        } catch (InterruptedException e10) {
            zzbza.h("Interrupted during GADSignals creation.", e10);
            return false;
        }
    }

    protected final int m() {
        if (!this.f6217s || this.f6216r) {
            return this.C;
        }
        return 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (((Boolean) zzba.c().b(zzbar.X2)).booleanValue()) {
                this.f6216r = k();
            }
            boolean z10 = this.f6223y.f11608r;
            final boolean z11 = false;
            if (!((Boolean) zzba.c().b(zzbar.Q0)).booleanValue() && z10) {
                z11 = true;
            }
            if (m() == 1) {
                p(z11);
                if (this.C == 2) {
                    this.f6219u.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.zzg
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f6211o.j(z11);
                        }
                    });
                }
            } else {
                long jCurrentTimeMillis = System.currentTimeMillis();
                try {
                    zzapp zzappVarI = zzapp.i(this.f6223y.f11605o, q(this.f6221w), z11, this.A);
                    this.f6215q.set(zzappVarI);
                    if (this.f6218t && !zzappVarI.r()) {
                        this.C = 1;
                        p(z11);
                    }
                } catch (NullPointerException e10) {
                    this.C = 1;
                    p(z11);
                    this.f6220v.c(2031, System.currentTimeMillis() - jCurrentTimeMillis, e10);
                }
            }
        } finally {
            this.B.countDown();
            this.f6221w = null;
            this.f6223y = null;
        }
    }
}
