package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzczy {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @GuardedBy("this")
    protected final Map f14231o = new HashMap();

    protected zzczy(Set set) {
        U0(set);
    }

    public final synchronized void E0(zzdbu zzdbuVar) {
        L0(zzdbuVar.f14327a, zzdbuVar.f14328b);
    }

    public final synchronized void L0(Object obj, Executor executor) {
        this.f14231o.put(obj, executor);
    }

    public final synchronized void U0(Set set) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            E0((zzdbu) it.next());
        }
    }

    protected final synchronized void W0(final zzczx zzczxVar) {
        for (Map.Entry entry : this.f14231o.entrySet()) {
            final Object key = entry.getKey();
            ((Executor) entry.getValue()).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzczw
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        zzczxVar.a(key);
                    } catch (Throwable th) {
                        com.google.android.gms.ads.internal.zzt.q().t(th, "EventEmitter.notify");
                        com.google.android.gms.ads.internal.util.zze.l("Event emitter exception.", th);
                    }
                }
            });
        }
    }
}
