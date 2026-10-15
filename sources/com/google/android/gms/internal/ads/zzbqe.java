package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.vungle.mediation.BuildConfig;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbqe extends zzbqf implements zzbhp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzcei f11151c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f11152d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final WindowManager f11153e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzbab f11154f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    DisplayMetrics f11155g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f11156h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f11157i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f11158j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f11159k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f11160l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f11161m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f11162n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f11163o;

    public zzbqe(zzcei zzceiVar, Context context, zzbab zzbabVar) {
        super(zzceiVar, BuildConfig.FLAVOR);
        this.f11157i = -1;
        this.f11158j = -1;
        this.f11160l = -1;
        this.f11161m = -1;
        this.f11162n = -1;
        this.f11163o = -1;
        this.f11151c = zzceiVar;
        this.f11152d = context;
        this.f11154f = zzbabVar;
        this.f11153e = (WindowManager) context.getSystemService("window");
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final /* synthetic */ void a(Object obj, Map map) {
        JSONObject jSONObjectPut;
        this.f11155g = new DisplayMetrics();
        Display defaultDisplay = this.f11153e.getDefaultDisplay();
        defaultDisplay.getMetrics(this.f11155g);
        this.f11156h = this.f11155g.density;
        this.f11159k = defaultDisplay.getRotation();
        com.google.android.gms.ads.internal.client.zzay.b();
        DisplayMetrics displayMetrics = this.f11155g;
        this.f11157i = zzbyt.B(displayMetrics, displayMetrics.widthPixels);
        com.google.android.gms.ads.internal.client.zzay.b();
        DisplayMetrics displayMetrics2 = this.f11155g;
        this.f11158j = zzbyt.B(displayMetrics2, displayMetrics2.heightPixels);
        Activity activityG = this.f11151c.g();
        if (activityG == null || activityG.getWindow() == null) {
            this.f11160l = this.f11157i;
            this.f11161m = this.f11158j;
        } else {
            com.google.android.gms.ads.internal.zzt.r();
            int[] iArrN = com.google.android.gms.ads.internal.util.zzs.n(activityG);
            com.google.android.gms.ads.internal.client.zzay.b();
            this.f11160l = zzbyt.B(this.f11155g, iArrN[0]);
            com.google.android.gms.ads.internal.client.zzay.b();
            this.f11161m = zzbyt.B(this.f11155g, iArrN[1]);
        }
        if (this.f11151c.M().i()) {
            this.f11162n = this.f11157i;
            this.f11163o = this.f11158j;
        } else {
            this.f11151c.measure(0, 0);
        }
        e(this.f11157i, this.f11158j, this.f11160l, this.f11161m, this.f11156h, this.f11159k);
        zzbqd zzbqdVar = new zzbqd();
        zzbab zzbabVar = this.f11154f;
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        zzbqdVar.e(zzbabVar.a(intent));
        zzbab zzbabVar2 = this.f11154f;
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(Uri.parse("sms:"));
        zzbqdVar.c(zzbabVar2.a(intent2));
        zzbqdVar.a(this.f11154f.b());
        zzbqdVar.d(this.f11154f.c());
        zzbqdVar.b(true);
        boolean z10 = zzbqdVar.f11146a;
        boolean z11 = zzbqdVar.f11147b;
        boolean z12 = zzbqdVar.f11148c;
        boolean z13 = zzbqdVar.f11149d;
        boolean z14 = zzbqdVar.f11150e;
        zzcei zzceiVar = this.f11151c;
        try {
            jSONObjectPut = new JSONObject().put("sms", z10).put("tel", z11).put("calendar", z12).put("storePicture", z13).put("inlineVideo", z14);
        } catch (JSONException e10) {
            zzbza.e("Error occurred while obtaining the MRAID capabilities.", e10);
            jSONObjectPut = null;
        }
        zzceiVar.w("onDeviceFeaturesReceived", jSONObjectPut);
        int[] iArr = new int[2];
        this.f11151c.getLocationOnScreen(iArr);
        h(com.google.android.gms.ads.internal.client.zzay.b().g(this.f11152d, iArr[0]), com.google.android.gms.ads.internal.client.zzay.b().g(this.f11152d, iArr[1]));
        if (zzbza.j(2)) {
            zzbza.f("Dispatching Ready Event.");
        }
        d(this.f11151c.k().f11605o);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006f A[PHI: r2
      0x006f: PHI (r2v4 int) = (r2v3 int), (r2v8 int) binds: [B:11:0x0046, B:17:0x005c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void h(int r7, int r8) {
        /*
            r6 = this;
            android.content.Context r0 = r6.f11152d
            boolean r0 = r0 instanceof android.app.Activity
            r1 = 0
            if (r0 == 0) goto L15
            com.google.android.gms.ads.internal.zzt.r()
            android.content.Context r0 = r6.f11152d
            android.app.Activity r0 = (android.app.Activity) r0
            int[] r0 = com.google.android.gms.ads.internal.util.zzs.o(r0)
            r0 = r0[r1]
            goto L16
        L15:
            r0 = 0
        L16:
            com.google.android.gms.internal.ads.zzcei r2 = r6.f11151c
            com.google.android.gms.internal.ads.zzcfx r2 = r2.M()
            if (r2 == 0) goto L2a
            com.google.android.gms.internal.ads.zzcei r2 = r6.f11151c
            com.google.android.gms.internal.ads.zzcfx r2 = r2.M()
            boolean r2 = r2.i()
            if (r2 != 0) goto L88
        L2a:
            com.google.android.gms.internal.ads.zzcei r2 = r6.f11151c
            int r2 = r2.getWidth()
            com.google.android.gms.internal.ads.zzcei r3 = r6.f11151c
            int r3 = r3.getHeight()
            com.google.android.gms.internal.ads.zzbaj r4 = com.google.android.gms.internal.ads.zzbar.P
            com.google.android.gms.internal.ads.zzbap r5 = com.google.android.gms.ads.internal.client.zzba.c()
            java.lang.Object r4 = r5.b(r4)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L6f
            if (r2 != 0) goto L5c
            com.google.android.gms.internal.ads.zzcei r2 = r6.f11151c
            com.google.android.gms.internal.ads.zzcfx r2 = r2.M()
            if (r2 == 0) goto L5b
            com.google.android.gms.internal.ads.zzcei r2 = r6.f11151c
            com.google.android.gms.internal.ads.zzcfx r2 = r2.M()
            int r2 = r2.f12127c
            goto L5c
        L5b:
            r2 = 0
        L5c:
            if (r3 != 0) goto L6f
            com.google.android.gms.internal.ads.zzcei r3 = r6.f11151c
            com.google.android.gms.internal.ads.zzcfx r3 = r3.M()
            if (r3 == 0) goto L70
            com.google.android.gms.internal.ads.zzcei r1 = r6.f11151c
            com.google.android.gms.internal.ads.zzcfx r1 = r1.M()
            int r1 = r1.f12126b
            goto L70
        L6f:
            r1 = r3
        L70:
            com.google.android.gms.internal.ads.zzbyt r3 = com.google.android.gms.ads.internal.client.zzay.b()
            android.content.Context r4 = r6.f11152d
            int r2 = r3.g(r4, r2)
            r6.f11162n = r2
            com.google.android.gms.internal.ads.zzbyt r2 = com.google.android.gms.ads.internal.client.zzay.b()
            android.content.Context r3 = r6.f11152d
            int r1 = r2.g(r3, r1)
            r6.f11163o = r1
        L88:
            int r0 = r8 - r0
            int r1 = r6.f11162n
            int r2 = r6.f11163o
            r6.b(r7, r0, r1, r2)
            com.google.android.gms.internal.ads.zzcei r0 = r6.f11151c
            com.google.android.gms.internal.ads.zzcfv r0 = r0.J()
            r0.V0(r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbqe.h(int, int):void");
    }
}
