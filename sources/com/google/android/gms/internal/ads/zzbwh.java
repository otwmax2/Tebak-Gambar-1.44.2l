package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbwh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Clock f11432a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbwf f11433b;

    zzbwh(Clock clock, zzbwf zzbwfVar) {
        this.f11432a = clock;
        this.f11433b = zzbwfVar;
    }

    public static zzbwh a(Context context) {
        return zzbxg.d(context).b();
    }

    public final void b(int i10, long j10) {
        this.f11433b.b(i10, j10);
    }

    public final void c() {
        this.f11433b.a();
    }

    public final void d(com.google.android.gms.ads.internal.client.zzff zzffVar) {
        this.f11433b.b(-1, this.f11432a.a());
    }

    public final void e() {
        this.f11433b.b(-1, this.f11432a.a());
    }
}
