package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.facebook.appevents.AppEventsConstants;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdhi {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final ImageView.ScaleType f14733k = ImageView.ScaleType.CENTER_INSIDE;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzg f14734a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzeyx f14735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdgn f14736c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzdgi f14737d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzdhu f14738e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzdic f14739f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Executor f14740g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Executor f14741h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzbdl f14742i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzdgf f14743j;

    public zzdhi(com.google.android.gms.ads.internal.util.zzg zzgVar, zzeyx zzeyxVar, zzdgn zzdgnVar, zzdgi zzdgiVar, zzdhu zzdhuVar, zzdic zzdicVar, Executor executor, Executor executor2, zzdgf zzdgfVar) {
        this.f14734a = zzgVar;
        this.f14735b = zzeyxVar;
        this.f14742i = zzeyxVar.f17736i;
        this.f14736c = zzdgnVar;
        this.f14737d = zzdgiVar;
        this.f14738e = zzdhuVar;
        this.f14739f = zzdicVar;
        this.f14740g = executor;
        this.f14741h = executor2;
        this.f14743j = zzdgfVar;
    }

    private static void g(RelativeLayout.LayoutParams layoutParams, int i10) {
        if (i10 == 0) {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        } else if (i10 == 2) {
            layoutParams.addRule(12);
            layoutParams.addRule(11);
        } else if (i10 != 3) {
            layoutParams.addRule(10);
            layoutParams.addRule(11);
        } else {
            layoutParams.addRule(12);
            layoutParams.addRule(9);
        }
    }

    private final boolean h(ViewGroup viewGroup, boolean z10) {
        View viewP = z10 ? this.f14737d.P() : this.f14737d.Q();
        if (viewP == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (viewP.getParent() instanceof ViewGroup) {
            ((ViewGroup) viewP.getParent()).removeView(viewP);
        }
        viewGroup.addView(viewP, ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10360s3)).booleanValue() ? new FrameLayout.LayoutParams(-1, -1, 17) : new FrameLayout.LayoutParams(-2, -2, 17));
        return true;
    }

    final /* synthetic */ void a(ViewGroup viewGroup) {
        zzdgi zzdgiVar = this.f14737d;
        if (zzdgiVar.P() != null) {
            boolean z10 = viewGroup != null;
            if (zzdgiVar.M() == 2 || zzdgiVar.M() == 1) {
                this.f14734a.L0(this.f14735b.f17733f, String.valueOf(zzdgiVar.M()), z10);
            } else if (zzdgiVar.M() == 6) {
                this.f14734a.L0(this.f14735b.f17733f, "2", z10);
                this.f14734a.L0(this.f14735b.f17733f, AppEventsConstants.EVENT_PARAM_VALUE_YES, z10);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x0195  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final /* synthetic */ void b(com.google.android.gms.internal.ads.zzdie r10) {
        /*
            Method dump skipped, instruction units count: 428
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdhi.b(com.google.android.gms.internal.ads.zzdie):void");
    }

    public final void c(zzdie zzdieVar) {
        if (zzdieVar == null || this.f14738e == null || zzdieVar.f() == null || !this.f14736c.g()) {
            return;
        }
        try {
            zzdieVar.f().addView(this.f14738e.a());
        } catch (zzcet e10) {
            com.google.android.gms.ads.internal.util.zze.l("web view can not be obtained", e10);
        }
    }

    public final void d(zzdie zzdieVar) {
        if (zzdieVar == null) {
            return;
        }
        Context context = zzdieVar.c().getContext();
        if (com.google.android.gms.ads.internal.util.zzbx.h(context, this.f14736c.f14664a)) {
            if (!(context instanceof Activity)) {
                zzbza.b("Activity context is needed for policy validator.");
                return;
            }
            if (this.f14739f == null || zzdieVar.f() == null) {
                return;
            }
            try {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                windowManager.addView(this.f14739f.a(zzdieVar.f(), windowManager), com.google.android.gms.ads.internal.util.zzbx.b());
            } catch (zzcet e10) {
                com.google.android.gms.ads.internal.util.zze.l("web view can not be obtained", e10);
            }
        }
    }

    public final void e(final zzdie zzdieVar) {
        this.f14740g.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdhg
            @Override // java.lang.Runnable
            public final void run() {
                this.f14729o.b(zzdieVar);
            }
        });
    }

    public final boolean f(ViewGroup viewGroup) {
        return h(viewGroup, true);
    }
}
