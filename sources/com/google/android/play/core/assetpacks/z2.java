package com.google.android.play.core.assetpacks;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class z2 implements v4.c0<y2> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v4.c0<e0> f26220a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v4.c0<u3> f26221b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v4.c0<w1> f26222c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v4.c0<Executor> f26223d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final v4.c0<h1> f26224e;

    public z2(v4.c0<e0> c0Var, v4.c0<u3> c0Var2, v4.c0<w1> c0Var3, v4.c0<Executor> c0Var4, v4.c0<h1> c0Var5) {
        this.f26220a = c0Var;
        this.f26221b = c0Var2;
        this.f26222c = c0Var3;
        this.f26223d = c0Var4;
        this.f26224e = c0Var5;
    }

    @Override // v4.c0
    public final /* bridge */ /* synthetic */ y2 zza() {
        e0 e0VarZza = this.f26220a.zza();
        return new y2(e0VarZza, v4.a0.a(this.f26221b), this.f26222c.zza(), v4.a0.a(this.f26223d), this.f26224e.zza());
    }
}
