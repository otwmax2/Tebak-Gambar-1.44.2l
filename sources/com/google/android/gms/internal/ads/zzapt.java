package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzapt implements zzaps {
    protected static volatile zzaqx I;
    protected float A;
    protected float B;
    protected float C;
    protected float D;
    protected DisplayMetrics G;
    protected zzaqp H;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected MotionEvent f9690o;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected double f9699x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private double f9700y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private double f9701z;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected final LinkedList f9691p = new LinkedList();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected long f9692q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected long f9693r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected long f9694s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected long f9695t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected long f9696u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected long f9697v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected long f9698w = 0;
    private boolean E = false;
    protected boolean F = false;

    protected zzapt(Context context) {
        try {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.O2)).booleanValue()) {
                zzaol.d();
            } else {
                zzaqz.a(I);
            }
            this.G = context.getResources().getDisplayMetrics();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10304n2)).booleanValue()) {
                this.H = new zzaqp();
            }
        } catch (Throwable unused) {
        }
    }

    private final void n() {
        this.f9696u = 0L;
        this.f9692q = 0L;
        this.f9693r = 0L;
        this.f9694s = 0L;
        this.f9695t = 0L;
        this.f9697v = 0L;
        this.f9698w = 0L;
        if (this.f9691p.size() > 0) {
            Iterator it = this.f9691p.iterator();
            while (it.hasNext()) {
                ((MotionEvent) it.next()).recycle();
            }
            this.f9691p.clear();
        } else {
            MotionEvent motionEvent = this.f9690o;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        }
        this.f9690o = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00fd A[Catch: Exception -> 0x0103, TRY_LEAVE, TryCatch #3 {Exception -> 0x0103, blocks: (B:47:0x00bc, B:50:0x00c9, B:58:0x00eb, B:59:0x00fd), top: B:79:0x00bc }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00bc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.lang.String o(android.content.Context r20, java.lang.String r21, int r22, android.view.View r23, android.app.Activity r24, byte[] r25) {
        /*
            Method dump skipped, instruction units count: 303
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzapt.o(android.content.Context, java.lang.String, int, android.view.View, android.app.Activity, byte[]):java.lang.String");
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public void a(View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final void b(StackTraceElement[] stackTraceElementArr) {
        zzaqp zzaqpVar;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10304n2)).booleanValue() || (zzaqpVar = this.H) == null) {
            return;
        }
        zzaqpVar.b(Arrays.asList(stackTraceElementArr));
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final String c(Context context) {
        if (zzarb.f()) {
            throw new IllegalStateException("The caller must not be called from the UI thread.");
        }
        return o(context, null, 1, null, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final synchronized void d(int i10, int i11, int i12) {
        if (this.f9690o != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10194d2)).booleanValue()) {
                n();
            } else {
                this.f9690o.recycle();
            }
        }
        DisplayMetrics displayMetrics = this.G;
        if (displayMetrics != null) {
            float f10 = displayMetrics.density;
            this.f9690o = MotionEvent.obtain(0L, i12, 1, i10 * f10, i11 * f10, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        } else {
            this.f9690o = null;
        }
        this.F = false;
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final String e(Context context, String str, View view, Activity activity) {
        return o(context, str, 3, view, activity, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final synchronized void f(MotionEvent motionEvent) {
        Long l10;
        if (this.E) {
            n();
            this.E = false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f9699x = 0.0d;
            this.f9700y = motionEvent.getRawX();
            this.f9701z = motionEvent.getRawY();
        } else if (action == 1 || action == 2) {
            double rawX = motionEvent.getRawX();
            double rawY = motionEvent.getRawY();
            double d10 = this.f9700y;
            Double.isNaN(rawX);
            double d11 = rawX - d10;
            double d12 = this.f9701z;
            Double.isNaN(rawY);
            double d13 = rawY - d12;
            this.f9699x += Math.sqrt((d11 * d11) + (d13 * d13));
            this.f9700y = rawX;
            this.f9701z = rawY;
        }
        int action2 = motionEvent.getAction();
        if (action2 != 0) {
            try {
                if (action2 == 1) {
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    this.f9690o = motionEventObtain;
                    this.f9691p.add(motionEventObtain);
                    if (this.f9691p.size() > 6) {
                        ((MotionEvent) this.f9691p.remove()).recycle();
                    }
                    this.f9694s++;
                    this.f9696u = i(new Throwable().getStackTrace());
                } else if (action2 == 2) {
                    this.f9693r += (long) (motionEvent.getHistorySize() + 1);
                    zzara zzaraVarM = m(motionEvent);
                    Long l11 = zzaraVarM.f9781e;
                    if (l11 != null && zzaraVarM.f9784h != null) {
                        this.f9697v += l11.longValue() + zzaraVarM.f9784h.longValue();
                    }
                    if (this.G != null && (l10 = zzaraVarM.f9782f) != null && zzaraVarM.f9785i != null) {
                        this.f9698w += l10.longValue() + zzaraVarM.f9785i.longValue();
                    }
                } else if (action2 == 3) {
                    this.f9695t++;
                }
            } catch (zzaqn unused) {
            }
        } else {
            this.A = motionEvent.getX();
            this.B = motionEvent.getY();
            this.C = motionEvent.getRawX();
            this.D = motionEvent.getRawY();
            this.f9692q++;
        }
        this.F = true;
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final String g(Context context, View view, Activity activity) {
        return o(context, null, 2, view, activity, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaps
    public final String h(Context context, String str, View view) {
        return o(context, str, 3, view, null, null);
    }

    protected abstract long i(StackTraceElement[] stackTraceElementArr) throws zzaqn;

    protected abstract zzamv j(Context context, View view, Activity activity);

    protected abstract zzamv k(Context context, zzamo zzamoVar);

    protected abstract zzamv l(Context context, View view, Activity activity);

    protected abstract zzara m(MotionEvent motionEvent) throws zzaqn;
}
