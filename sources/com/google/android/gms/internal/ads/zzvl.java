package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzvl implements Comparable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f20857o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f20858p;

    public zzvl(zzaf zzafVar, int i10) {
        this.f20857o = 1 == (zzafVar.f8723d & 1);
        this.f20858p = zzwc.r(i10, false);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final int compareTo(zzvl zzvlVar) {
        return zzfpz.i().d(this.f20858p, zzvlVar.f20858p).d(this.f20857o, zzvlVar.f20857o).a();
    }
}
