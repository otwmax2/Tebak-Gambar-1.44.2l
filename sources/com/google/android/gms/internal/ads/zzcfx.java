package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcfx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f12125a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f12126b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f12127c;

    private zzcfx(int i10, int i11, int i12) {
        this.f12125a = i10;
        this.f12127c = i11;
        this.f12126b = i12;
    }

    public static zzcfx a() {
        return new zzcfx(0, 0, 0);
    }

    public static zzcfx b(int i10, int i11) {
        return new zzcfx(1, i10, i11);
    }

    public static zzcfx c(com.google.android.gms.ads.internal.client.zzq zzqVar) {
        return zzqVar.f5934r ? new zzcfx(3, 0, 0) : zzqVar.f5939w ? new zzcfx(2, 0, 0) : zzqVar.f5938v ? a() : b(zzqVar.f5936t, zzqVar.f5933q);
    }

    public static zzcfx d() {
        return new zzcfx(5, 0, 0);
    }

    public static zzcfx e() {
        return new zzcfx(4, 0, 0);
    }

    public final boolean f() {
        return this.f12125a == 0;
    }

    public final boolean g() {
        return this.f12125a == 2;
    }

    public final boolean h() {
        return this.f12125a == 5;
    }

    public final boolean i() {
        return this.f12125a == 3;
    }

    public final boolean j() {
        return this.f12125a == 4;
    }
}
