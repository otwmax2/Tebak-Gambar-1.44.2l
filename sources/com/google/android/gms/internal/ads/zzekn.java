package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzekn implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f16841a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbyj f16842b;

    zzekn(Executor executor, zzbyj zzbyjVar) {
        this.f16841a = executor;
        this.f16842b = zzbyjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 10;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10326p2)).booleanValue() ? zzfuj.h(null) : zzfuj.l(this.f16842b.j(), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzekl
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                final ArrayList arrayList = (ArrayList) obj;
                if (arrayList.isEmpty()) {
                    return null;
                }
                return new zzepm() { // from class: com.google.android.gms.internal.ads.zzekm
                    @Override // com.google.android.gms.internal.ads.zzepm
                    public final void a(Object obj2) {
                        ((Bundle) obj2).putStringArrayList("android_permissions", arrayList);
                    }
                };
            }
        }, this.f16841a);
    }
}
