package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfyw extends zzfxk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f18884a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f18885b = 12;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f18886c = 16;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfyu f18887d;

    /* synthetic */ zzfyw(int i10, int i11, int i12, zzfyu zzfyuVar, zzfyv zzfyvVar) {
        this.f18884a = i10;
        this.f18887d = zzfyuVar;
    }

    public final int a() {
        return this.f18884a;
    }

    public final zzfyu b() {
        return this.f18887d;
    }

    public final boolean c() {
        return this.f18887d != zzfyu.f18882d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzfyw)) {
            return false;
        }
        zzfyw zzfywVar = (zzfyw) obj;
        return zzfywVar.f18884a == this.f18884a && zzfywVar.f18887d == this.f18887d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f18884a), 12, 16, this.f18887d});
    }

    public final String toString() {
        return "AesGcm Parameters (variant: " + String.valueOf(this.f18887d) + ", 12-byte IV, 16-byte tag, and " + this.f18884a + "-byte key)";
    }
}
