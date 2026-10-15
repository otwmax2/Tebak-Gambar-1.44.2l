package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbyb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f11510a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f11511b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzbyc f11512c;

    public zzbyb(zzbyc zzbycVar) {
        this.f11512c = zzbycVar;
    }

    public final long a() {
        return this.f11511b;
    }

    public final Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putLong("topen", this.f11510a);
        bundle.putLong("tclose", this.f11511b);
        return bundle;
    }

    public final void c() {
        this.f11511b = this.f11512c.f11513a.b();
    }

    public final void d() {
        this.f11510a = this.f11512c.f11513a.b();
    }
}
