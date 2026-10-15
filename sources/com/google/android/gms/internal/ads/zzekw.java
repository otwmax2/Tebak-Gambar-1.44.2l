package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzekw implements zzepn {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Object f16861h = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f16862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f16863b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzcsd f16864c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfad f16865d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzeyx f16866e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzg f16867f = com.google.android.gms.ads.internal.zzt.q().h();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzdpd f16868g;

    public zzekw(String str, String str2, zzcsd zzcsdVar, zzfad zzfadVar, zzeyx zzeyxVar, zzdpd zzdpdVar) {
        this.f16862a = str;
        this.f16863b = str2;
        this.f16864c = zzcsdVar;
        this.f16865d = zzfadVar;
        this.f16866e = zzeyxVar;
        this.f16868g = zzdpdVar;
    }

    final /* synthetic */ void a(Bundle bundle, Bundle bundle2) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10219f5)).booleanValue()) {
            bundle2.putBundle("quality_signals", bundle);
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10208e5)).booleanValue()) {
                synchronized (f16861h) {
                    this.f16864c.b(this.f16866e.f17731d);
                    bundle2.putBundle("quality_signals", this.f16865d.a());
                }
            } else {
                this.f16864c.b(this.f16866e.f17731d);
                bundle2.putBundle("quality_signals", this.f16865d.a());
            }
        }
        bundle2.putString("seq_num", this.f16862a);
        if (this.f16867f.g0()) {
            return;
        }
        bundle2.putString(SDKAnalyticsEvents.PARAMETER_SESSION_ID, this.f16863b);
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 12;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        final Bundle bundle = new Bundle();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10166a7)).booleanValue()) {
            this.f16868g.a().put("seq_num", this.f16862a);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10219f5)).booleanValue()) {
            this.f16864c.b(this.f16866e.f17731d);
            bundle.putAll(this.f16865d.a());
        }
        return zzfuj.h(new zzepm() { // from class: com.google.android.gms.internal.ads.zzekv
            @Override // com.google.android.gms.internal.ads.zzepm
            public final void a(Object obj) {
                this.f16859a.a(bundle, (Bundle) obj);
            }
        });
    }
}
