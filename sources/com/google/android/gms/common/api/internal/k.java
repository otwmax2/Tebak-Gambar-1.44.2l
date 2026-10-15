package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class k extends p {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Map<Api.Client, h> f7114p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zaaw f7115q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(zaaw zaawVar, Map<Api.Client, h> map) {
        super(zaawVar, null);
        this.f7115q = zaawVar;
        this.f7114p = map;
    }

    @Override // com.google.android.gms.common.api.internal.p
    @GuardedBy("mLock")
    public final void a() {
        com.google.android.gms.common.internal.zal zalVar = new com.google.android.gms.common.internal.zal(this.f7115q.f7166d);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Api.Client client : this.f7114p.keySet()) {
            if (!client.l() || this.f7114p.get(client).f7108c) {
                arrayList2.add(client);
            } else {
                arrayList.add(client);
            }
        }
        int iB = -1;
        int i10 = 0;
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            while (i10 < size) {
                iB = zalVar.b(this.f7115q.f7165c, (Api.Client) arrayList.get(i10));
                i10++;
                if (iB != 0) {
                    break;
                }
            }
        } else {
            int size2 = arrayList2.size();
            while (i10 < size2) {
                iB = zalVar.b(this.f7115q.f7165c, (Api.Client) arrayList2.get(i10));
                i10++;
                if (iB == 0) {
                    break;
                }
            }
        }
        if (iB != 0) {
            ConnectionResult connectionResult = new ConnectionResult(iB, null);
            zaaw zaawVar = this.f7115q;
            zaawVar.f7163a.n(new i(this, zaawVar, connectionResult));
            return;
        }
        zaaw zaawVar2 = this.f7115q;
        if (zaawVar2.f7175m && zaawVar2.f7173k != null) {
            zaawVar2.f7173k.u();
        }
        for (Api.Client client2 : this.f7114p.keySet()) {
            h hVar = this.f7114p.get(client2);
            if (!client2.l() || zalVar.b(this.f7115q.f7165c, client2) == 0) {
                client2.h(hVar);
            } else {
                zaaw zaawVar3 = this.f7115q;
                zaawVar3.f7163a.n(new j(this, zaawVar3, hVar));
            }
        }
    }
}
