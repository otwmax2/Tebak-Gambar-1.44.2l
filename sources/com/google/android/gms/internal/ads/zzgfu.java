package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgfu extends zzggc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f19151a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f19152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgfs f19153c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgfr f19154d;

    /* synthetic */ zzgfu(int i10, int i11, zzgfs zzgfsVar, zzgfr zzgfrVar, zzgft zzgftVar) {
        this.f19151a = i10;
        this.f19152b = i11;
        this.f19153c = zzgfsVar;
        this.f19154d = zzgfrVar;
    }

    public final int a() {
        return this.f19151a;
    }

    public final int b() {
        zzgfs zzgfsVar = this.f19153c;
        if (zzgfsVar == zzgfs.f19149e) {
            return this.f19152b;
        }
        if (zzgfsVar == zzgfs.f19146b || zzgfsVar == zzgfs.f19147c || zzgfsVar == zzgfs.f19148d) {
            return this.f19152b + 5;
        }
        throw new IllegalStateException("Unknown variant");
    }

    public final zzgfs c() {
        return this.f19153c;
    }

    public final boolean d() {
        return this.f19153c != zzgfs.f19149e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgfu)) {
            return false;
        }
        zzgfu zzgfuVar = (zzgfu) obj;
        return zzgfuVar.f19151a == this.f19151a && zzgfuVar.b() == b() && zzgfuVar.f19153c == this.f19153c && zzgfuVar.f19154d == this.f19154d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f19151a), Integer.valueOf(this.f19152b), this.f19153c, this.f19154d});
    }

    public final String toString() {
        return "HMAC Parameters (variant: " + String.valueOf(this.f19153c) + ", hashType: " + String.valueOf(this.f19154d) + ", " + this.f19152b + "-byte tags, and " + this.f19151a + "-byte key)";
    }
}
