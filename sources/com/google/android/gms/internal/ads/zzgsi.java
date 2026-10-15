package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgsi extends zzgow {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final zzgsm f19580o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    zzgoy f19581p = a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzgso f19582q;

    zzgsi(zzgso zzgsoVar) {
        this.f19582q = zzgsoVar;
        this.f19580o = new zzgsm(zzgsoVar, null);
    }

    private final zzgoy a() {
        zzgsm zzgsmVar = this.f19580o;
        if (zzgsmVar.hasNext()) {
            return zzgsmVar.next().iterator();
        }
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f19581p != null;
    }

    @Override // com.google.android.gms.internal.ads.zzgoy
    public final byte zza() {
        zzgoy zzgoyVar = this.f19581p;
        if (zzgoyVar == null) {
            throw new NoSuchElementException();
        }
        byte bZza = zzgoyVar.zza();
        if (!this.f19581p.hasNext()) {
            this.f19581p = a();
        }
        return bZza;
    }
}
