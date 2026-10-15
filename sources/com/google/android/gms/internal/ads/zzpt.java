package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzpt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f20434a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzss f20435b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CopyOnWriteArrayList f20436c;

    public zzpt() {
        this(new CopyOnWriteArrayList(), 0, null);
    }

    private zzpt(CopyOnWriteArrayList copyOnWriteArrayList, int i10, zzss zzssVar) {
        this.f20436c = copyOnWriteArrayList;
        this.f20434a = 0;
        this.f20435b = zzssVar;
    }

    public final zzpt a(int i10, zzss zzssVar) {
        return new zzpt(this.f20436c, 0, zzssVar);
    }

    public final void b(Handler handler, zzpu zzpuVar) {
        this.f20436c.add(new zzps(handler, zzpuVar));
    }

    public final void c(zzpu zzpuVar) {
        for (zzps zzpsVar : this.f20436c) {
            if (zzpsVar.f20433b == zzpuVar) {
                this.f20436c.remove(zzpsVar);
            }
        }
    }
}
