package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.appopen.AppOpenAd;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzavg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zzbu f10001a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f10002b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f10003c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.client.zzdx f10004d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @AppOpenAd.AppOpenAdOrientation
    private final int f10005e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AppOpenAd.AppOpenAdLoadCallback f10006f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzbnc f10007g = new zzbnc();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.client.zzp f10008h = com.google.android.gms.ads.internal.client.zzp.f5930a;

    public zzavg(Context context, String str, com.google.android.gms.ads.internal.client.zzdx zzdxVar, @AppOpenAd.AppOpenAdOrientation int i10, AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback) {
        this.f10002b = context;
        this.f10003c = str;
        this.f10004d = zzdxVar;
        this.f10005e = i10;
        this.f10006f = appOpenAdLoadCallback;
    }

    public final void a() {
        try {
            com.google.android.gms.ads.internal.client.zzbu zzbuVarD = com.google.android.gms.ads.internal.client.zzay.a().d(this.f10002b, com.google.android.gms.ads.internal.client.zzq.W3(), this.f10003c, this.f10007g);
            this.f10001a = zzbuVarD;
            if (zzbuVarD != null) {
                if (this.f10005e != 3) {
                    this.f10001a.E7(new com.google.android.gms.ads.internal.client.zzw(this.f10005e));
                }
                this.f10001a.aa(new zzaut(this.f10006f, this.f10003c));
                this.f10001a.P9(this.f10008h.a(this.f10002b, this.f10004d));
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }
}
