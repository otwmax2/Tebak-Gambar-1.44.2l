package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzwq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CopyOnWriteArrayList f20964a = new CopyOnWriteArrayList();

    public final void a(Handler handler, zzwr zzwrVar) {
        c(zzwrVar);
        this.f20964a.add(new zzwp(handler, zzwrVar));
    }

    public final void b(final int i10, final long j10, final long j11) {
        for (final zzwp zzwpVar : this.f20964a) {
            if (!zzwpVar.f20963c) {
                zzwpVar.f20961a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzwo
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzwp zzwpVar2 = zzwpVar;
                        zzwpVar2.f20962b.s(i10, j10, j11);
                    }
                });
            }
        }
    }

    public final void c(zzwr zzwrVar) {
        for (zzwp zzwpVar : this.f20964a) {
            if (zzwpVar.f20962b == zzwrVar) {
                zzwpVar.c();
                this.f20964a.remove(zzwpVar);
            }
        }
    }
}
