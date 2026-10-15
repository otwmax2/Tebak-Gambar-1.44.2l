package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.internal.ads.zzbjr;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class p extends zzbjr {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzej f5766o;

    /* synthetic */ p(zzej zzejVar, zzeh zzehVar) {
        this.f5766o = zzejVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjs
    public final void n8(List list) throws RemoteException {
        int i10;
        ArrayList arrayList;
        synchronized (this.f5766o.f5868a) {
            this.f5766o.f5870c = false;
            this.f5766o.f5871d = true;
            arrayList = new ArrayList(this.f5766o.f5869b);
            this.f5766o.f5869b.clear();
        }
        InitializationStatus initializationStatusN = zzej.n(list);
        int size = arrayList.size();
        for (i10 = 0; i10 < size; i10++) {
            ((OnInitializationCompleteListener) arrayList.get(i10)).a(initializationStatusN);
        }
    }
}
