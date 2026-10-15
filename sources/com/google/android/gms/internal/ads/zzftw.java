package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzftw extends zzfti {

    @CheckForNull
    private zzftv D;

    zzftw(zzfqf zzfqfVar, boolean z10, Executor executor, Callable callable) {
        super(zzfqfVar, z10, false);
        this.D = new zzftu(this, callable, executor);
        S();
    }

    @Override // com.google.android.gms.internal.ads.zzfti
    final void Q(int i10, @CheckForNull Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzfti
    final void R() {
        zzftv zzftvVar = this.D;
        if (zzftvVar != null) {
            zzftvVar.i();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfti
    final void V(int i10) {
        super.V(i10);
        if (i10 == 1) {
            this.D = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfsx
    protected final void u() {
        zzftv zzftvVar = this.D;
        if (zzftvVar != null) {
            zzftvVar.g();
        }
    }
}
