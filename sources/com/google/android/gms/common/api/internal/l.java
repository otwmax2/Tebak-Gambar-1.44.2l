package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class l extends p {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final ArrayList<Api.Client> f7120p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zaaw f7121q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(zaaw zaawVar, ArrayList<Api.Client> arrayList) {
        super(zaawVar, null);
        this.f7121q = zaawVar;
        this.f7120p = arrayList;
    }

    @Override // com.google.android.gms.common.api.internal.p
    public final void a() {
        zaaw zaawVar = this.f7121q;
        zaawVar.f7163a.B.f7196m = zaaw.y(zaawVar);
        ArrayList<Api.Client> arrayList = this.f7120p;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            Api.Client client = arrayList.get(i10);
            zaaw zaawVar2 = this.f7121q;
            client.d(zaawVar2.f7177o, zaawVar2.f7163a.B.f7196m);
        }
    }
}
