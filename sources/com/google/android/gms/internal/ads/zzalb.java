package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzalb implements zzakn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f9474a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzaka f9475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final BlockingQueue f9476c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzakf f9477d;

    zzalb(zzaka zzakaVar, BlockingQueue blockingQueue, zzakf zzakfVar, byte[] bArr) {
        this.f9477d = zzakfVar;
        this.f9475b = zzakaVar;
        this.f9476c = blockingQueue;
    }

    @Override // com.google.android.gms.internal.ads.zzakn
    public final synchronized void a(zzako zzakoVar) {
        String strM = zzakoVar.m();
        List list = (List) this.f9474a.remove(strM);
        if (list == null || list.isEmpty()) {
            return;
        }
        if (zzala.f9472b) {
            zzala.d("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(list.size()), strM);
        }
        zzako zzakoVar2 = (zzako) list.remove(0);
        this.f9474a.put(strM, list);
        zzakoVar2.L(this);
        try {
            this.f9476c.put(zzakoVar2);
        } catch (InterruptedException e10) {
            zzala.b("Couldn't add request to queue. %s", e10.toString());
            Thread.currentThread().interrupt();
            this.f9475b.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakn
    public final void b(zzako zzakoVar, zzaku zzakuVar) {
        List list;
        zzajx zzajxVar = zzakuVar.f9461b;
        if (zzajxVar == null || zzajxVar.a(System.currentTimeMillis())) {
            a(zzakoVar);
            return;
        }
        String strM = zzakoVar.m();
        synchronized (this) {
            list = (List) this.f9474a.remove(strM);
        }
        if (list != null) {
            if (zzala.f9472b) {
                zzala.d("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(list.size()), strM);
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.f9477d.b((zzako) it.next(), zzakuVar, null);
            }
        }
    }

    final synchronized boolean c(zzako zzakoVar) {
        String strM = zzakoVar.m();
        if (!this.f9474a.containsKey(strM)) {
            this.f9474a.put(strM, null);
            zzakoVar.L(this);
            if (zzala.f9472b) {
                zzala.a("new request, sending to network %s", strM);
            }
            return false;
        }
        List arrayList = (List) this.f9474a.get(strM);
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        zzakoVar.p("waiting-for-response");
        arrayList.add(zzakoVar);
        this.f9474a.put(strM, arrayList);
        if (zzala.f9472b) {
            zzala.a("Request for cacheKey=%s is in flight, putting on hold.", strM);
        }
        return true;
    }
}
