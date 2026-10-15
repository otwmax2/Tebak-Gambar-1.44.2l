package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.admanager.AppEventListener;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzdqf implements AppEventListener, zzcxj, com.google.android.gms.ads.internal.client.zza, zzcuo, zzcvi, zzcvj, zzcwc, zzcur, zzfdb {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final List f15392o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzdpt f15393p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f15394q;

    public zzdqf(zzdpt zzdptVar, zzcgd zzcgdVar) {
        this.f15393p = zzdptVar;
        this.f15392o = Collections.singletonList(zzcgdVar);
    }

    private final void w(Class cls, String str, Object... objArr) {
        this.f15393p.a(this.f15392o, "Event-".concat(cls.getSimpleName()), str, objArr);
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void I() {
        w(zzcuo.class, "onRewardedVideoStarted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzfdb
    public final void a(zzfcu zzfcuVar, String str) {
        w(zzfct.class, "onTaskStarted", str);
    }

    @Override // com.google.android.gms.internal.ads.zzfdb
    public final void b(zzfcu zzfcuVar, String str) {
        w(zzfct.class, "onTaskSucceeded", str);
    }

    @Override // com.google.android.gms.internal.ads.zzcvj
    public final void c(Context context) {
        w(zzcvj.class, "onResume", context);
    }

    @Override // com.google.android.gms.internal.ads.zzfdb
    public final void e(zzfcu zzfcuVar, String str, Throwable th) {
        w(zzfct.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override // com.google.android.gms.ads.admanager.AppEventListener
    public final void f(String str, String str2) {
        w(AppEventListener.class, "onAppEvent", str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void h() {
        w(zzcuo.class, "onAdClosed", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzcvi
    public final void j() {
        w(zzcvi.class, "onAdImpression", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzcwc
    public final void k() {
        com.google.android.gms.ads.internal.util.zze.k("Ad Request Latency : " + (com.google.android.gms.ads.internal.zzt.b().b() - this.f15394q));
        w(zzcwc.class, "onAdLoaded", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void l() {
        w(zzcuo.class, "onAdLeftApplication", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzcxj
    public final void l0(zzeyo zzeyoVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void m() {
        w(zzcuo.class, "onAdOpened", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    @ParametersAreNonnullByDefault
    public final void n(zzbud zzbudVar, String str, String str2) {
        w(zzcuo.class, "onRewarded", zzbudVar, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcvj
    public final void o(Context context) {
        w(zzcvj.class, "onDestroy", context);
    }

    @Override // com.google.android.gms.internal.ads.zzcvj
    public final void p(Context context) {
        w(zzcvj.class, "onPause", context);
    }

    @Override // com.google.android.gms.internal.ads.zzfdb
    public final void q(zzfcu zzfcuVar, String str) {
        w(zzfct.class, "onTaskCreated", str);
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void r() {
        w(zzcuo.class, "onRewardedVideoCompleted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzcxj
    public final void t0(zzbtn zzbtnVar) {
        this.f15394q = com.google.android.gms.ads.internal.zzt.b().b();
        w(zzcxj.class, "onAdRequest", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzcur
    public final void v(com.google.android.gms.ads.internal.client.zze zzeVar) {
        w(zzcur.class, "onAdFailedToLoad", Integer.valueOf(zzeVar.f5841o), zzeVar.f5842p, zzeVar.f5843q);
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void w0() {
        w(com.google.android.gms.ads.internal.client.zza.class, "onAdClicked", new Object[0]);
    }
}
