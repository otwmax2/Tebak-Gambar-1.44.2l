package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcps extends zzcok {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzbfo f13724i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Runnable f13725j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Executor f13726k;

    public zzcps(zzcql zzcqlVar, zzbfo zzbfoVar, Runnable runnable, Executor executor) {
        super(zzcqlVar);
        this.f13724i = zzbfoVar;
        this.f13725j = runnable;
        this.f13726k = executor;
    }

    static /* synthetic */ void o(AtomicReference atomicReference) {
        Runnable runnable = (Runnable) atomicReference.getAndSet(null);
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcqm
    public final void b() {
        final zzcpq zzcpqVar = new zzcpq(new AtomicReference(this.f13725j));
        this.f13726k.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcpr
            @Override // java.lang.Runnable
            public final void run() {
                this.f13722o.p(zzcpqVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcok
    public final int h() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcok
    public final View i() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcok
    public final com.google.android.gms.ads.internal.client.zzdq j() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcok
    public final zzeyd k() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcok
    public final zzeyd l() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcok
    public final void m() {
    }

    @Override // com.google.android.gms.internal.ads.zzcok
    public final void n(ViewGroup viewGroup, com.google.android.gms.ads.internal.client.zzq zzqVar) {
    }

    final /* synthetic */ void p(Runnable runnable) {
        try {
            if (this.f13724i.U0(ObjectWrapper.Q4(runnable))) {
                return;
            }
            o(((zzcpq) runnable).f13721o);
        } catch (RemoteException unused) {
            o(((zzcpq) runnable).f13721o);
        }
    }
}
