package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgou extends zzgow {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f19367o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f19368p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzgpe f19369q;

    zzgou(zzgpe zzgpeVar) {
        this.f19369q = zzgpeVar;
        this.f19368p = zzgpeVar.o();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f19367o < this.f19368p;
    }

    @Override // com.google.android.gms.internal.ads.zzgoy
    public final byte zza() {
        int i10 = this.f19367o;
        if (i10 >= this.f19368p) {
            throw new NoSuchElementException();
        }
        this.f19367o = i10 + 1;
        return this.f19369q.m(i10);
    }
}
