package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcno implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f13593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f13594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f13595c;

    public zzcno(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f13593a = zzgxlVar;
        this.f13594b = zzgxlVar2;
        this.f13595c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcng zzcngVar = (zzcng) this.f13593a.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        Set setEmptySet = ((JSONObject) this.f13595c.zzb()) == null ? Collections.emptySet() : Collections.singleton(new zzdbu(zzcngVar, zzfuuVar));
        zzgxg.b(setEmptySet);
        return setEmptySet;
    }
}
