package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdm f16137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdv f16138b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdz f16139c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CopyOnWriteArraySet f16140d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ArrayDeque f16141e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ArrayDeque f16142f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Object f16143g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f16144h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f16145i;

    public zzeb(Looper looper, zzdm zzdmVar, zzdz zzdzVar) {
        this(new CopyOnWriteArraySet(), looper, zzdmVar, zzdzVar);
    }

    public static /* synthetic */ boolean g(zzeb zzebVar, Message message) {
        Iterator it = zzebVar.f16140d.iterator();
        while (it.hasNext()) {
            ((zzea) it.next()).b(zzebVar.f16139c);
            if (zzebVar.f16138b.w(0)) {
                return true;
            }
        }
        return true;
    }

    private final void h() {
        if (this.f16145i) {
            zzdl.f(Thread.currentThread() == this.f16138b.zza().getThread());
        }
    }

    public final zzeb a(Looper looper, zzdz zzdzVar) {
        return new zzeb(this.f16140d, looper, this.f16137a, zzdzVar);
    }

    public final void b(Object obj) {
        synchronized (this.f16143g) {
            if (this.f16144h) {
                return;
            }
            this.f16140d.add(new zzea(obj));
        }
    }

    public final void c() {
        h();
        if (this.f16142f.isEmpty()) {
            return;
        }
        if (!this.f16138b.w(0)) {
            zzdv zzdvVar = this.f16138b;
            zzdvVar.j(zzdvVar.z(0));
        }
        boolean z10 = !this.f16141e.isEmpty();
        this.f16141e.addAll(this.f16142f);
        this.f16142f.clear();
        if (z10) {
            return;
        }
        while (!this.f16141e.isEmpty()) {
            ((Runnable) this.f16141e.peekFirst()).run();
            this.f16141e.removeFirst();
        }
    }

    public final void d(final int i10, final zzdy zzdyVar) {
        h();
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.f16140d);
        this.f16142f.add(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdx
            @Override // java.lang.Runnable
            public final void run() {
                CopyOnWriteArraySet copyOnWriteArraySet2 = copyOnWriteArraySet;
                int i11 = i10;
                zzdy zzdyVar2 = zzdyVar;
                Iterator it = copyOnWriteArraySet2.iterator();
                while (it.hasNext()) {
                    ((zzea) it.next()).a(i11, zzdyVar2);
                }
            }
        });
    }

    public final void e() {
        h();
        synchronized (this.f16143g) {
            this.f16144h = true;
        }
        Iterator it = this.f16140d.iterator();
        while (it.hasNext()) {
            ((zzea) it.next()).c(this.f16139c);
        }
        this.f16140d.clear();
    }

    public final void f(Object obj) {
        h();
        for (zzea zzeaVar : this.f16140d) {
            if (zzeaVar.f16057a.equals(obj)) {
                zzeaVar.c(this.f16139c);
                this.f16140d.remove(zzeaVar);
            }
        }
    }

    private zzeb(CopyOnWriteArraySet copyOnWriteArraySet, Looper looper, zzdm zzdmVar, zzdz zzdzVar) {
        this.f16137a = zzdmVar;
        this.f16140d = copyOnWriteArraySet;
        this.f16139c = zzdzVar;
        this.f16143g = new Object();
        this.f16141e = new ArrayDeque();
        this.f16142f = new ArrayDeque();
        this.f16138b = zzdmVar.a(looper, new Handler.Callback() { // from class: com.google.android.gms.internal.ads.zzdw
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                zzeb.g(this.f15790o, message);
                return true;
            }
        });
        this.f16145i = true;
    }
}
