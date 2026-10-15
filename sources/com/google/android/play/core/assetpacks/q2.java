package com.google.android.play.core.assetpacks;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class q2 implements v4.c0<p2> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v4.c0<e0> f26053a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v4.c0<r2> f26054b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v4.c0<u4.b> f26055c;

    public q2(v4.c0<e0> c0Var, v4.c0<r2> c0Var2, v4.c0<u4.b> c0Var3) {
        this.f26053a = c0Var;
        this.f26054b = c0Var2;
        this.f26055c = c0Var3;
    }

    @Override // v4.c0
    public final /* bridge */ /* synthetic */ p2 zza() {
        e0 e0VarZza = this.f26053a.zza();
        return new p2(e0VarZza, this.f26054b.zza(), this.f26055c.zza());
    }
}
