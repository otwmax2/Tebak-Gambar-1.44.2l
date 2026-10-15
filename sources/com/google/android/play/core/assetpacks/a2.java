package com.google.android.play.core.assetpacks;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class a2 implements v4.c0<z1> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v4.c0<w1> f25809a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v4.c0<e0> f25810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v4.c0<o0> f25811c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v4.c0<u4.b> f25812d;

    public a2(v4.c0<w1> c0Var, v4.c0<e0> c0Var2, v4.c0<o0> c0Var3, v4.c0<u4.b> c0Var4) {
        this.f25809a = c0Var;
        this.f25810b = c0Var2;
        this.f25811c = c0Var3;
        this.f25812d = c0Var4;
    }

    @Override // v4.c0
    public final /* bridge */ /* synthetic */ z1 zza() {
        w1 w1VarZza = this.f25809a.zza();
        e0 e0VarZza = this.f25810b.zza();
        return new z1(w1VarZza, e0VarZza, this.f25811c.zza(), this.f25812d.zza());
    }
}
