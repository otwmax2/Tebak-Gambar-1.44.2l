package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.PointF;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzbzn;
import com.google.android.gms.internal.ads.zzdsb;
import com.google.android.gms.internal.ads.zzdsf;
import com.google.android.gms.internal.ads.zzfuu;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzas {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f6082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdsf f6083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6084c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6085d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6086e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f6087f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f6088g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f6089h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private PointF f6090i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private PointF f6091j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Handler f6092k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Runnable f6093l;

    public zzas(Context context) {
        this.f6088g = 0;
        this.f6093l = new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzar
            @Override // java.lang.Runnable
            public final void run() {
                this.f6081o.g();
            }
        };
        this.f6082a = context;
        this.f6089h = ViewConfiguration.get(context).getScaledTouchSlop();
        com.google.android.gms.ads.internal.zzt.v().b();
        this.f6092k = com.google.android.gms.ads.internal.zzt.v().a();
        this.f6083b = com.google.android.gms.ads.internal.zzt.u().a();
    }

    private final void s(Context context) {
        ArrayList arrayList = new ArrayList();
        int iU = u(arrayList, "None", true);
        final int iU2 = u(arrayList, "Shake", true);
        final int iU3 = u(arrayList, "Flick", true);
        zzdsb zzdsbVar = zzdsb.NONE;
        int iOrdinal = this.f6083b.a().ordinal();
        final int i10 = iOrdinal != 1 ? iOrdinal != 2 ? iU : iU3 : iU2;
        com.google.android.gms.ads.internal.zzt.r();
        AlertDialog.Builder builderG = zzs.g(context);
        final AtomicInteger atomicInteger = new AtomicInteger(i10);
        builderG.setTitle("Setup gesture");
        builderG.setSingleChoiceItems((CharSequence[]) arrayList.toArray(new String[0]), i10, new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzaj
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i11) {
                atomicInteger.set(i11);
            }
        });
        builderG.setNegativeButton("Dismiss", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzak
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i11) {
                this.f6064o.r();
            }
        });
        builderG.setPositiveButton("Save", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzal
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i11) {
                this.f6065o.h(atomicInteger, i10, iU2, iU3, dialogInterface, i11);
            }
        });
        builderG.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.ads.internal.util.zzam
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f6070o.r();
            }
        });
        builderG.create().show();
    }

    private final boolean t(float f10, float f11, float f12, float f13) {
        return Math.abs(this.f6090i.x - f10) < ((float) this.f6089h) && Math.abs(this.f6090i.y - f11) < ((float) this.f6089h) && Math.abs(this.f6091j.x - f12) < ((float) this.f6089h) && Math.abs(this.f6091j.y - f13) < ((float) this.f6089h);
    }

    private static final int u(List list, String str, boolean z10) {
        if (!z10) {
            return -1;
        }
        list.add(str);
        return list.size() - 1;
    }

    final /* synthetic */ void a() {
        s(this.f6082a);
    }

    final /* synthetic */ void b() {
        s(this.f6082a);
    }

    final /* synthetic */ void c(zzfuu zzfuuVar) {
        if (com.google.android.gms.ads.internal.zzt.u().j(this.f6082a, this.f6085d, this.f6086e)) {
            zzfuuVar.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzaf
                @Override // java.lang.Runnable
                public final void run() {
                    this.f6058o.b();
                }
            });
        } else {
            com.google.android.gms.ads.internal.zzt.u().d(this.f6082a, this.f6085d, this.f6086e);
        }
    }

    final /* synthetic */ void d(zzfuu zzfuuVar) {
        if (com.google.android.gms.ads.internal.zzt.u().j(this.f6082a, this.f6085d, this.f6086e)) {
            zzfuuVar.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzaq
                @Override // java.lang.Runnable
                public final void run() {
                    this.f6080o.f();
                }
            });
        } else {
            com.google.android.gms.ads.internal.zzt.u().d(this.f6082a, this.f6085d, this.f6086e);
        }
    }

    final /* synthetic */ void e() {
        com.google.android.gms.ads.internal.zzt.u().c(this.f6082a);
    }

    final /* synthetic */ void f() {
        com.google.android.gms.ads.internal.zzt.u().c(this.f6082a);
    }

    final /* synthetic */ void g() {
        this.f6088g = 4;
        r();
    }

    final /* synthetic */ void h(AtomicInteger atomicInteger, int i10, int i11, int i12, DialogInterface dialogInterface, int i13) {
        if (atomicInteger.get() != i10) {
            if (atomicInteger.get() == i11) {
                this.f6083b.k(zzdsb.SHAKE);
            } else if (atomicInteger.get() == i12) {
                this.f6083b.k(zzdsb.FLICK);
            } else {
                this.f6083b.k(zzdsb.NONE);
            }
        }
        r();
    }

    final /* synthetic */ void i(String str, DialogInterface dialogInterface, int i10) {
        com.google.android.gms.ads.internal.zzt.r();
        zzs.q(this.f6082a, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", str), "Share via"));
    }

    final /* synthetic */ void j(int i10, int i11, int i12, int i13, int i14, DialogInterface dialogInterface, int i15) {
        if (i15 != i10) {
            if (i15 == i11) {
                zzbza.b("Debug mode [Creative Preview] selected.");
                zzbzn.f11614a.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzac
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f6054o.l();
                    }
                });
                return;
            }
            if (i15 == i12) {
                zzbza.b("Debug mode [Troubleshooting] selected.");
                zzbzn.f11614a.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzag
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f6059o.k();
                    }
                });
                return;
            }
            if (i15 == i13) {
                final zzfuu zzfuuVar = zzbzn.f11618e;
                zzfuu zzfuuVar2 = zzbzn.f11614a;
                if (this.f6083b.o()) {
                    zzfuuVar.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzan
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f6071o.e();
                        }
                    });
                    return;
                } else {
                    zzfuuVar2.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzao
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f6072o.d(zzfuuVar);
                        }
                    });
                    return;
                }
            }
            if (i15 == i14) {
                final zzfuu zzfuuVar3 = zzbzn.f11618e;
                zzfuu zzfuuVar4 = zzbzn.f11614a;
                if (this.f6083b.o()) {
                    zzfuuVar3.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzah
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f6060o.a();
                        }
                    });
                    return;
                } else {
                    zzfuuVar4.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzai
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f6061o.c(zzfuuVar3);
                        }
                    });
                    return;
                }
            }
            return;
        }
        if (!(this.f6082a instanceof Activity)) {
            zzbza.f("Can not create dialog without Activity Context");
            return;
        }
        String str = this.f6084c;
        final String str2 = "No debug information";
        if (!TextUtils.isEmpty(str)) {
            Uri uriBuild = new Uri.Builder().encodedQuery(str.replaceAll("\\+", "%20")).build();
            StringBuilder sb = new StringBuilder();
            com.google.android.gms.ads.internal.zzt.r();
            Map mapL = zzs.l(uriBuild);
            for (String str3 : mapL.keySet()) {
                sb.append(str3);
                sb.append(" = ");
                sb.append((String) mapL.get(str3));
                sb.append("\n\n");
            }
            String strTrim = sb.toString().trim();
            if (!TextUtils.isEmpty(strTrim)) {
                str2 = strTrim;
            }
        }
        com.google.android.gms.ads.internal.zzt.r();
        AlertDialog.Builder builderG = zzs.g(this.f6082a);
        builderG.setMessage(str2);
        builderG.setTitle("Ad Information");
        builderG.setPositiveButton("Share", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzad
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface2, int i16) {
                this.f6055o.i(str2, dialogInterface2, i16);
            }
        });
        builderG.setNegativeButton("Close", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzae
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface2, int i16) {
            }
        });
        builderG.create().show();
    }

    final /* synthetic */ void k() {
        zzaw zzawVarU = com.google.android.gms.ads.internal.zzt.u();
        Context context = this.f6082a;
        String str = this.f6085d;
        String str2 = this.f6086e;
        String str3 = this.f6087f;
        boolean zM = zzawVarU.m();
        zzawVarU.h(zzawVarU.j(context, str, str2));
        if (!zzawVarU.m()) {
            zzawVarU.d(context, str, str2);
            return;
        }
        if (!zM && !TextUtils.isEmpty(str3)) {
            zzawVarU.e(context, str2, str3, str);
        }
        zzbza.b("Device is linked for debug signals.");
        zzawVarU.i(context, "The device is successfully linked for troubleshooting.", false, true);
    }

    final /* synthetic */ void l() {
        zzaw zzawVarU = com.google.android.gms.ads.internal.zzt.u();
        Context context = this.f6082a;
        String str = this.f6085d;
        String str2 = this.f6086e;
        if (!zzawVarU.k(context, str, str2)) {
            zzawVarU.i(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
            return;
        }
        if ("2".equals(zzawVarU.f6099f)) {
            zzbza.b("Creative is not pushed for this device.");
            zzawVarU.i(context, "There was no creative pushed from DFP to the device.", false, false);
        } else if (AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(zzawVarU.f6099f)) {
            zzbza.b("The app is not linked for creative preview.");
            zzawVarU.d(context, str, str2);
        } else if (AppEventsConstants.EVENT_PARAM_VALUE_NO.equals(zzawVarU.f6099f)) {
            zzbza.b("Device is linked for in app preview.");
            zzawVarU.i(context, "The device is successfully linked for creative preview.", false, true);
        }
    }

    public final void m(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int historySize = motionEvent.getHistorySize();
        int pointerCount = motionEvent.getPointerCount();
        if (actionMasked == 0) {
            this.f6088g = 0;
            this.f6090i = new PointF(motionEvent.getX(0), motionEvent.getY(0));
            return;
        }
        int i10 = this.f6088g;
        if (i10 == -1) {
            return;
        }
        if (i10 == 0) {
            if (actionMasked == 5) {
                this.f6088g = 5;
                this.f6091j = new PointF(motionEvent.getX(1), motionEvent.getY(1));
                this.f6092k.postDelayed(this.f6093l, ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10273k4)).longValue());
                return;
            }
            return;
        }
        if (i10 == 5) {
            if (pointerCount == 2) {
                if (actionMasked != 2) {
                    return;
                }
                boolean z10 = false;
                for (int i11 = 0; i11 < historySize; i11++) {
                    z10 |= !t(motionEvent.getHistoricalX(0, i11), motionEvent.getHistoricalY(0, i11), motionEvent.getHistoricalX(1, i11), motionEvent.getHistoricalY(1, i11));
                }
                if (t(motionEvent.getX(), motionEvent.getY(), motionEvent.getX(1), motionEvent.getY(1)) && !z10) {
                    return;
                }
            }
            this.f6088g = -1;
            this.f6092k.removeCallbacks(this.f6093l);
        }
    }

    public final void n(String str) {
        this.f6085d = str;
    }

    public final void o(String str) {
        this.f6086e = str;
    }

    public final void p(String str) {
        this.f6084c = str;
    }

    public final void q(String str) {
        this.f6087f = str;
    }

    public final void r() {
        try {
            if (!(this.f6082a instanceof Activity)) {
                zzbza.f("Can not create dialog without Activity Context");
                return;
            }
            String str = "Creative preview (enabled)";
            if (true == TextUtils.isEmpty(com.google.android.gms.ads.internal.zzt.u().b())) {
                str = "Creative preview";
            }
            String str2 = true != com.google.android.gms.ads.internal.zzt.u().m() ? "Troubleshooting" : "Troubleshooting (enabled)";
            ArrayList arrayList = new ArrayList();
            final int iU = u(arrayList, "Ad information", true);
            final int iU2 = u(arrayList, str, true);
            final int iU3 = u(arrayList, str2, true);
            boolean zBooleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10387u8)).booleanValue();
            final int iU4 = u(arrayList, "Open ad inspector", zBooleanValue);
            final int iU5 = u(arrayList, "Ad inspector settings", zBooleanValue);
            com.google.android.gms.ads.internal.zzt.r();
            AlertDialog.Builder builderG = zzs.g(this.f6082a);
            builderG.setTitle("Select a debug mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzap
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    this.f6074o.j(iU, iU2, iU3, iU4, iU5, dialogInterface, i10);
                }
            });
            builderG.create().show();
        } catch (WindowManager.BadTokenException e10) {
            zze.l(BuildConfig.FLAVOR, e10);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("{Dialog: ");
        sb.append(this.f6084c);
        sb.append(",DebugSignal: ");
        sb.append(this.f6087f);
        sb.append(",AFMA Version: ");
        sb.append(this.f6086e);
        sb.append(",Ad Unit ID: ");
        sb.append(this.f6085d);
        sb.append("}");
        return sb.toString();
    }

    public zzas(Context context, String str) {
        this(context);
        this.f6084c = str;
    }
}
