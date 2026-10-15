package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzarr implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzaqx f9824a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzamv f9825b;

    public zzarr(zzaqx zzaqxVar, zzamv zzamvVar) {
        this.f9824a = zzaqxVar;
        this.f9825b = zzamvVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        if (this.f9824a.l() != null) {
            this.f9824a.l().get();
        }
        zzans zzansVarC = this.f9824a.c();
        if (zzansVarC == null) {
            return null;
        }
        try {
            synchronized (this.f9825b) {
                zzamv zzamvVar = this.f9825b;
                byte[] bArrT = zzansVarC.t();
                zzamvVar.j(bArrT, 0, bArrT.length, zzgpy.a());
            }
            return null;
        } catch (zzgqy | NullPointerException unused) {
            return null;
        }
    }
}
