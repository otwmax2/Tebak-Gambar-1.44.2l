package com.google.android.gms.internal.games;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfv extends zzft {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final transient int f23202q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final transient int f23203r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final /* synthetic */ zzft f23204s;

    zzfv(zzft zzftVar, int i10, int i11) {
        this.f23204s = zzftVar;
        this.f23202q = i10;
        this.f23203r = i11;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zzfo.c(i10, this.f23203r);
        return this.f23204s.get(i10 + this.f23202q);
    }

    @Override // com.google.android.gms.internal.games.zzfs
    final Object[] i() {
        return this.f23204s.i();
    }

    @Override // com.google.android.gms.internal.games.zzfs
    final int j() {
        return this.f23204s.j() + this.f23202q;
    }

    @Override // com.google.android.gms.internal.games.zzfs
    final int k() {
        return this.f23204s.j() + this.f23202q + this.f23203r;
    }

    @Override // com.google.android.gms.internal.games.zzft
    /* JADX INFO: renamed from: o */
    public final zzft subList(int i10, int i11) {
        zzfo.d(i10, i11, this.f23203r);
        zzft zzftVar = this.f23204s;
        int i12 = this.f23202q;
        return (zzft) zzftVar.subList(i10 + i12, i11 + i12);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f23203r;
    }

    @Override // com.google.android.gms.internal.games.zzft, java.util.List
    public final /* synthetic */ List subList(int i10, int i11) {
        return subList(i10, i11);
    }
}
