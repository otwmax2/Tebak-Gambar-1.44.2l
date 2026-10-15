package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfyf extends zzfxk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f18854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f18855b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f18856c = 16;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfyd f18857d;

    /* synthetic */ zzfyf(int i10, int i11, int i12, zzfyd zzfydVar, zzfye zzfyeVar) {
        this.f18854a = i10;
        this.f18855b = i11;
        this.f18857d = zzfydVar;
    }

    public final int a() {
        return this.f18854a;
    }

    public final zzfyd b() {
        return this.f18857d;
    }

    public final boolean c() {
        return this.f18857d != zzfyd.f18852d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzfyf)) {
            return false;
        }
        zzfyf zzfyfVar = (zzfyf) obj;
        return zzfyfVar.f18854a == this.f18854a && zzfyfVar.f18855b == this.f18855b && zzfyfVar.f18857d == this.f18857d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f18854a), Integer.valueOf(this.f18855b), 16, this.f18857d});
    }

    public final String toString() {
        return "AesEax Parameters (variant: " + String.valueOf(this.f18857d) + ", " + this.f18855b + "-byte IV, 16-byte tag, and " + this.f18854a + "-byte key)";
    }
}
