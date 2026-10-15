package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@VisibleForTesting
public final class zzcva extends zzczy implements zzcus {
    @VisibleForTesting
    public zzcva(Set set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzcus
    public final void C(final zzded zzdedVar) {
        W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzcuz
            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((zzcve) obj).W0(zzezx.d(12, zzdedVar.getMessage(), null));
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcus
    public final void v(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzcux
            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((zzcve) obj).W0(zzeVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcus
    public final void zzb() {
        W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzcuy
            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((zzcve) obj).W0(zzezx.d(11, null, null));
            }
        });
    }
}
