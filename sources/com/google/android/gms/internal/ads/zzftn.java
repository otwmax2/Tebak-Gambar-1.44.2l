package com.google.android.gms.internal.ads;

import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzftn extends zzftk {
    private zzftn() {
        super(null);
    }

    /* synthetic */ zzftn(zzftm zzftmVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.zzftk
    final int a(zzfto zzftoVar) {
        int i10;
        synchronized (zzftoVar) {
            i10 = zzftoVar.f18728w - 1;
            zzftoVar.f18728w = i10;
        }
        return i10;
    }

    @Override // com.google.android.gms.internal.ads.zzftk
    final void b(zzfto zzftoVar, @CheckForNull Set set, Set set2) {
        synchronized (zzftoVar) {
            if (zzftoVar.f18727v == null) {
                zzftoVar.f18727v = set2;
            }
        }
    }
}
