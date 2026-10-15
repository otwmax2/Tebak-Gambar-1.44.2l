package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzis extends zziu {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f23583o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f23584p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzjb f23585q;

    zzis(zzjb zzjbVar) {
        this.f23585q = zzjbVar;
        this.f23584p = zzjbVar.i();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f23583o < this.f23584p;
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final byte zza() {
        int i10 = this.f23583o;
        if (i10 >= this.f23584p) {
            throw new NoSuchElementException();
        }
        this.f23583o = i10 + 1;
        return this.f23585q.g(i10);
    }
}
