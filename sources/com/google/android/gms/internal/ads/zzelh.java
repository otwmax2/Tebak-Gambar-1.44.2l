package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzelh implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzeva f16903a;

    zzelh(zzeva zzevaVar) {
        this.f16903a = zzevaVar;
    }

    final /* synthetic */ void a(Bundle bundle) {
        bundle.putString("key_schema", this.f16903a.a());
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 15;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        zzeva zzevaVar = this.f16903a;
        zzepm zzepmVar = null;
        if (zzevaVar != null && zzevaVar.a() != null && !zzevaVar.a().isEmpty()) {
            zzepmVar = new zzepm() { // from class: com.google.android.gms.internal.ads.zzelg
                @Override // com.google.android.gms.internal.ads.zzepm
                public final void a(Object obj) {
                    this.f16902a.a((Bundle) obj);
                }
            };
        }
        return zzfuj.h(zzepmVar);
    }
}
