package com.google.android.play.core.assetpacks;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class z implements v4.c0<y> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v4.c0<Context> f26201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v4.c0<w1> f26202b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v4.c0<e1> f26203c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v4.c0<u3> f26204d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final v4.c0<h1> f26205e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final v4.c0<r0> f26206f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final v4.c0<Executor> f26207g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final v4.c0<Executor> f26208h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final v4.c0<p2> f26209i;

    public z(v4.c0<Context> c0Var, v4.c0<w1> c0Var2, v4.c0<e1> c0Var3, v4.c0<u3> c0Var4, v4.c0<h1> c0Var5, v4.c0<r0> c0Var6, v4.c0<Executor> c0Var7, v4.c0<Executor> c0Var8, v4.c0<p2> c0Var9) {
        this.f26201a = c0Var;
        this.f26202b = c0Var2;
        this.f26203c = c0Var3;
        this.f26204d = c0Var4;
        this.f26205e = c0Var5;
        this.f26206f = c0Var6;
        this.f26207g = c0Var7;
        this.f26208h = c0Var8;
        this.f26209i = c0Var9;
    }

    @Override // v4.c0
    public final /* bridge */ /* synthetic */ y zza() {
        Context contextA = ((r3) this.f26201a).a();
        w1 w1VarZza = this.f26202b.zza();
        e1 e1VarZza = this.f26203c.zza();
        v4.y yVarA = v4.a0.a(this.f26204d);
        h1 h1VarZza = this.f26205e.zza();
        return new y(contextA, w1VarZza, e1VarZza, yVarA, h1VarZza, this.f26206f.zza(), v4.a0.a(this.f26207g), v4.a0.a(this.f26208h), this.f26209i.zza());
    }
}
