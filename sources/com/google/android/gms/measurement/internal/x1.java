package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
@TargetApi(14)
final class x1 implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzin f24381o;

    /* synthetic */ x1(zzin zzinVar, zzil zzilVar) {
        this.f24381o = zzinVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zzgi zzgiVar;
        Uri data;
        try {
            try {
                this.f24381o.f24394a.U().q().a("onActivityCreated");
                Intent intent = activity.getIntent();
                if (intent == null || (data = intent.getData()) == null || !data.isHierarchical()) {
                    zzgiVar = this.f24381o.f24394a;
                } else {
                    this.f24381o.f24394a.L();
                    String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
                    boolean z10 = true;
                    String str = true != ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) ? "auto" : "gs";
                    String queryParameter = data.getQueryParameter("referrer");
                    if (bundle != null) {
                        z10 = false;
                    }
                    this.f24381o.f24394a.B().v(new w1(this, z10, data, str, queryParameter));
                    zzgiVar = this.f24381o.f24394a;
                }
            } catch (RuntimeException e10) {
                this.f24381o.f24394a.U().m().b("Throwable caught in onActivityCreated", e10);
                zzgiVar = this.f24381o.f24394a;
            }
            zzgiVar.I().v(activity, bundle);
        } catch (Throwable th) {
            this.f24381o.f24394a.I().v(activity, bundle);
            throw th;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f24381o.f24394a.I().w(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f24381o.f24394a.I().y(activity);
        zzkr zzkrVarK = this.f24381o.f24394a.K();
        zzkrVarK.f24394a.B().v(new i3(zzkrVarK, zzkrVarK.f24394a.x().b()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zzkr zzkrVarK = this.f24381o.f24394a.K();
        zzkrVarK.f24394a.B().v(new h3(zzkrVarK, zzkrVarK.f24394a.x().b()));
        this.f24381o.f24394a.I().z(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.f24381o.f24394a.I().A(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
