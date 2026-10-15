package com.google.android.gms.internal.ads;

import android.view.View;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzegn implements com.google.android.gms.ads.internal.zzf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private com.google.android.gms.ads.internal.zzf f16618a;

    @Override // com.google.android.gms.ads.internal.zzf
    public final synchronized void a() {
        com.google.android.gms.ads.internal.zzf zzfVar = this.f16618a;
        if (zzfVar != null) {
            zzfVar.a();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final synchronized void b(View view) {
        com.google.android.gms.ads.internal.zzf zzfVar = this.f16618a;
        if (zzfVar != null) {
            zzfVar.b(view);
        }
    }

    public final synchronized void c(com.google.android.gms.ads.internal.zzf zzfVar) {
        this.f16618a = zzfVar;
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final synchronized void zzb() {
        com.google.android.gms.ads.internal.zzf zzfVar = this.f16618a;
        if (zzfVar != null) {
            zzfVar.zzb();
        }
    }
}
