package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeap implements zzeaq {
    /* JADX WARN: Removed duplicated region for block: B:18:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.android.gms.internal.ads.zzffp e(java.lang.String r4) {
        /*
            int r0 = r4.hashCode()
            r1 = -382745961(0xffffffffe92fc297, float:-1.3280059E25)
            r2 = 2
            r3 = 1
            if (r0 == r1) goto L2a
            r1 = 112202875(0x6b0147b, float:6.6233935E-35)
            if (r0 == r1) goto L20
            r1 = 714893483(0x2a9c68ab, float:2.7783795E-13)
            if (r0 == r1) goto L16
            goto L34
        L16:
            java.lang.String r0 = "nativeDisplay"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L34
            r4 = 1
            goto L35
        L20:
            java.lang.String r0 = "video"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L34
            r4 = 2
            goto L35
        L2a:
            java.lang.String r0 = "htmlDisplay"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L34
            r4 = 0
            goto L35
        L34:
            r4 = -1
        L35:
            if (r4 == 0) goto L43
            if (r4 == r3) goto L40
            if (r4 == r2) goto L3d
            r4 = 0
            return r4
        L3d:
            com.google.android.gms.internal.ads.zzffp r4 = com.google.android.gms.internal.ads.zzffp.VIDEO
            return r4
        L40:
            com.google.android.gms.internal.ads.zzffp r4 = com.google.android.gms.internal.ads.zzffp.NATIVE_DISPLAY
            return r4
        L43:
            com.google.android.gms.internal.ads.zzffp r4 = com.google.android.gms.internal.ads.zzffp.HTML_DISPLAY
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeap.e(java.lang.String):com.google.android.gms.internal.ads.zzffp");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.android.gms.internal.ads.zzffr f(java.lang.String r4) {
        /*
            int r0 = r4.hashCode()
            r1 = -1104128070(0xffffffffbe3057ba, float:-0.17220965)
            r2 = 2
            r3 = 1
            if (r0 == r1) goto L2a
            r1 = 1318088141(0x4e906dcd, float:1.2115575E9)
            if (r0 == r1) goto L20
            r1 = 1988248512(0x768243c0, float:1.3210405E33)
            if (r0 == r1) goto L16
            goto L34
        L16:
            java.lang.String r0 = "onePixel"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L34
            r4 = 2
            goto L35
        L20:
            java.lang.String r0 = "definedByJavascript"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L34
            r4 = 1
            goto L35
        L2a:
            java.lang.String r0 = "beginToRender"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L34
            r4 = 0
            goto L35
        L34:
            r4 = -1
        L35:
            if (r4 == 0) goto L44
            if (r4 == r3) goto L41
            if (r4 == r2) goto L3e
            com.google.android.gms.internal.ads.zzffr r4 = com.google.android.gms.internal.ads.zzffr.UNSPECIFIED
            return r4
        L3e:
            com.google.android.gms.internal.ads.zzffr r4 = com.google.android.gms.internal.ads.zzffr.ONE_PIXEL
            return r4
        L41:
            com.google.android.gms.internal.ads.zzffr r4 = com.google.android.gms.internal.ads.zzffr.DEFINED_BY_JAVASCRIPT
            return r4
        L44:
            com.google.android.gms.internal.ads.zzffr r4 = com.google.android.gms.internal.ads.zzffr.BEGIN_TO_RENDER
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeap.f(java.lang.String):com.google.android.gms.internal.ads.zzffr");
    }

    private static zzffs g(String str) {
        return AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE.equals(str) ? zzffs.NATIVE : "javascript".equals(str) ? zzffs.JAVASCRIPT : zzffs.NONE;
    }

    @Override // com.google.android.gms.internal.ads.zzeaq
    public final IObjectWrapper a(String str, WebView webView, String str2, String str3, String str4, String str5, zzeas zzeasVar, zzear zzearVar, String str6) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.C4)).booleanValue() || !zzffi.b()) {
            return null;
        }
        zzfft zzfftVarA = zzfft.a(str5, str);
        zzffs zzffsVarG = g("javascript");
        zzffs zzffsVarG2 = g(str4);
        zzffp zzffpVarE = e(zzearVar.toString());
        zzffs zzffsVar = zzffs.NONE;
        if (zzffsVarG == zzffsVar) {
            zzbza.g("Omid js session error; Unable to parse impression owner: javascript");
            return null;
        }
        if (zzffpVarE == null) {
            zzbza.g("Omid js session error; Unable to parse creative type: ".concat(String.valueOf(zzearVar)));
            return null;
        }
        if (zzffpVarE == zzffp.VIDEO && zzffsVarG2 == zzffsVar) {
            zzbza.g("Omid js session error; Video events owner unknown for video creative: ".concat(String.valueOf(str4)));
            return null;
        }
        return ObjectWrapper.Q4(zzffk.a(zzffl.a(zzffpVarE, f(zzeasVar.toString()), zzffsVarG, zzffsVarG2, true), zzffm.c(zzfftVarA, webView, str6, BuildConfig.FLAVOR)));
    }

    @Override // com.google.android.gms.internal.ads.zzeaq
    public final void b(IObjectWrapper iObjectWrapper, View view) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.C4)).booleanValue() && zzffi.b()) {
            Object objT1 = ObjectWrapper.t1(iObjectWrapper);
            if (objT1 instanceof zzffk) {
                ((zzffk) objT1).d(view);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeaq
    public final IObjectWrapper c(String str, WebView webView, String str2, String str3, String str4, zzeas zzeasVar, zzear zzearVar, String str5) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.C4)).booleanValue() || !zzffi.b()) {
            return null;
        }
        zzfft zzfftVarA = zzfft.a("Google", str);
        zzffs zzffsVarG = g("javascript");
        zzffp zzffpVarE = e(zzearVar.toString());
        zzffs zzffsVar = zzffs.NONE;
        if (zzffsVarG == zzffsVar) {
            zzbza.g("Omid html session error; Unable to parse impression owner: javascript");
            return null;
        }
        if (zzffpVarE == null) {
            zzbza.g("Omid html session error; Unable to parse creative type: ".concat(String.valueOf(zzearVar)));
            return null;
        }
        zzffs zzffsVarG2 = g(str4);
        if (zzffpVarE == zzffp.VIDEO && zzffsVarG2 == zzffsVar) {
            zzbza.g("Omid html session error; Video events owner unknown for video creative: ".concat(String.valueOf(str4)));
            return null;
        }
        return ObjectWrapper.Q4(zzffk.a(zzffl.a(zzffpVarE, f(zzeasVar.toString()), zzffsVarG, zzffsVarG2, true), zzffm.b(zzfftVarA, webView, str5, BuildConfig.FLAVOR)));
    }

    @Override // com.google.android.gms.internal.ads.zzeaq
    public final boolean d(Context context) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.C4)).booleanValue()) {
            zzbza.g("Omid flag is disabled");
            return false;
        }
        if (zzffi.b()) {
            return true;
        }
        zzffi.a(context);
        return zzffi.b();
    }

    @Override // com.google.android.gms.internal.ads.zzeaq
    public final void x0(IObjectWrapper iObjectWrapper) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.C4)).booleanValue() && zzffi.b()) {
            Object objT1 = ObjectWrapper.t1(iObjectWrapper);
            if (objT1 instanceof zzffk) {
                ((zzffk) objT1).e();
            }
        }
    }
}
