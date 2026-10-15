package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcnn implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f13590a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f13591b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f13592c;

    public zzcnn(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f13590a = zzgxlVar;
        this.f13591b = zzgxlVar2;
        this.f13592c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcng zzcngVar = (zzcng) this.f13590a.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        Set setEmptySet = ((JSONObject) this.f13592c.zzb()) == null ? Collections.emptySet() : Collections.singleton(new zzdbu(zzcngVar, zzfuuVar));
        zzgxg.b(setEmptySet);
        return setEmptySet;
    }
}
