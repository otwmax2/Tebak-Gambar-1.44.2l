package com.google.android.play.core.assetpacks;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class q3 implements v4.c0<u3> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v4.c0<Context> f26056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v4.c0<s> f26057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v4.c0<d2> f26058c;

    public q3(v4.c0<Context> c0Var, v4.c0<s> c0Var2, v4.c0<d2> c0Var3) {
        this.f26056a = c0Var;
        this.f26057b = c0Var2;
        this.f26058c = c0Var3;
    }

    @Override // v4.c0
    public final /* bridge */ /* synthetic */ u3 zza() {
        u3 u3Var = n3.b(((r3) this.f26056a).a()) == null ? (u3) v4.a0.a(this.f26057b).zza() : (u3) v4.a0.a(this.f26058c).zza();
        v4.b0.a(u3Var);
        return u3Var;
    }
}
