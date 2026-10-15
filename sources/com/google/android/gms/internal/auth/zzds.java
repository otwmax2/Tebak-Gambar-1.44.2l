package com.google.android.gms.internal.auth;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzds extends zzdv {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f21457o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f21458p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzeb f21459q;

    zzds(zzeb zzebVar) {
        this.f21459q = zzebVar;
        this.f21458p = zzebVar.i();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f21457o < this.f21458p;
    }

    @Override // com.google.android.gms.internal.auth.zzdx
    public final byte zza() {
        int i10 = this.f21457o;
        if (i10 >= this.f21458p) {
            throw new NoSuchElementException();
        }
        this.f21457o = i10 + 1;
        return this.f21459q.g(i10);
    }
}
