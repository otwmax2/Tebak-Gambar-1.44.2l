package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.JsonReader;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.internal.ads.zzbtn;
import com.google.android.gms.internal.ads.zzdue;
import com.google.android.gms.internal.ads.zzftq;
import com.google.android.gms.internal.ads.zzfuj;
import com.google.android.gms.internal.ads.zzfut;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.Executor;
import org.json.JSONException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzam implements zzftq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f6406a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdue f6407b;

    public zzam(Executor executor, zzdue zzdueVar) {
        this.f6406a = executor;
        this.f6407b = zzdueVar;
    }

    @Override // com.google.android.gms.internal.ads.zzftq
    public final /* bridge */ /* synthetic */ zzfut a(Object obj) throws Exception {
        final zzbtn zzbtnVar = (zzbtn) obj;
        return zzfuj.m(this.f6407b.b(zzbtnVar), new zzftq() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzal
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj2) {
                zzbtn zzbtnVar2 = zzbtnVar;
                zzao zzaoVar = new zzao(new JsonReader(new InputStreamReader((InputStream) obj2)));
                try {
                    zzaoVar.f6411b = zzay.b().n(zzbtnVar2.f11272o).toString();
                } catch (JSONException unused) {
                    zzaoVar.f6411b = "{}";
                }
                return zzfuj.h(zzaoVar);
            }
        }, this.f6406a);
    }
}
