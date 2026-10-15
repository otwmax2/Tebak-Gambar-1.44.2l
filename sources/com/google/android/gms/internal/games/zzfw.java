package com.google.android.gms.internal.games;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfw<E> extends zzfq<E> {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzft<E> f23205q;

    zzfw(zzft<E> zzftVar, int i10) {
        super(zzftVar.size(), i10);
        this.f23205q = zzftVar;
    }

    @Override // com.google.android.gms.internal.games.zzfq
    protected final E a(int i10) {
        return this.f23205q.get(i10);
    }
}
