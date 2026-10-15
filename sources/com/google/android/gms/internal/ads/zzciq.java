package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzciq implements zzeuq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzchy f12770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f12771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f12772c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zzq f12773d;

    /* synthetic */ zzciq(zzchy zzchyVar, zzcip zzcipVar) {
        this.f12770a = zzchyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeuq
    public final /* synthetic */ zzeuq a(com.google.android.gms.ads.internal.client.zzq zzqVar) {
        Objects.requireNonNull(zzqVar);
        this.f12773d = zzqVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeuq
    public final /* synthetic */ zzeuq b(Context context) {
        Objects.requireNonNull(context);
        this.f12771b = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeuq
    public final zzeur d() {
        zzgxg.c(this.f12771b, Context.class);
        zzgxg.c(this.f12772c, String.class);
        zzgxg.c(this.f12773d, com.google.android.gms.ads.internal.client.zzq.class);
        return new zzcis(this.f12770a, this.f12771b, this.f12772c, this.f12773d, null);
    }

    @Override // com.google.android.gms.internal.ads.zzeuq
    public final /* synthetic */ zzeuq u(String str) {
        Objects.requireNonNull(str);
        this.f12772c = str;
        return this;
    }
}
