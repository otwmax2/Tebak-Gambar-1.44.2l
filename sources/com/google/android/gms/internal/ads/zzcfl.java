package com.google.android.gms.internal.ads;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.File;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzcfl extends zzcep {
    public zzcfl(zzcei zzceiVar, zzawe zzaweVar, boolean z10) {
        super(zzceiVar, zzaweVar, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected final WebResourceResponse P0(WebView webView, String str, Map map) {
        String str2;
        if (!(webView instanceof zzcei)) {
            zzbza.g("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        zzcei zzceiVar = (zzcei) webView;
        zzbwb zzbwbVar = this.I;
        if (zzbwbVar != null) {
            zzbwbVar.a(str, map, 1);
        }
        if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
            if (map == null) {
                map = Collections.emptyMap();
            }
            return super.I(str, map);
        }
        if (zzceiVar.J() != null) {
            zzceiVar.J().H();
        }
        if (zzceiVar.M().i()) {
            str2 = (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.M);
        } else if (zzceiVar.B()) {
            str2 = (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.L);
        } else {
            str2 = (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.K);
        }
        com.google.android.gms.ads.internal.zzt.r();
        return com.google.android.gms.ads.internal.util.zzs.S(zzceiVar.getContext(), zzceiVar.k().f11605o, str2);
    }
}
