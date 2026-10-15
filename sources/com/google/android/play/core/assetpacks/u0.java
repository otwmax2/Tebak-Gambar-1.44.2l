package com.google.android.play.core.assetpacks;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class u0 implements v4.c0<w> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v4.c0<Context> f26099a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v4.c0<e0> f26100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v4.c0<l3> f26101c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v4.c0<b1> f26102d;

    public u0(v4.c0<Context> c0Var, v4.c0<e0> c0Var2, v4.c0<l3> c0Var3, v4.c0<b1> c0Var4) {
        this.f26099a = c0Var;
        this.f26100b = c0Var2;
        this.f26101c = c0Var3;
        this.f26102d = c0Var4;
    }

    @Override // v4.c0
    public final /* bridge */ /* synthetic */ w zza() {
        return new w(((r3) this.f26099a).a(), this.f26100b.zza(), this.f26101c.zza(), this.f26102d.zza());
    }
}
