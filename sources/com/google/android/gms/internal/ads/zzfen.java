package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.ads.AdFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfen implements Runnable {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzfep f18032p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f18033q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f18034r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private zzeyn f18035s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zze f18036t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Future f18037u;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final List f18031o = new ArrayList();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f18038v = 2;

    zzfen(zzfep zzfepVar) {
        this.f18032p = zzfepVar;
    }

    public final synchronized zzfen a(zzfec zzfecVar) {
        if (((Boolean) zzbcd.f10514c.e()).booleanValue()) {
            List list = this.f18031o;
            zzfecVar.g();
            list.add(zzfecVar);
            Future future = this.f18037u;
            if (future != null) {
                future.cancel(false);
            }
            this.f18037u = zzbzn.f11617d.schedule(this, ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Z7)).intValue(), TimeUnit.MILLISECONDS);
        }
        return this;
    }

    public final synchronized zzfen b(String str) {
        if (((Boolean) zzbcd.f10514c.e()).booleanValue() && zzfem.e(str)) {
            this.f18033q = str;
        }
        return this;
    }

    public final synchronized zzfen c(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (((Boolean) zzbcd.f10514c.e()).booleanValue()) {
            this.f18036t = zzeVar;
        }
        return this;
    }

    public final synchronized zzfen d(ArrayList arrayList) {
        if (((Boolean) zzbcd.f10514c.e()).booleanValue()) {
            if (arrayList.contains("banner") || arrayList.contains(AdFormat.BANNER.name())) {
                this.f18038v = 3;
            } else if (arrayList.contains("interstitial") || arrayList.contains(AdFormat.INTERSTITIAL.name())) {
                this.f18038v = 4;
            } else if (arrayList.contains(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE) || arrayList.contains(AdFormat.NATIVE.name())) {
                this.f18038v = 8;
            } else if (arrayList.contains("rewarded") || arrayList.contains(AdFormat.REWARDED.name())) {
                this.f18038v = 5;
            } else if (arrayList.contains("app_open_ad")) {
                this.f18038v = 7;
            } else if (arrayList.contains("rewarded_interstitial") || arrayList.contains(AdFormat.REWARDED_INTERSTITIAL.name())) {
                this.f18038v = 6;
            }
        }
        return this;
    }

    public final synchronized zzfen e(String str) {
        if (((Boolean) zzbcd.f10514c.e()).booleanValue()) {
            this.f18034r = str;
        }
        return this;
    }

    public final synchronized zzfen f(zzeyn zzeynVar) {
        if (((Boolean) zzbcd.f10514c.e()).booleanValue()) {
            this.f18035s = zzeynVar;
        }
        return this;
    }

    public final synchronized void g() {
        if (((Boolean) zzbcd.f10514c.e()).booleanValue()) {
            Future future = this.f18037u;
            if (future != null) {
                future.cancel(false);
            }
            for (zzfec zzfecVar : this.f18031o) {
                int i10 = this.f18038v;
                if (i10 != 2) {
                    zzfecVar.l0(i10);
                }
                if (!TextUtils.isEmpty(this.f18033q)) {
                    zzfecVar.s(this.f18033q);
                }
                if (!TextUtils.isEmpty(this.f18034r) && !zzfecVar.i()) {
                    zzfecVar.O(this.f18034r);
                }
                zzeyn zzeynVar = this.f18035s;
                if (zzeynVar != null) {
                    zzfecVar.a(zzeynVar);
                } else {
                    com.google.android.gms.ads.internal.client.zze zzeVar = this.f18036t;
                    if (zzeVar != null) {
                        zzfecVar.v(zzeVar);
                    }
                }
                this.f18032p.b(zzfecVar.j());
            }
            this.f18031o.clear();
        }
    }

    public final synchronized zzfen h(int i10) {
        if (((Boolean) zzbcd.f10514c.e()).booleanValue()) {
            this.f18038v = i10;
        }
        return this;
    }

    @Override // java.lang.Runnable
    public final synchronized void run() {
        g();
    }
}
