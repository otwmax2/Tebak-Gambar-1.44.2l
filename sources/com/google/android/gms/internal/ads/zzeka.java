package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeka implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f16816a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdnd f16817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdrk f16818c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzekd f16819d;

    public zzeka(zzfuu zzfuuVar, zzdnd zzdndVar, zzdrk zzdrkVar, zzekd zzekdVar) {
        this.f16816a = zzfuuVar;
        this.f16817b = zzdndVar;
        this.f16818c = zzdrkVar;
        this.f16819d = zzekdVar;
    }

    final /* synthetic */ zzekc a() throws Exception {
        List<String> listAsList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10270k1)).split(";"));
        Bundle bundle = new Bundle();
        for (String str : listAsList) {
            try {
                zzezs zzezsVarC = this.f16817b.c(str, new JSONObject());
                zzezsVarC.c();
                Bundle bundle2 = new Bundle();
                try {
                    zzbpq zzbpqVarK = zzezsVarC.k();
                    if (zzbpqVarK != null) {
                        bundle2.putString("sdk_version", zzbpqVarK.toString());
                    }
                } catch (zzezc unused) {
                }
                try {
                    zzbpq zzbpqVarJ = zzezsVarC.j();
                    if (zzbpqVarJ != null) {
                        bundle2.putString("adapter_version", zzbpqVarJ.toString());
                    }
                } catch (zzezc unused2) {
                }
                bundle.putBundle(str, bundle2);
            } catch (zzezc unused3) {
            }
        }
        return new zzekc(bundle, null);
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        if (zzfoj.d((String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10270k1)) || this.f16819d.b() || !this.f16818c.t()) {
            return zzfuj.h(new zzekc(new Bundle(), null));
        }
        this.f16819d.a(true);
        return this.f16816a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzejz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f16814a.a();
            }
        });
    }
}
