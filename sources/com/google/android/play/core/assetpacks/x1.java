package com.google.android.play.core.assetpacks;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class x1 implements v4.c0<w1> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v4.c0<e0> f26172a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v4.c0<u3> f26173b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v4.c0<h1> f26174c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v4.c0<Executor> f26175d;

    public x1(v4.c0<e0> c0Var, v4.c0<u3> c0Var2, v4.c0<h1> c0Var3, v4.c0<Executor> c0Var4) {
        this.f26172a = c0Var;
        this.f26173b = c0Var2;
        this.f26174c = c0Var3;
        this.f26175d = c0Var4;
    }

    @Override // v4.c0
    public final /* bridge */ /* synthetic */ w1 zza() {
        e0 e0VarZza = this.f26172a.zza();
        return new w1(e0VarZza, v4.a0.a(this.f26173b), this.f26174c.zza(), v4.a0.a(this.f26175d));
    }
}
