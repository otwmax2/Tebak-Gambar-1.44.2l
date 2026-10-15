package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzdih implements zzdgq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbnu f14806a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcvg f14807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzcum f14808c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzdca f14809d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f14810e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzeyc f14811f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzbzg f14812g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzeyx f14813h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f14814i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f14815j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f14816k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzbnq f14817l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzbnr f14818m;

    public zzdih(zzbnq zzbnqVar, zzbnr zzbnrVar, zzbnu zzbnuVar, zzcvg zzcvgVar, zzcum zzcumVar, zzdca zzdcaVar, Context context, zzeyc zzeycVar, zzbzg zzbzgVar, zzeyx zzeyxVar, byte[] bArr) {
        this.f14817l = zzbnqVar;
        this.f14818m = zzbnrVar;
        this.f14806a = zzbnuVar;
        this.f14807b = zzcvgVar;
        this.f14808c = zzcumVar;
        this.f14809d = zzdcaVar;
        this.f14810e = context;
        this.f14811f = zzeycVar;
        this.f14812g = zzbzgVar;
        this.f14813h = zzeyxVar;
    }

    private final void v(View view) {
        try {
            zzbnu zzbnuVar = this.f14806a;
            if (zzbnuVar != null && !zzbnuVar.B()) {
                this.f14806a.X1(ObjectWrapper.Q4(view));
                this.f14808c.w0();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10223f9)).booleanValue()) {
                    this.f14809d.p();
                    return;
                }
                return;
            }
            zzbnq zzbnqVar = this.f14817l;
            if (zzbnqVar != null && !zzbnqVar.y()) {
                this.f14817l.Wa(ObjectWrapper.Q4(view));
                this.f14808c.w0();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10223f9)).booleanValue()) {
                    this.f14809d.p();
                    return;
                }
                return;
            }
            zzbnr zzbnrVar = this.f14818m;
            if (zzbnrVar == null || zzbnrVar.t()) {
                return;
            }
            this.f14818m.Wa(ObjectWrapper.Q4(view));
            this.f14808c.w0();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10223f9)).booleanValue()) {
                this.f14809d.p();
            }
        } catch (RemoteException e10) {
            zzbza.h("Failed to call handleClick", e10);
        }
    }

    private static final HashMap w(Map map) {
        HashMap map2 = new HashMap();
        if (map == null) {
            return map2;
        }
        synchronized (map) {
            for (Map.Entry entry : map.entrySet()) {
                View view = (View) ((WeakReference) entry.getValue()).get();
                if (view != null) {
                    map2.put((String) entry.getKey(), view);
                }
            }
        }
        return map2;
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final boolean B() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final boolean R() {
        return this.f14811f.M;
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void a(View view, MotionEvent motionEvent, View view2) {
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void b(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        try {
            if (!this.f14814i) {
                this.f14814i = com.google.android.gms.ads.internal.zzt.u().n(this.f14810e, this.f14812g.f11605o, this.f14811f.D.toString(), this.f14813h.f17733f);
            }
            if (this.f14816k) {
                zzbnu zzbnuVar = this.f14806a;
                if (zzbnuVar != null && !zzbnuVar.R()) {
                    this.f14806a.y();
                    this.f14807b.zza();
                    return;
                }
                zzbnq zzbnqVar = this.f14817l;
                if (zzbnqVar != null && !zzbnqVar.E()) {
                    this.f14817l.x();
                    this.f14807b.zza();
                    return;
                }
                zzbnr zzbnrVar = this.f14818m;
                if (zzbnrVar == null || zzbnrVar.C()) {
                    return;
                }
                this.f14818m.p();
                this.f14807b.zza();
            }
        } catch (RemoteException e10) {
            zzbza.h("Failed to call recordImpression", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void c(View view, Map map) {
        try {
            IObjectWrapper iObjectWrapperQ4 = ObjectWrapper.Q4(view);
            zzbnu zzbnuVar = this.f14806a;
            if (zzbnuVar != null) {
                zzbnuVar.P4(iObjectWrapperQ4);
                return;
            }
            zzbnq zzbnqVar = this.f14817l;
            if (zzbnqVar != null) {
                zzbnqVar.X1(iObjectWrapperQ4);
                return;
            }
            zzbnr zzbnrVar = this.f14818m;
            if (zzbnrVar != null) {
                zzbnrVar.Za(iObjectWrapperQ4);
            }
        } catch (RemoteException e10) {
            zzbza.h("Failed to call untrackView", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final boolean d(Bundle bundle) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void e() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void f() {
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void g() {
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void h(View view) {
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00ce A[Catch: JSONException -> 0x0045, RemoteException -> 0x0124, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0045, blocks: (B:48:0x00b3, B:49:0x00c8, B:51:0x00ce), top: B:72:0x00b3 }] */
    @Override // com.google.android.gms.internal.ads.zzdgq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void i(android.view.View r9, java.util.Map r10, java.util.Map r11, android.view.View.OnTouchListener r12, android.view.View.OnClickListener r13) {
        /*
            Method dump skipped, instruction units count: 299
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdih.i(android.view.View, java.util.Map, java.util.Map, android.view.View$OnTouchListener, android.view.View$OnClickListener):void");
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void j(View view, View view2, Map map, Map map2, boolean z10, ImageView.ScaleType scaleType) {
        if (this.f14815j && this.f14811f.M) {
            return;
        }
        v(view);
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void k(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void l(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final JSONObject m(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void m0(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void n() {
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void o(com.google.android.gms.ads.internal.client.zzcs zzcsVar) {
        zzbza.g("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void p() {
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void q(View view, View view2, Map map, Map map2, boolean z10, ImageView.ScaleType scaleType, int i10) {
        if (!this.f14815j) {
            zzbza.g("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (this.f14811f.M) {
            v(view2);
        } else {
            zzbza.g("Custom click reporting for 3p ads failed. Ad unit id not in allow list.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void r(com.google.android.gms.ads.internal.client.zzcw zzcwVar) {
        zzbza.g("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final JSONObject s(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void t() {
        this.f14815j = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void u(zzbfr zzbfrVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final int zza() {
        return 0;
    }
}
