package com.google.android.gms.internal.ads;

import android.webkit.WebView;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzffm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfft f18092a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WebView f18093b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f18094c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f18095d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f18096e = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f18097f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzffn f18098g;

    private zzffm(zzfft zzfftVar, WebView webView, String str, List list, String str2, String str3, zzffn zzffnVar) {
        this.f18092a = zzfftVar;
        this.f18093b = webView;
        this.f18098g = zzffnVar;
        this.f18097f = str2;
    }

    public static zzffm b(zzfft zzfftVar, WebView webView, String str, String str2) {
        return new zzffm(zzfftVar, webView, null, null, str, BuildConfig.FLAVOR, zzffn.HTML);
    }

    public static zzffm c(zzfft zzfftVar, WebView webView, String str, String str2) {
        return new zzffm(zzfftVar, webView, null, null, str, BuildConfig.FLAVOR, zzffn.JAVASCRIPT);
    }

    public final WebView a() {
        return this.f18093b;
    }

    public final zzffn d() {
        return this.f18098g;
    }

    public final zzfft e() {
        return this.f18092a;
    }

    public final String f() {
        return this.f18097f;
    }

    public final String g() {
        return this.f18096e;
    }

    public final List h() {
        return Collections.unmodifiableList(this.f18094c);
    }

    public final Map i() {
        return Collections.unmodifiableMap(this.f18095d);
    }
}
