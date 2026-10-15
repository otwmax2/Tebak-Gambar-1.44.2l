package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzggq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfwg f19189a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f19190b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f19191c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f19192d;

    /* synthetic */ zzggq(zzfwg zzfwgVar, int i10, String str, String str2, zzggp zzggpVar) {
        this.f19189a = zzfwgVar;
        this.f19190b = i10;
        this.f19191c = str;
        this.f19192d = str2;
    }

    public final int a() {
        return this.f19190b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzggq)) {
            return false;
        }
        zzggq zzggqVar = (zzggq) obj;
        return this.f19189a == zzggqVar.f19189a && this.f19190b == zzggqVar.f19190b && this.f19191c.equals(zzggqVar.f19191c) && this.f19192d.equals(zzggqVar.f19192d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f19189a, Integer.valueOf(this.f19190b), this.f19191c, this.f19192d});
    }

    public final String toString() {
        return String.format("(status=%s, keyId=%s, keyType='%s', keyPrefix='%s')", this.f19189a, Integer.valueOf(this.f19190b), this.f19191c, this.f19192d);
    }
}
