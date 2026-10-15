package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcmc implements zzcls {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f13478a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzg f13479b = com.google.android.gms.ads.internal.zzt.q().h();

    public zzcmc(Context context) {
        this.f13478a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzcls
    public final void a(Map map) {
        if (map.isEmpty()) {
            return;
        }
        String str = (String) map.get("gad_idless");
        if (str != null) {
            boolean z10 = Boolean.parseBoolean(str);
            map.remove("gad_idless");
            if (z10) {
                try {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10425y2)).booleanValue()) {
                        zzfkv.k(this.f13478a).l();
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.H2)).booleanValue()) {
                        zzfkv.k(this.f13478a).m();
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10436z2)).booleanValue()) {
                        zzfkw.j(this.f13478a).k();
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.D2)).booleanValue()) {
                            zzfkw.j(this.f13478a).l();
                        }
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.E2)).booleanValue()) {
                            zzfkw.j(this.f13478a).m();
                        }
                    }
                } catch (IOException e10) {
                    com.google.android.gms.ads.internal.zzt.q().u(e10, "SetAppMeasurementConsentConfig.run");
                }
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10346r0)).booleanValue()) {
                this.f13479b.B0(z10);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.L5)).booleanValue() && z10) {
                    this.f13478a.deleteDatabase("OfflineUpload.db");
                }
            }
        }
        Bundle bundle = new Bundle();
        for (Map.Entry entry : map.entrySet()) {
            bundle.putString((String) entry.getKey(), (String) entry.getValue());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10291m0)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.p().w(bundle);
        }
    }
}
