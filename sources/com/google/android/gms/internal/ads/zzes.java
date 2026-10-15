package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzes implements zzdv {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final List f17286b = new ArrayList(50);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f17287a;

    public zzes(Handler handler) {
        this.f17287a = handler;
    }

    static /* bridge */ /* synthetic */ void a(zzer zzerVar) {
        List list = f17286b;
        synchronized (list) {
            if (list.size() < 50) {
                list.add(zzerVar);
            }
        }
    }

    private static zzer c() {
        zzer zzerVar;
        List list = f17286b;
        synchronized (list) {
            zzerVar = list.isEmpty() ? new zzer(null) : (zzer) list.remove(list.size() - 1);
        }
        return zzerVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdv
    public final void G(int i10) {
        this.f17287a.removeMessages(2);
    }

    @Override // com.google.android.gms.internal.ads.zzdv
    public final boolean Q(int i10) {
        return this.f17287a.sendEmptyMessage(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzdv
    public final void b(Object obj) {
        this.f17287a.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.gms.internal.ads.zzdv
    public final boolean g(int i10, long j10) {
        return this.f17287a.sendEmptyMessageAtTime(2, j10);
    }

    @Override // com.google.android.gms.internal.ads.zzdv
    public final zzdu h(int i10, Object obj) {
        zzer zzerVarC = c();
        zzerVarC.a(this.f17287a.obtainMessage(i10, obj), this);
        return zzerVarC;
    }

    @Override // com.google.android.gms.internal.ads.zzdv
    public final boolean i(Runnable runnable) {
        return this.f17287a.post(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzdv
    public final boolean j(zzdu zzduVar) {
        return ((zzer) zzduVar).b(this.f17287a);
    }

    @Override // com.google.android.gms.internal.ads.zzdv
    public final zzdu k(int i10, int i11, int i12) {
        zzer zzerVarC = c();
        zzerVarC.a(this.f17287a.obtainMessage(1, i11, i12), this);
        return zzerVarC;
    }

    @Override // com.google.android.gms.internal.ads.zzdv
    public final boolean w(int i10) {
        return this.f17287a.hasMessages(0);
    }

    @Override // com.google.android.gms.internal.ads.zzdv
    public final zzdu z(int i10) {
        zzer zzerVarC = c();
        zzerVarC.a(this.f17287a.obtainMessage(i10), this);
        return zzerVarC;
    }

    @Override // com.google.android.gms.internal.ads.zzdv
    public final Looper zza() {
        return this.f17287a.getLooper();
    }
}
