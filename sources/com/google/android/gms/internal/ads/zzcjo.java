package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcjo implements zzewh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzchy f13063a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f13064b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f13065c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zzq f13066d;

    /* synthetic */ zzcjo(zzchy zzchyVar, zzcjn zzcjnVar) {
        this.f13063a = zzchyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzewh
    public final /* synthetic */ zzewh a(com.google.android.gms.ads.internal.client.zzq zzqVar) {
        Objects.requireNonNull(zzqVar);
        this.f13066d = zzqVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzewh
    public final /* synthetic */ zzewh b(Context context) {
        Objects.requireNonNull(context);
        this.f13064b = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzewh
    public final zzewi d() {
        zzgxg.c(this.f13064b, Context.class);
        zzgxg.c(this.f13065c, String.class);
        zzgxg.c(this.f13066d, com.google.android.gms.ads.internal.client.zzq.class);
        return new zzcjq(this.f13063a, this.f13064b, this.f13065c, this.f13066d, null);
    }

    @Override // com.google.android.gms.internal.ads.zzewh
    public final /* synthetic */ zzewh u(String str) {
        Objects.requireNonNull(str);
        this.f13065c = str;
        return this;
    }
}
