package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class zzftt extends zzfti {

    @CheckForNull
    private List D;

    zzftt(zzfqf zzfqfVar, boolean z10) {
        super(zzfqfVar, true, true);
        List listEmptyList = zzfqfVar.isEmpty() ? Collections.emptyList() : zzfqy.a(zzfqfVar.size());
        for (int i10 = 0; i10 < zzfqfVar.size(); i10++) {
            listEmptyList.add(null);
        }
        this.D = listEmptyList;
    }

    @Override // com.google.android.gms.internal.ads.zzfti
    final void Q(int i10, Object obj) {
        List list = this.D;
        if (list != null) {
            list.set(i10, new zzfts(obj));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfti
    final void R() {
        List list = this.D;
        if (list != null) {
            h(W(list));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfti
    final void V(int i10) {
        super.V(i10);
        this.D = null;
    }

    abstract Object W(List list);
}
