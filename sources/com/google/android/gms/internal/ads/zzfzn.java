package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfzn extends zzfxk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f18914a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfzl f18915b;

    /* synthetic */ zzfzn(int i10, zzfzl zzfzlVar, zzfzm zzfzmVar) {
        this.f18914a = i10;
        this.f18915b = zzfzlVar;
    }

    public final int a() {
        return this.f18914a;
    }

    public final zzfzl b() {
        return this.f18915b;
    }

    public final boolean c() {
        return this.f18915b != zzfzl.f18912d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzfzn)) {
            return false;
        }
        zzfzn zzfznVar = (zzfzn) obj;
        return zzfznVar.f18914a == this.f18914a && zzfznVar.f18915b == this.f18915b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f18914a), this.f18915b});
    }

    public final String toString() {
        return "AesGcmSiv Parameters (variant: " + String.valueOf(this.f18915b) + ", " + this.f18914a + "-byte key)";
    }
}
