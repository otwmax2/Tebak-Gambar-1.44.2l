package com.google.android.play.core.assetpacks;

import android.content.ComponentName;
import android.content.Context;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class p3 implements v4.c0<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v4.c0<l3> f26041a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v4.c0<Context> f26042b;

    public p3(v4.c0<l3> c0Var, v4.c0<Context> c0Var2) {
        this.f26041a = c0Var;
        this.f26042b = c0Var2;
    }

    @Override // v4.c0
    public final /* bridge */ /* synthetic */ Object zza() {
        l3 l3VarZza = this.f26041a.zza();
        Context contextA = ((r3) this.f26042b).a();
        l3 l3Var = l3VarZza;
        v4.o.a(contextA.getPackageManager(), new ComponentName(contextA.getPackageName(), "com.google.android.play.core.assetpacks.AssetPackExtractionService"), 4);
        v4.o.a(contextA.getPackageManager(), new ComponentName(contextA.getPackageName(), "com.google.android.play.core.assetpacks.ExtractionForegroundService"), 4);
        v4.b0.a(l3Var);
        return l3Var;
    }
}
