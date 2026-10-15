package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzty implements zzte {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzff f20742a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f20743b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zztx f20744c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzwx f20745d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzpq f20746e;

    public zzty(zzff zzffVar, zztx zztxVar, byte[] bArr) {
        zzpq zzpqVar = new zzpq();
        zzwx zzwxVar = new zzwx(-1);
        this.f20742a = zzffVar;
        this.f20744c = zztxVar;
        this.f20746e = zzpqVar;
        this.f20745d = zzwxVar;
        this.f20743b = 1048576;
    }

    public final zzty a(int i10) {
        this.f20743b = i10;
        return this;
    }

    public final zzua b(zzbg zzbgVar) {
        Objects.requireNonNull(zzbgVar.f10682b);
        return new zzua(zzbgVar, this.f20742a, this.f20744c, zzpz.f20440a, this.f20745d, this.f20743b, null, null);
    }
}
