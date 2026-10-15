package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcwi extends zzczy implements zzbgi {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Bundle f14125p;

    zzcwi(Set set) {
        super(set);
        this.f14125p = new Bundle();
    }

    public final synchronized Bundle Y0() {
        return new Bundle(this.f14125p);
    }

    @Override // com.google.android.gms.internal.ads.zzbgi
    public final synchronized void w(String str, Bundle bundle) {
        this.f14125p.putAll(bundle);
        W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzcwh
            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((OnAdMetadataChangedListener) obj).o();
            }
        });
    }
}
