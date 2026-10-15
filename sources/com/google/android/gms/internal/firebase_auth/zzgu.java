package com.google.android.gms.internal.firebase_auth;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgu extends zzgw {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f22644o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f22645p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final /* synthetic */ zzgv f22646q;

    zzgu(zzgv zzgvVar) {
        this.f22646q = zzgvVar;
        this.f22645p = zzgvVar.g();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f22644o < this.f22645p;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzha
    public final byte zza() {
        int i10 = this.f22644o;
        if (i10 >= this.f22645p) {
            throw new NoSuchElementException();
        }
        this.f22644o = i10 + 1;
        return this.f22646q.o(i10);
    }
}
