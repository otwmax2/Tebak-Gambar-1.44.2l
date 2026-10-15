package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgex extends zzggc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f19111a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f19112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgev f19113c;

    /* synthetic */ zzgex(int i10, int i11, zzgev zzgevVar, zzgew zzgewVar) {
        this.f19111a = i10;
        this.f19112b = i11;
        this.f19113c = zzgevVar;
    }

    public final int a() {
        return this.f19111a;
    }

    public final int b() {
        zzgev zzgevVar = this.f19113c;
        if (zzgevVar == zzgev.f19109e) {
            return this.f19112b;
        }
        if (zzgevVar == zzgev.f19106b || zzgevVar == zzgev.f19107c || zzgevVar == zzgev.f19108d) {
            return this.f19112b + 5;
        }
        throw new IllegalStateException("Unknown variant");
    }

    public final zzgev c() {
        return this.f19113c;
    }

    public final boolean d() {
        return this.f19113c != zzgev.f19109e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgex)) {
            return false;
        }
        zzgex zzgexVar = (zzgex) obj;
        return zzgexVar.f19111a == this.f19111a && zzgexVar.b() == b() && zzgexVar.f19113c == this.f19113c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f19111a), Integer.valueOf(this.f19112b), this.f19113c});
    }

    public final String toString() {
        return "AES-CMAC Parameters (variant: " + String.valueOf(this.f19113c) + ", " + this.f19112b + "-byte tags, and " + this.f19111a + "-byte key)";
    }
}
