package com.google.android.gms.internal.ads;

import android.os.IBinder;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfmr extends zzfml {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ IBinder f18437p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzfmu f18438q;

    zzfmr(zzfmu zzfmuVar, IBinder iBinder) {
        this.f18438q = zzfmuVar;
        this.f18437p = iBinder;
    }

    @Override // com.google.android.gms.internal.ads.zzfml
    public final void a() {
        this.f18438q.f18440o.f18454m = zzfmg.Sa(this.f18437p);
        zzfmv.q(this.f18438q.f18440o);
        this.f18438q.f18440o.f18448g = false;
        Iterator it = this.f18438q.f18440o.f18445d.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.f18438q.f18440o.f18445d.clear();
    }
}
