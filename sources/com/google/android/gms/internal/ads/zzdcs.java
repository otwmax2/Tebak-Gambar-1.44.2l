package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Set;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdcs extends zzczy {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f14359p;

    protected zzdcs(Set set) {
        super(set);
    }

    public final synchronized void a() {
        if (!this.f14359p) {
            W0(zzdcp.f14356a);
            this.f14359p = true;
        }
        W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzdcr
            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((VideoController.VideoLifecycleCallbacks) obj).d();
            }
        });
    }

    public final synchronized void d() {
        W0(zzdcp.f14356a);
        this.f14359p = true;
    }

    public final void zza() {
        W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzdco
            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((VideoController.VideoLifecycleCallbacks) obj).a();
            }
        });
    }

    public final void zzb() {
        W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzdcq
            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((VideoController.VideoLifecycleCallbacks) obj).c();
            }
        });
    }
}
