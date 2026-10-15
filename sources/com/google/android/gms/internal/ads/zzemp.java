package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.ViewGroup;
import android.view.Window;
import com.facebook.internal.AnalyticsEvents;
import java.util.Set;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzemp implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f16964a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ViewGroup f16965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f16966c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set f16967d;

    public zzemp(zzfuu zzfuuVar, ViewGroup viewGroup, Context context, Set set) {
        this.f16964a = zzfuuVar;
        this.f16967d = set;
        this.f16965b = viewGroup;
        this.f16966c = context;
    }

    final /* synthetic */ zzemq a() throws Exception {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10395v5)).booleanValue() && this.f16965b != null && this.f16967d.contains("banner")) {
            return new zzemq(Boolean.valueOf(this.f16965b.isHardwareAccelerated()));
        }
        Boolean boolValueOf = null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10406w5)).booleanValue() && this.f16967d.contains(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE)) {
            Context context = this.f16966c;
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                Window window = activity.getWindow();
                if (window == null || (window.getAttributes().flags & 16777216) == 0) {
                    try {
                        boolValueOf = Boolean.valueOf((activity.getPackageManager().getActivityInfo(activity.getComponentName(), 0).flags & 512) != 0);
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                } else {
                    boolValueOf = Boolean.TRUE;
                }
                return new zzemq(boolValueOf);
            }
        }
        return new zzemq(null);
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 22;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f16964a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzemo
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f16963a.a();
            }
        });
    }
}
