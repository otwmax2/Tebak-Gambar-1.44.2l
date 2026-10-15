package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcig implements zzetc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzchy f12567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f12568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f12569c;

    /* synthetic */ zzcig(zzchy zzchyVar, zzcif zzcifVar) {
        this.f12567a = zzchyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetc
    public final zzetd a() {
        zzgxg.c(this.f12568b, Context.class);
        zzgxg.c(this.f12569c, String.class);
        return new zzcii(this.f12567a, this.f12568b, this.f12569c, null);
    }

    @Override // com.google.android.gms.internal.ads.zzetc
    public final /* synthetic */ zzetc b(Context context) {
        Objects.requireNonNull(context);
        this.f12568b = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzetc
    public final /* synthetic */ zzetc o(String str) {
        Objects.requireNonNull(str);
        this.f12569c = str;
        return this;
    }
}
