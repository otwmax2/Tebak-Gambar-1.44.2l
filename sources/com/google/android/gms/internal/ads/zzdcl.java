package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdcl extends zzczy implements zzbie {
    public zzdcl(Set set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbie
    public final void I(final zzbup zzbupVar) {
        W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzdci
            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((zzbie) obj).I(zzbupVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbie
    public final synchronized void a() {
        W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzdcj
            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((zzbie) obj).a();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbie
    public final void zzb() {
        W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzdck
            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((zzbie) obj).zzb();
            }
        });
    }
}
