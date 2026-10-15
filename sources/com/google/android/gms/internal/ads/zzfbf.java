package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfbf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfaj f17852a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfbd f17853b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfaf f17854c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private zzfbl f17856e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private int f17857f = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    private final ArrayDeque f17855d = new ArrayDeque();

    public zzfbf(zzfaj zzfajVar, zzfaf zzfafVar, zzfbd zzfbdVar) {
        this.f17852a = zzfajVar;
        this.f17854c = zzfafVar;
        this.f17853b = zzfbdVar;
        zzfafVar.b(new zzfba(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void h() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.R5)).booleanValue() && !com.google.android.gms.ads.internal.zzt.q().h().f().h()) {
            this.f17855d.clear();
            return;
        }
        if (i()) {
            while (!this.f17855d.isEmpty()) {
                zzfbe zzfbeVar = (zzfbe) this.f17855d.pollFirst();
                if (zzfbeVar == null || (zzfbeVar.zza() != null && this.f17852a.a(zzfbeVar.zza()))) {
                    zzfbl zzfblVar = new zzfbl(this.f17852a, this.f17853b, zzfbeVar);
                    this.f17856e = zzfblVar;
                    zzfblVar.d(new zzfbb(this, zzfbeVar));
                    return;
                }
            }
        }
    }

    private final synchronized boolean i() {
        return this.f17856e == null;
    }

    public final synchronized zzfut a(zzfbe zzfbeVar) {
        this.f17857f = 2;
        if (i()) {
            return null;
        }
        return this.f17856e.a(zzfbeVar);
    }

    public final synchronized void e(zzfbe zzfbeVar) {
        this.f17855d.add(zzfbeVar);
    }

    final /* synthetic */ void f() {
        synchronized (this) {
            this.f17857f = 1;
            h();
        }
    }
}
