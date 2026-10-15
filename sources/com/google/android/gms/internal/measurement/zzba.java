package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzba implements Comparator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzai f23297o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzg f23298p;

    zzba(zzai zzaiVar, zzg zzgVar) {
        this.f23297o = zzaiVar;
        this.f23298p = zzgVar;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        zzap zzapVar = (zzap) obj;
        zzap zzapVar2 = (zzap) obj2;
        zzai zzaiVar = this.f23297o;
        zzg zzgVar = this.f23298p;
        if (zzapVar instanceof zzau) {
            return !(zzapVar2 instanceof zzau) ? 1 : 0;
        }
        if (zzapVar2 instanceof zzau) {
            return -1;
        }
        return zzaiVar == null ? zzapVar.g().compareTo(zzapVar2.g()) : (int) zzh.a(zzaiVar.a(zzgVar, Arrays.asList(zzapVar, zzapVar2)).f().doubleValue());
    }
}
