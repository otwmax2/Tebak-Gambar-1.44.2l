package com.google.android.play.core.assetpacks;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class f0 implements v4.c0<e0> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v4.c0<Context> f25886a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v4.c0<r2> f25887b;

    public f0(v4.c0<Context> c0Var, v4.c0<r2> c0Var2) {
        this.f25886a = c0Var;
        this.f25887b = c0Var2;
    }

    @Override // v4.c0
    public final /* bridge */ /* synthetic */ e0 zza() {
        return new e0(((r3) this.f25886a).a(), this.f25887b.zza());
    }
}
