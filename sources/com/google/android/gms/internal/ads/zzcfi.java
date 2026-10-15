package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.JavascriptInterface;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcfi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzcfj f12118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcfh f12119b;

    public zzcfi(zzcfj zzcfjVar, zzcfh zzcfhVar, byte[] bArr) {
        this.f12119b = zzcfhVar;
        this.f12118a = zzcfjVar;
    }

    final /* synthetic */ void a(String str) {
        zzcfh zzcfhVar = this.f12119b;
        Uri uri = Uri.parse(str);
        zzcep zzcepVarE1 = ((zzcfb) zzcfhVar.f12117a).e1();
        if (zzcepVarE1 == null) {
            zzbza.d("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
        } else {
            zzcepVarE1.R0(uri);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.ads.zzcfj, com.google.android.gms.internal.ads.zzcfq] */
    @JavascriptInterface
    public String getClickSignals(String str) {
        if (TextUtils.isEmpty(str)) {
            com.google.android.gms.ads.internal.util.zze.k("Click string is empty, not proceeding.");
            return BuildConfig.FLAVOR;
        }
        ?? r02 = this.f12118a;
        zzapw zzapwVarT = r02.T();
        if (zzapwVarT == null) {
            com.google.android.gms.ads.internal.util.zze.k("Signal utils is empty, ignoring.");
            return BuildConfig.FLAVOR;
        }
        zzaps zzapsVarC = zzapwVarT.c();
        if (zzapsVarC == null) {
            com.google.android.gms.ads.internal.util.zze.k("Signals object is empty, ignoring.");
            return BuildConfig.FLAVOR;
        }
        if (r02.getContext() == null) {
            com.google.android.gms.ads.internal.util.zze.k("Context is null, ignoring.");
            return BuildConfig.FLAVOR;
        }
        Context context = this.f12118a.getContext();
        zzcfj zzcfjVar = this.f12118a;
        return zzapsVarC.e(context, str, (View) zzcfjVar, zzcfjVar.g());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzcfj, com.google.android.gms.internal.ads.zzcfq] */
    @JavascriptInterface
    public String getViewSignals() {
        ?? r02 = this.f12118a;
        zzapw zzapwVarT = r02.T();
        if (zzapwVarT == null) {
            com.google.android.gms.ads.internal.util.zze.k("Signal utils is empty, ignoring.");
            return BuildConfig.FLAVOR;
        }
        zzaps zzapsVarC = zzapwVarT.c();
        if (zzapsVarC == null) {
            com.google.android.gms.ads.internal.util.zze.k("Signals object is empty, ignoring.");
            return BuildConfig.FLAVOR;
        }
        if (r02.getContext() == null) {
            com.google.android.gms.ads.internal.util.zze.k("Context is null, ignoring.");
            return BuildConfig.FLAVOR;
        }
        Context context = this.f12118a.getContext();
        zzcfj zzcfjVar = this.f12118a;
        return zzapsVarC.g(context, (View) zzcfjVar, zzcfjVar.g());
    }

    @JavascriptInterface
    public void notify(final String str) {
        if (TextUtils.isEmpty(str)) {
            zzbza.g("URL is empty, ignoring message");
        } else {
            com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfg
                @Override // java.lang.Runnable
                public final void run() {
                    this.f12115o.a(str);
                }
            });
        }
    }
}
