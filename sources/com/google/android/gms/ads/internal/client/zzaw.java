package com.google.android.gms.ads.internal.client;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;
import com.google.android.gms.internal.ads.zzbeb;
import com.google.android.gms.internal.ads.zzbfw;
import com.google.android.gms.internal.ads.zzbfx;
import com.google.android.gms.internal.ads.zzbip;
import com.google.android.gms.internal.ads.zzbnf;
import com.google.android.gms.internal.ads.zzbqv;
import com.google.android.gms.internal.ads.zzbqz;
import com.google.android.gms.internal.ads.zzbrc;
import com.google.android.gms.internal.ads.zzbsh;
import com.google.android.gms.internal.ads.zzbuw;
import com.google.android.gms.internal.ads.zzbvi;
import com.google.android.gms.internal.ads.zzbxr;
import com.google.android.gms.internal.ads.zzbza;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzaw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzk f5778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzi f5779b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzeq f5780c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzbfw f5781d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzbvi f5782e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzbqz f5783f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzbfx f5784g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private zzbsh f5785h;

    public zzaw(zzk zzkVar, zzi zziVar, zzeq zzeqVar, zzbfw zzbfwVar, zzbvi zzbviVar, zzbqz zzbqzVar, zzbfx zzbfxVar) {
        this.f5778a = zzkVar;
        this.f5779b = zziVar;
        this.f5780c = zzeqVar;
        this.f5781d = zzbfwVar;
        this.f5782e = zzbviVar;
        this.f5783f = zzbqzVar;
        this.f5784g = zzbfxVar;
    }

    static /* bridge */ /* synthetic */ void r(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        zzay.b().t(context, zzay.c().f11605o, "gmob-apps", bundle, true);
    }

    public final zzbq c(Context context, String str, zzbnf zzbnfVar) {
        return (zzbq) new j(this, context, str, zzbnfVar).d(context, false);
    }

    public final zzbu d(Context context, zzq zzqVar, String str, zzbnf zzbnfVar) {
        return (zzbu) new g(this, context, zzqVar, str, zzbnfVar).d(context, false);
    }

    public final zzbu e(Context context, zzq zzqVar, String str, zzbnf zzbnfVar) {
        return (zzbu) new i(this, context, zzqVar, str, zzbnfVar).d(context, false);
    }

    public final zzdj f(Context context, zzbnf zzbnfVar) {
        return (zzdj) new b(this, context, zzbnfVar).d(context, false);
    }

    public final zzbeb h(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return (zzbeb) new l(this, frameLayout, frameLayout2, context).d(context, false);
    }

    public final zzbip j(Context context, zzbnf zzbnfVar, OnH5AdsEventListener onH5AdsEventListener) {
        return (zzbip) new e(this, context, zzbnfVar, onH5AdsEventListener).d(context, false);
    }

    public final zzbqv k(Context context, zzbnf zzbnfVar) {
        return (zzbqv) new d(this, context, zzbnfVar).d(context, false);
    }

    public final zzbrc m(Activity activity) {
        a aVar = new a(this, activity);
        Intent intent = activity.getIntent();
        boolean booleanExtra = false;
        if (intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            booleanExtra = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        } else {
            zzbza.d("useClientJar flag not found in activity intent extras.");
        }
        return (zzbrc) aVar.d(activity, booleanExtra);
    }

    public final zzbuw o(Context context, String str, zzbnf zzbnfVar) {
        return (zzbuw) new m(this, context, str, zzbnfVar).d(context, false);
    }

    public final zzbxr p(Context context, zzbnf zzbnfVar) {
        return (zzbxr) new c(this, context, zzbnfVar).d(context, false);
    }
}
