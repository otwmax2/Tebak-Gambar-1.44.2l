package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcjs implements zzexv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzchy f13076a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f13077b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f13078c;

    /* synthetic */ zzcjs(zzchy zzchyVar, zzcjr zzcjrVar) {
        this.f13076a = zzchyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzexv
    public final zzexw a() {
        zzgxg.c(this.f13077b, Context.class);
        return new zzcju(this.f13076a, this.f13077b, this.f13078c, null);
    }

    @Override // com.google.android.gms.internal.ads.zzexv
    public final /* synthetic */ zzexv b(Context context) {
        Objects.requireNonNull(context);
        this.f13077b = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzexv
    public final /* synthetic */ zzexv o(String str) {
        this.f13078c = str;
        return this;
    }
}
