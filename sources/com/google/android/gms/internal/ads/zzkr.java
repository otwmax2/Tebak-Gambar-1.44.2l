package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class zzkr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzht f20085a;

    @Deprecated
    public zzkr(Context context, zzcdr zzcdrVar, byte[] bArr) {
        this.f20085a = new zzht(context, zzcdrVar, null);
    }

    @Deprecated
    public final zzkr a(final zzjp zzjpVar) {
        zzht zzhtVar = this.f20085a;
        zzdl.f(!zzhtVar.f19834q);
        Objects.requireNonNull(zzjpVar);
        zzhtVar.f19823f = new zzfok() { // from class: com.google.android.gms.internal.ads.zzhl
            @Override // com.google.android.gms.internal.ads.zzfok
            public final Object zza() {
                return zzjpVar;
            }
        };
        return this;
    }

    @Deprecated
    public final zzkr b(final zzwk zzwkVar) {
        zzht zzhtVar = this.f20085a;
        zzdl.f(!zzhtVar.f19834q);
        Objects.requireNonNull(zzwkVar);
        zzhtVar.f19822e = new zzfok() { // from class: com.google.android.gms.internal.ads.zzhm
            @Override // com.google.android.gms.internal.ads.zzfok
            public final Object zza() {
                return zzwkVar;
            }
        };
        return this;
    }

    @Deprecated
    public final zzks c() {
        zzht zzhtVar = this.f20085a;
        zzdl.f(!zzhtVar.f19834q);
        zzhtVar.f19834q = true;
        return new zzks(zzhtVar);
    }
}
