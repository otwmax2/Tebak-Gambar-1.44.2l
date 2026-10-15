package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcvg extends zzczy {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f14104p;

    public zzcvg(Set set) {
        super(set);
        this.f14104p = false;
    }

    public final synchronized void zza() {
        if (this.f14104p) {
            return;
        }
        W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzcvf
            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((zzcvi) obj).j();
            }
        });
        this.f14104p = true;
    }
}
