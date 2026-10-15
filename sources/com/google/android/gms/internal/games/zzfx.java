package com.google.android.gms.internal.games;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfx<E> extends zzfr<E> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NullableDecl
    private Object[] f23206d;

    public zzfx() {
        super(4);
    }

    @Override // com.google.android.gms.internal.games.zzfr, com.google.android.gms.internal.games.zzfu
    public final /* synthetic */ zzfu a(Iterable iterable) {
        zzfo.b(iterable);
        super.a(iterable);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.games.zzfr, com.google.android.gms.internal.games.zzfu
    public final /* synthetic */ zzfu b(Object obj) {
        zzfo.b(obj);
        this.f23206d = null;
        super.b(obj);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.games.zzfr
    /* JADX INFO: renamed from: c */
    public final /* synthetic */ zzfr b(Object obj) {
        return (zzfx) b(obj);
    }

    public final zzfy<E> e() {
        int i10 = this.f23198b;
        if (i10 == 0) {
            return zzgb.f23211v;
        }
        if (i10 == 1) {
            return zzfy.s(this.f23197a[0]);
        }
        zzfy<E> zzfyVarM = zzfy.m(i10, this.f23197a);
        this.f23198b = zzfyVarM.size();
        this.f23199c = true;
        this.f23206d = null;
        return zzfyVarM;
    }
}
