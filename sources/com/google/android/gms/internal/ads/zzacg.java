package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzacg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final zzabb f8489a;

    protected zzacg(zzabb zzabbVar) {
        this.f8489a = zzabbVar;
    }

    protected abstract boolean a(zzen zzenVar) throws zzbu;

    protected abstract boolean b(zzen zzenVar, long j10) throws zzbu;

    public final boolean c(zzen zzenVar, long j10) throws zzbu {
        return a(zzenVar) && b(zzenVar, j10);
    }
}
