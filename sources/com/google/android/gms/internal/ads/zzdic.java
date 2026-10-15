package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.facebook.appevents.AppEventsConstants;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdic {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdmq f14797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdlf f14798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ViewTreeObserver.OnScrollChangedListener f14799c = null;

    public zzdic(zzdmq zzdmqVar, zzdlf zzdlfVar) {
        this.f14797a = zzdmqVar;
        this.f14798b = zzdlfVar;
    }

    private static final int f(Context context, String str, int i10) {
        try {
            i10 = Integer.parseInt(str);
        } catch (NumberFormatException unused) {
        }
        com.google.android.gms.ads.internal.client.zzay.b();
        return zzbyt.D(context, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View a(final View view, final WindowManager windowManager) throws zzcet {
        zzcei zzceiVarA = this.f14797a.a(com.google.android.gms.ads.internal.client.zzq.X3(), null, null);
        View view2 = (View) zzceiVarA;
        view2.setVisibility(4);
        view2.setContentDescription("policy_validator");
        zzceiVarA.c0("/sendMessageToSdk", new zzbhp() { // from class: com.google.android.gms.internal.ads.zzdhy
            @Override // com.google.android.gms.internal.ads.zzbhp
            public final void a(Object obj, Map map) {
                this.f14789a.b((zzcei) obj, map);
            }
        });
        zzceiVarA.c0("/hideValidatorOverlay", new zzbhp() { // from class: com.google.android.gms.internal.ads.zzdhz
            @Override // com.google.android.gms.internal.ads.zzbhp
            public final void a(Object obj, Map map) {
                this.f14790a.c(windowManager, view, (zzcei) obj, map);
            }
        });
        zzceiVarA.c0("/open", new zzbhz(null, null, null, null, null));
        this.f14798b.j(new WeakReference(zzceiVarA), "/loadNativeAdPolicyViolations", new zzbhp() { // from class: com.google.android.gms.internal.ads.zzdia
            @Override // com.google.android.gms.internal.ads.zzbhp
            public final void a(Object obj, Map map) {
                this.f14793a.e(view, windowManager, (zzcei) obj, map);
            }
        });
        this.f14798b.j(new WeakReference(zzceiVarA), "/showValidatorOverlay", new zzbhp() { // from class: com.google.android.gms.internal.ads.zzdib
            @Override // com.google.android.gms.internal.ads.zzbhp
            public final void a(Object obj, Map map) {
                zzbza.b("Show native ad policy validator overlay.");
                ((zzcei) obj).L().setVisibility(0);
            }
        });
        return (View) zzceiVarA;
    }

    final /* synthetic */ void b(zzcei zzceiVar, Map map) {
        this.f14798b.g("sendMessageToNativeJs", map);
    }

    final /* synthetic */ void c(WindowManager windowManager, View view, zzcei zzceiVar, Map map) {
        zzbza.b("Hide native ad policy validator overlay.");
        zzceiVar.L().setVisibility(8);
        if (zzceiVar.L().getWindowToken() != null) {
            windowManager.removeView(zzceiVar.L());
        }
        zzceiVar.destroy();
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (this.f14799c == null || viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            return;
        }
        viewTreeObserver.removeOnScrollChangedListener(this.f14799c);
    }

    final /* synthetic */ void d(Map map, boolean z10) {
        HashMap map2 = new HashMap();
        map2.put("messageType", "validatorHtmlLoaded");
        map2.put("id", (String) map.get("id"));
        this.f14798b.g("sendMessageToNativeJs", map2);
    }

    final /* synthetic */ void e(final View view, final WindowManager windowManager, final zzcei zzceiVar, final Map map) {
        zzceiVar.J().n0(new zzcft() { // from class: com.google.android.gms.internal.ads.zzdhw
            @Override // com.google.android.gms.internal.ads.zzcft
            public final void S(boolean z10) {
                this.f14781o.d(map, z10);
            }
        });
        if (map == null) {
            return;
        }
        Context context = view.getContext();
        int iF = f(context, (String) map.get("validator_width"), ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10386u7)).intValue());
        int iF2 = f(context, (String) map.get("validator_height"), ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10397v7)).intValue());
        int iF3 = f(context, (String) map.get("validator_x"), 0);
        int iF4 = f(context, (String) map.get("validator_y"), 0);
        zzceiVar.C0(zzcfx.b(iF, iF2));
        try {
            zzceiVar.V().getSettings().setUseWideViewPort(((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10408w7)).booleanValue());
            zzceiVar.V().getSettings().setLoadWithOverviewMode(((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10419x7)).booleanValue());
        } catch (NullPointerException unused) {
        }
        final WindowManager.LayoutParams layoutParamsB = com.google.android.gms.ads.internal.util.zzbx.b();
        layoutParamsB.x = iF3;
        layoutParamsB.y = iF4;
        windowManager.updateViewLayout(zzceiVar.L(), layoutParamsB);
        final String str = (String) map.get("orientation");
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect)) {
            final int i10 = ((AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(str) || "2".equals(str)) ? rect.bottom : rect.top) - iF4;
            this.f14799c = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.google.android.gms.internal.ads.zzdhx
                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public final void onScrollChanged() {
                    View view2 = view;
                    zzcei zzceiVar2 = zzceiVar;
                    String str2 = str;
                    WindowManager.LayoutParams layoutParams = layoutParamsB;
                    int i11 = i10;
                    WindowManager windowManager2 = windowManager;
                    Rect rect2 = new Rect();
                    if (!view2.getGlobalVisibleRect(rect2) || zzceiVar2.L().getWindowToken() == null) {
                        return;
                    }
                    if (AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(str2) || "2".equals(str2)) {
                        layoutParams.y = rect2.bottom - i11;
                    } else {
                        layoutParams.y = rect2.top - i11;
                    }
                    windowManager2.updateViewLayout(zzceiVar2.L(), layoutParams);
                }
            };
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnScrollChangedListener(this.f14799c);
            }
        }
        String str2 = (String) map.get("overlay_url");
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        zzceiVar.loadUrl(str2);
    }
}
