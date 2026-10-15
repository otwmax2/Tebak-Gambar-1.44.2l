package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzejx implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f16812a;

    zzejx(Set set) {
        this.f16812a = set;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 8;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        final ArrayList arrayList = new ArrayList();
        Iterator it = this.f16812a.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        return zzfuj.h(new zzepm() { // from class: com.google.android.gms.internal.ads.zzejw
            @Override // com.google.android.gms.internal.ads.zzepm
            public final void a(Object obj) {
                ((Bundle) obj).putStringArrayList("ad_types", arrayList);
            }
        });
    }
}
