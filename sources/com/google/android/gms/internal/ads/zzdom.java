package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdom implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f15267a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15268b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15269c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f15270d;

    public zzdom(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4) {
        this.f15267a = zzgxlVar;
        this.f15268b = zzgxlVar2;
        this.f15269c = zzgxlVar3;
        this.f15270d = zzgxlVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set setEmptySet;
        final String str = (String) this.f15267a.zzb();
        Context contextA = ((zzcgj) this.f15268b).a();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        Map mapZzb = ((zzgxc) this.f15270d).zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10405w4)).booleanValue()) {
            zzawe zzaweVar = new zzawe(new zzawk(contextA));
            zzaweVar.b(new zzawd() { // from class: com.google.android.gms.internal.ads.zzdon
                @Override // com.google.android.gms.internal.ads.zzawd
                public final void a(zzaxt zzaxtVar) {
                    zzaxtVar.w(str);
                }
            });
            setEmptySet = Collections.singleton(new zzdbu(new zzdop(zzaweVar, mapZzb), zzfuuVar));
        } else {
            setEmptySet = Collections.emptySet();
        }
        zzgxg.b(setEmptySet);
        return setEmptySet;
    }
}
