package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzsb extends zzrt {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final HashMap f20597h = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Handler f20598i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private zzgi f20599j;

    protected zzsb() {
    }

    protected zzss A(Object obj, zzss zzssVar) {
        throw null;
    }

    protected abstract void B(Object obj, zzsu zzsuVar, zzcn zzcnVar);

    @Override // com.google.android.gms.internal.ads.zzsu
    public void E() throws IOException {
        Iterator it = this.f20597h.values().iterator();
        while (it.hasNext()) {
            ((zzsa) it.next()).f20594a.E();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzrt
    protected final void q() {
        for (zzsa zzsaVar : this.f20597h.values()) {
            zzsaVar.f20594a.c(zzsaVar.f20595b);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzrt
    protected final void r() {
        for (zzsa zzsaVar : this.f20597h.values()) {
            zzsaVar.f20594a.h(zzsaVar.f20595b);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzrt
    protected void s(zzgi zzgiVar) {
        this.f20599j = zzgiVar;
        this.f20598i = zzew.d(null);
    }

    @Override // com.google.android.gms.internal.ads.zzrt
    protected void u() {
        for (zzsa zzsaVar : this.f20597h.values()) {
            zzsaVar.f20594a.e(zzsaVar.f20595b);
            zzsaVar.f20594a.f(zzsaVar.f20596c);
            zzsaVar.f20594a.g(zzsaVar.f20596c);
        }
        this.f20597h.clear();
    }

    protected final void x(final Object obj, zzsu zzsuVar) {
        zzdl.d(!this.f20597h.containsKey(obj));
        zzst zzstVar = new zzst() { // from class: com.google.android.gms.internal.ads.zzry
            @Override // com.google.android.gms.internal.ads.zzst
            public final void a(zzsu zzsuVar2, zzcn zzcnVar) {
                this.f20587a.B(obj, zzsuVar2, zzcnVar);
            }
        };
        zzrz zzrzVar = new zzrz(this, obj);
        this.f20597h.put(obj, new zzsa(zzsuVar, zzstVar, zzrzVar));
        Handler handler = this.f20598i;
        Objects.requireNonNull(handler);
        zzsuVar.d(handler, zzrzVar);
        Handler handler2 = this.f20598i;
        Objects.requireNonNull(handler2);
        zzsuVar.j(handler2, zzrzVar);
        zzsuVar.k(zzstVar, this.f20599j, l());
        if (w()) {
            return;
        }
        zzsuVar.c(zzstVar);
    }

    protected int y(Object obj, int i10) {
        return 0;
    }

    protected long z(Object obj, long j10) {
        return j10;
    }
}
