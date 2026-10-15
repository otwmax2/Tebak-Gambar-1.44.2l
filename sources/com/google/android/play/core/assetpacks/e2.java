package com.google.android.play.core.assetpacks;

import android.content.Context;
import java.io.File;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class e2 implements v4.c0<d2> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v4.c0<String> f25869a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v4.c0<y> f25870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v4.c0<h1> f25871c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v4.c0<Context> f25872d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final v4.c0<r2> f25873e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final v4.c0<Executor> f25874f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final v4.c0<p2> f25875g;

    public e2(v4.c0<String> c0Var, v4.c0<y> c0Var2, v4.c0<h1> c0Var3, v4.c0<Context> c0Var4, v4.c0<r2> c0Var5, v4.c0<Executor> c0Var6, v4.c0<p2> c0Var7) {
        this.f25869a = c0Var;
        this.f25870b = c0Var2;
        this.f25871c = c0Var3;
        this.f25872d = c0Var4;
        this.f25873e = c0Var5;
        this.f25874f = c0Var6;
        this.f25875g = c0Var7;
    }

    @Override // v4.c0
    public final /* bridge */ /* synthetic */ d2 zza() {
        String strZza = this.f25869a.zza();
        y yVarZza = this.f25870b.zza();
        h1 h1VarZza = this.f25871c.zza();
        Context contextA = ((r3) this.f25872d).a();
        r2 r2VarZza = this.f25873e.zza();
        return new d2(strZza != null ? new File(contextA.getExternalFilesDir(null), strZza) : contextA.getExternalFilesDir(null), yVarZza, h1VarZza, contextA, r2VarZza, v4.a0.a(this.f25874f), this.f25875g.zza());
    }
}
