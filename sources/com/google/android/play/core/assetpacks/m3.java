package com.google.android.play.core.assetpacks;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class m3 implements v4.c0<l3> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v4.c0<e0> f25999a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v4.c0<u3> f26000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v4.c0<y> f26001c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v4.c0<x4.a> f26002d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final v4.c0<w1> f26003e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final v4.c0<h1> f26004f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final v4.c0<r0> f26005g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final v4.c0<Executor> f26006h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final v4.c0<u4.b> f26007i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final v4.c0<p2> f26008j;

    public m3(v4.c0<e0> c0Var, v4.c0<u3> c0Var2, v4.c0<y> c0Var3, v4.c0<x4.a> c0Var4, v4.c0<w1> c0Var5, v4.c0<h1> c0Var6, v4.c0<r0> c0Var7, v4.c0<Executor> c0Var8, v4.c0<u4.b> c0Var9, v4.c0<p2> c0Var10) {
        this.f25999a = c0Var;
        this.f26000b = c0Var2;
        this.f26001c = c0Var3;
        this.f26002d = c0Var4;
        this.f26003e = c0Var5;
        this.f26004f = c0Var6;
        this.f26005g = c0Var7;
        this.f26006h = c0Var8;
        this.f26007i = c0Var9;
        this.f26008j = c0Var10;
    }

    @Override // v4.c0
    public final /* bridge */ /* synthetic */ l3 zza() {
        e0 e0VarZza = this.f25999a.zza();
        v4.y yVarA = v4.a0.a(this.f26000b);
        y yVarZza = this.f26001c.zza();
        x4.a aVarZza = this.f26002d.zza();
        w1 w1VarZza = this.f26003e.zza();
        h1 h1VarZza = this.f26004f.zza();
        return new l3(e0VarZza, yVarA, yVarZza, aVarZza, w1VarZza, h1VarZza, this.f26005g.zza(), v4.a0.a(this.f26006h), this.f26007i.zza(), this.f26008j.zza());
    }
}
