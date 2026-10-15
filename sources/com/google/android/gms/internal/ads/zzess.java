package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzess implements zzgwy {
    public static zzepq a(Context context, zzbxx zzbxxVar, zzbxy zzbxyVar, Object obj, zzeqi zzeqiVar, zzery zzeryVar, zzgws zzgwsVar, zzgws zzgwsVar2, zzgws zzgwsVar3, zzgws zzgwsVar4, zzgws zzgwsVar5, zzgws zzgwsVar6, zzgws zzgwsVar7, zzgws zzgwsVar8, zzgws zzgwsVar9, Executor executor, zzfen zzfenVar, zzdpi zzdpiVar) {
        HashSet hashSet = new HashSet();
        hashSet.add((zzerr) obj);
        hashSet.add(zzeqiVar);
        hashSet.add(zzeryVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10296m5)).booleanValue()) {
            hashSet.add((zzepn) zzgwsVar.zzb());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10307n5)).booleanValue()) {
            hashSet.add((zzepn) zzgwsVar2.zzb());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10318o5)).booleanValue()) {
            hashSet.add((zzepn) zzgwsVar3.zzb());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10329p5)).booleanValue()) {
            hashSet.add((zzepn) zzgwsVar4.zzb());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10373t5)).booleanValue()) {
            hashSet.add((zzepn) zzgwsVar6.zzb());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10384u5)).booleanValue()) {
            hashSet.add((zzepn) zzgwsVar7.zzb());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10403w2)).booleanValue()) {
            hashSet.add((zzepn) zzgwsVar9.zzb());
        }
        return new zzepq(context, executor, hashSet, zzfenVar, zzdpiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        throw null;
    }
}
