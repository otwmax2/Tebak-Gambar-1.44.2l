package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfht extends zzfhq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f18237a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f18238b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f18239c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte f18240d;

    zzfht() {
    }

    @Override // com.google.android.gms.internal.ads.zzfhq
    public final zzfhq a(String str) {
        Objects.requireNonNull(str, "Null clientVersion");
        this.f18237a = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhq
    public final zzfhq b(boolean z10) {
        this.f18239c = true;
        this.f18240d = (byte) (this.f18240d | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhq
    public final zzfhq c(boolean z10) {
        this.f18238b = z10;
        this.f18240d = (byte) (this.f18240d | 1);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhq
    public final zzfhr d() {
        String str;
        if (this.f18240d == 3 && (str = this.f18237a) != null) {
            return new zzfhv(str, this.f18238b, this.f18239c, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f18237a == null) {
            sb.append(" clientVersion");
        }
        if ((this.f18240d & 1) == 0) {
            sb.append(" shouldGetAdvertisingId");
        }
        if ((this.f18240d & 2) == 0) {
            sb.append(" isGooglePlayServicesAvailable");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
