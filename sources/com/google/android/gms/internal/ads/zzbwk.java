package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbwk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f11436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Clock f11437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.google.android.gms.ads.internal.util.zzg f11438c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzbxf f11439d;

    private zzbwk() {
    }

    /* synthetic */ zzbwk(zzbwj zzbwjVar) {
    }

    public final zzbwk a(com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.f11438c = zzgVar;
        return this;
    }

    public final zzbwk b(Context context) {
        Objects.requireNonNull(context);
        this.f11436a = context;
        return this;
    }

    public final zzbwk c(Clock clock) {
        Objects.requireNonNull(clock);
        this.f11437b = clock;
        return this;
    }

    public final zzbwk d(zzbxf zzbxfVar) {
        this.f11439d = zzbxfVar;
        return this;
    }

    public final zzbxg e() {
        zzgxg.c(this.f11436a, Context.class);
        zzgxg.c(this.f11437b, Clock.class);
        zzgxg.c(this.f11438c, com.google.android.gms.ads.internal.util.zzg.class);
        zzgxg.c(this.f11439d, zzbxf.class);
        return new zzbwm(this.f11436a, this.f11437b, this.f11438c, this.f11439d, null);
    }
}
