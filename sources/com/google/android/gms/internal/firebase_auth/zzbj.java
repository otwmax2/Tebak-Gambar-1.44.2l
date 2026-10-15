package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbj<E> extends zzbc<E> {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzbg<E> f22437q;

    zzbj(zzbg<E> zzbgVar, int i10) {
        super(zzbgVar.size(), i10);
        this.f22437q = zzbgVar;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbc
    protected final E a(int i10) {
        return this.f22437q.get(i10);
    }
}
