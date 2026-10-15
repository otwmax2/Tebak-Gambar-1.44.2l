package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzcax extends FrameLayout implements zzcao {
    private long A;
    private String B;
    private String[] C;
    private Bitmap D;
    private final ImageView E;
    private boolean F;
    private final Integer G;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcbj f11684o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final FrameLayout f11685p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final View f11686q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzbbj f11687r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @VisibleForTesting
    final zzcbl f11688s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final long f11689t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zzcap f11690u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f11691v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f11692w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f11693x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f11694y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f11695z;

    public zzcax(Context context, zzcbj zzcbjVar, int i10, boolean z10, zzbbj zzbbjVar, zzcbi zzcbiVar, Integer num) {
        super(context);
        this.f11684o = zzcbjVar;
        this.f11687r = zzbbjVar;
        FrameLayout frameLayout = new FrameLayout(context);
        this.f11685p = frameLayout;
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        Preconditions.k(zzcbjVar.h());
        zzcaq zzcaqVar = zzcbjVar.h().f6201a;
        zzcap zzccbVar = i10 == 2 ? new zzccb(context, new zzcbk(context, zzcbjVar.k(), zzcbjVar.L0(), zzbbjVar, zzcbjVar.i()), zzcbjVar, z10, zzcaq.a(zzcbjVar), zzcbiVar, num) : new zzcan(context, zzcbjVar, z10, zzcaq.a(zzcbjVar), zzcbiVar, new zzcbk(context, zzcbjVar.k(), zzcbjVar.L0(), zzbbjVar, zzcbjVar.i()), num);
        this.f11690u = zzccbVar;
        this.G = num;
        View view = new View(context);
        this.f11686q = view;
        view.setBackgroundColor(0);
        frameLayout.addView(zzccbVar, new FrameLayout.LayoutParams(-1, -1, 17));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.D)).booleanValue()) {
            frameLayout.addView(view, new FrameLayout.LayoutParams(-1, -1));
            frameLayout.bringChildToFront(view);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.A)).booleanValue()) {
            x();
        }
        this.E = new ImageView(context);
        this.f11689t = ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.F)).longValue();
        boolean zBooleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.C)).booleanValue();
        this.f11694y = zBooleanValue;
        if (zzbbjVar != null) {
            zzbbjVar.d("spinner_used", true != zBooleanValue ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        }
        this.f11688s = new zzcbl(this);
        zzccbVar.u(this);
    }

    private final void s() {
        if (this.f11684o.g() == null || !this.f11692w || this.f11693x) {
            return;
        }
        this.f11684o.g().getWindow().clearFlags(128);
        this.f11692w = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t(String str, String... strArr) {
        HashMap map = new HashMap();
        Integer numV = v();
        if (numV != null) {
            map.put("playerId", numV.toString());
        }
        map.put("event", str);
        String str2 = null;
        for (String str3 : strArr) {
            if (str2 == null) {
                str2 = str3;
            } else {
                map.put(str2, str3);
                str2 = null;
            }
        }
        this.f11684o.v0("onVideoEvent", map);
    }

    private final boolean u() {
        return this.E.getParent() != null;
    }

    final /* synthetic */ void A(boolean z10) {
        t("windowFocusChanged", "hasWindowFocus", String.valueOf(z10));
    }

    public final void B() {
        if (this.f11690u == null) {
            return;
        }
        if (TextUtils.isEmpty(this.B)) {
            t("no_src", new String[0]);
        } else {
            this.f11690u.f(this.B, this.C);
        }
    }

    public final void C() {
        zzcap zzcapVar = this.f11690u;
        if (zzcapVar == null) {
            return;
        }
        zzcapVar.f11674p.d(true);
        zzcapVar.k();
    }

    final void D() {
        zzcap zzcapVar = this.f11690u;
        if (zzcapVar == null) {
            return;
        }
        long jG = zzcapVar.g();
        if (this.f11695z == jG || jG <= 0) {
            return;
        }
        float f10 = jG / 1000.0f;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.G1)).booleanValue()) {
            t("timeupdate", "time", String.valueOf(f10), "totalBytes", String.valueOf(this.f11690u.o()), "qoeCachedBytes", String.valueOf(this.f11690u.m()), "qoeLoadedBytes", String.valueOf(this.f11690u.n()), "droppedFrames", String.valueOf(this.f11690u.h()), "reportTime", String.valueOf(com.google.android.gms.ads.internal.zzt.b().a()));
        } else {
            t("timeupdate", "time", String.valueOf(f10));
        }
        this.f11695z = jG;
    }

    public final void E() {
        zzcap zzcapVar = this.f11690u;
        if (zzcapVar == null) {
            return;
        }
        zzcapVar.q();
    }

    public final void F() {
        zzcap zzcapVar = this.f11690u;
        if (zzcapVar == null) {
            return;
        }
        zzcapVar.r();
    }

    public final void G(int i10) {
        zzcap zzcapVar = this.f11690u;
        if (zzcapVar == null) {
            return;
        }
        zzcapVar.s(i10);
    }

    public final void H(MotionEvent motionEvent) {
        zzcap zzcapVar = this.f11690u;
        if (zzcapVar == null) {
            return;
        }
        zzcapVar.dispatchTouchEvent(motionEvent);
    }

    public final void I(int i10) {
        zzcap zzcapVar = this.f11690u;
        if (zzcapVar == null) {
            return;
        }
        zzcapVar.y(i10);
    }

    public final void J(int i10) {
        zzcap zzcapVar = this.f11690u;
        if (zzcapVar == null) {
            return;
        }
        zzcapVar.z(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcao
    public final void a(int i10, int i11) {
        if (this.f11694y) {
            zzbaj zzbajVar = zzbar.E;
            int iMax = Math.max(i10 / ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).intValue(), 1);
            int iMax2 = Math.max(i11 / ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).intValue(), 1);
            Bitmap bitmap = this.D;
            if (bitmap != null && bitmap.getWidth() == iMax && this.D.getHeight() == iMax2) {
                return;
            }
            this.D = Bitmap.createBitmap(iMax, iMax2, Bitmap.Config.ARGB_8888);
            this.F = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcao
    public final void b() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.I1)).booleanValue()) {
            this.f11688s.b();
        }
        if (this.f11684o.g() != null && !this.f11692w) {
            boolean z10 = (this.f11684o.g().getWindow().getAttributes().flags & 128) != 0;
            this.f11693x = z10;
            if (!z10) {
                this.f11684o.g().getWindow().addFlags(128);
                this.f11692w = true;
            }
        }
        this.f11691v = true;
    }

    @Override // com.google.android.gms.internal.ads.zzcao
    public final void c() {
        if (this.f11690u != null && this.A == 0) {
            t("canplaythrough", "duration", String.valueOf(r0.i() / 1000.0f), "videoWidth", String.valueOf(this.f11690u.l()), "videoHeight", String.valueOf(this.f11690u.j()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcao
    public final void d() {
        t("pause", new String[0]);
        s();
        this.f11691v = false;
    }

    @Override // com.google.android.gms.internal.ads.zzcao
    public final void e() {
        this.f11686q.setVisibility(4);
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcat
            @Override // java.lang.Runnable
            public final void run() {
                this.f11679o.z();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcao
    public final void f() {
        this.f11688s.b();
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new zzcau(this));
    }

    public final void finalize() throws Throwable {
        try {
            this.f11688s.a();
            final zzcap zzcapVar = this.f11690u;
            if (zzcapVar != null) {
                zzbzn.f11618e.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcar
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcapVar.w();
                    }
                });
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcao
    public final void g() {
        if (this.F && this.D != null && !u()) {
            this.E.setImageBitmap(this.D);
            this.E.invalidate();
            this.f11685p.addView(this.E, new FrameLayout.LayoutParams(-1, -1));
            this.f11685p.bringChildToFront(this.E);
        }
        this.f11688s.a();
        this.A = this.f11695z;
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new zzcav(this));
    }

    public final void h(int i10) {
        zzcap zzcapVar = this.f11690u;
        if (zzcapVar == null) {
            return;
        }
        zzcapVar.A(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcao
    public final void i() {
        if (this.f11691v && u()) {
            this.f11685p.removeView(this.E);
        }
        if (this.f11690u == null || this.D == null) {
            return;
        }
        long jB = com.google.android.gms.ads.internal.zzt.b().b();
        if (this.f11690u.getBitmap(this.D) != null) {
            this.F = true;
        }
        long jB2 = com.google.android.gms.ads.internal.zzt.b().b() - jB;
        if (com.google.android.gms.ads.internal.util.zze.m()) {
            com.google.android.gms.ads.internal.util.zze.k("Spinner frame grab took " + jB2 + "ms");
        }
        if (jB2 > this.f11689t) {
            zzbza.g("Spinner frame grab crossed jank threshold! Suspending spinner.");
            this.f11694y = false;
            this.D = null;
            zzbbj zzbbjVar = this.f11687r;
            if (zzbbjVar != null) {
                zzbbjVar.d("spinner_jank", Long.toString(jB2));
            }
        }
    }

    public final void j(int i10) {
        zzcap zzcapVar = this.f11690u;
        if (zzcapVar == null) {
            return;
        }
        zzcapVar.B(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcao
    public final void j1(String str, String str2) {
        t("exception", "what", "ExoPlayerAdapter exception", "extra", str2);
    }

    public final void k(int i10) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.D)).booleanValue()) {
            this.f11685p.setBackgroundColor(i10);
            this.f11686q.setBackgroundColor(i10);
        }
    }

    public final void l(int i10) {
        zzcap zzcapVar = this.f11690u;
        if (zzcapVar == null) {
            return;
        }
        zzcapVar.c(i10);
    }

    public final void m(String str, String[] strArr) {
        this.B = str;
        this.C = strArr;
    }

    @Override // com.google.android.gms.internal.ads.zzcao
    public final void n(String str, String str2) {
        t("error", "what", str, "extra", str2);
    }

    public final void o(int i10, int i11, int i12, int i13) {
        if (com.google.android.gms.ads.internal.util.zze.m()) {
            com.google.android.gms.ads.internal.util.zze.k("Set video bounds to x:" + i10 + ";y:" + i11 + ";w:" + i12 + ";h:" + i13);
        }
        if (i12 == 0 || i13 == 0) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i12, i13);
        layoutParams.setMargins(i10, i11, 0, 0);
        this.f11685p.setLayoutParams(layoutParams);
        requestLayout();
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(final boolean z10) {
        super.onWindowFocusChanged(z10);
        if (z10) {
            this.f11688s.b();
        } else {
            this.f11688s.a();
            this.A = this.f11695z;
        }
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcas
            @Override // java.lang.Runnable
            public final void run() {
                this.f11677o.A(z10);
            }
        });
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzcao
    public final void onWindowVisibilityChanged(int i10) {
        boolean z10;
        super.onWindowVisibilityChanged(i10);
        if (i10 == 0) {
            this.f11688s.b();
            z10 = true;
        } else {
            this.f11688s.a();
            this.A = this.f11695z;
            z10 = false;
        }
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new zzcaw(this, z10));
    }

    public final void p(float f10) {
        zzcap zzcapVar = this.f11690u;
        if (zzcapVar == null) {
            return;
        }
        zzcapVar.f11674p.e(f10);
        zzcapVar.k();
    }

    public final void q(float f10, float f11) {
        zzcap zzcapVar = this.f11690u;
        if (zzcapVar != null) {
            zzcapVar.x(f10, f11);
        }
    }

    public final void r() {
        zzcap zzcapVar = this.f11690u;
        if (zzcapVar == null) {
            return;
        }
        zzcapVar.f11674p.d(false);
        zzcapVar.k();
    }

    public final Integer v() {
        zzcap zzcapVar = this.f11690u;
        return zzcapVar != null ? zzcapVar.f11675q : this.G;
    }

    public final void x() {
        zzcap zzcapVar = this.f11690u;
        if (zzcapVar == null) {
            return;
        }
        TextView textView = new TextView(zzcapVar.getContext());
        Resources resourcesD = com.google.android.gms.ads.internal.zzt.q().d();
        textView.setText(String.valueOf(resourcesD == null ? "AdMob - " : resourcesD.getString(R.string.f5713r)).concat(this.f11690u.p()));
        textView.setTextColor(-65536);
        textView.setBackgroundColor(-256);
        this.f11685p.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
        this.f11685p.bringChildToFront(textView);
    }

    public final void y() {
        this.f11688s.a();
        zzcap zzcapVar = this.f11690u;
        if (zzcapVar != null) {
            zzcapVar.w();
        }
        s();
    }

    final /* synthetic */ void z() {
        t("firstFrameRendered", new String[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzcao
    public final void zza() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.I1)).booleanValue()) {
            this.f11688s.a();
        }
        t("ended", new String[0]);
        s();
    }
}
