package com.google.android.play.core.assetpacks;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class o2 implements v4.c0<n2> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v4.c0<e0> f26026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v4.c0<u3> f26027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v4.c0<w1> f26028c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v4.c0<Executor> f26029d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final v4.c0<h1> f26030e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final v4.c0<u4.b> f26031f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final v4.c0<p2> f26032g;

    public o2(v4.c0<e0> c0Var, v4.c0<u3> c0Var2, v4.c0<w1> c0Var3, v4.c0<Executor> c0Var4, v4.c0<h1> c0Var5, v4.c0<u4.b> c0Var6, v4.c0<p2> c0Var7) {
        this.f26026a = c0Var;
        this.f26027b = c0Var2;
        this.f26028c = c0Var3;
        this.f26029d = c0Var4;
        this.f26030e = c0Var5;
        this.f26031f = c0Var6;
        this.f26032g = c0Var7;
    }

    @Override // v4.c0
    public final /* bridge */ /* synthetic */ n2 zza() {
        e0 e0VarZza = this.f26026a.zza();
        v4.y yVarA = v4.a0.a(this.f26027b);
        w1 w1VarZza = this.f26028c.zza();
        return new n2(e0VarZza, yVarA, w1VarZza, v4.a0.a(this.f26029d), this.f26030e.zza(), this.f26031f.zza(), this.f26032g.zza());
    }
}
