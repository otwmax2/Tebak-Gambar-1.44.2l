package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzakr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f9449a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f9450b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PriorityBlockingQueue f9451c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PriorityBlockingQueue f9452d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzajy f9453e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzakh f9454f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzaki[] f9455g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private zzaka f9456h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List f9457i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final List f9458j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzakf f9459k;

    public zzakr(zzajy zzajyVar, zzakh zzakhVar, int i10) {
        zzakf zzakfVar = new zzakf(new Handler(Looper.getMainLooper()));
        this.f9449a = new AtomicInteger();
        this.f9450b = new HashSet();
        this.f9451c = new PriorityBlockingQueue();
        this.f9452d = new PriorityBlockingQueue();
        this.f9457i = new ArrayList();
        this.f9458j = new ArrayList();
        this.f9453e = zzajyVar;
        this.f9454f = zzakhVar;
        this.f9455g = new zzaki[4];
        this.f9459k = zzakfVar;
    }

    public final zzako a(zzako zzakoVar) {
        zzakoVar.i(this);
        synchronized (this.f9450b) {
            this.f9450b.add(zzakoVar);
        }
        zzakoVar.j(this.f9449a.incrementAndGet());
        zzakoVar.p("add-to-queue");
        c(zzakoVar, 0);
        this.f9451c.add(zzakoVar);
        return zzakoVar;
    }

    final void b(zzako zzakoVar) {
        synchronized (this.f9450b) {
            this.f9450b.remove(zzakoVar);
        }
        synchronized (this.f9457i) {
            Iterator it = this.f9457i.iterator();
            while (it.hasNext()) {
                ((zzakq) it.next()).zza();
            }
        }
        c(zzakoVar, 5);
    }

    final void c(zzako zzakoVar, int i10) {
        synchronized (this.f9458j) {
            Iterator it = this.f9458j.iterator();
            while (it.hasNext()) {
                ((zzakp) it.next()).zza();
            }
        }
    }

    public final void d() {
        zzaka zzakaVar = this.f9456h;
        if (zzakaVar != null) {
            zzakaVar.b();
        }
        zzaki[] zzakiVarArr = this.f9455g;
        for (int i10 = 0; i10 < 4; i10++) {
            zzaki zzakiVar = zzakiVarArr[i10];
            if (zzakiVar != null) {
                zzakiVar.a();
            }
        }
        zzaka zzakaVar2 = new zzaka(this.f9451c, this.f9452d, this.f9453e, this.f9459k, null);
        this.f9456h = zzakaVar2;
        zzakaVar2.start();
        for (int i11 = 0; i11 < 4; i11++) {
            zzaki zzakiVar2 = new zzaki(this.f9452d, this.f9454f, this.f9453e, this.f9459k, null);
            this.f9455g[i11] = zzakiVar2;
            zzakiVar2.start();
        }
    }
}
