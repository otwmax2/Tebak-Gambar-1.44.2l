package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbtt implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f11340a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzbtv f11341b;

    zzbtt(zzbtv zzbtvVar, Context context) {
        this.f11341b = zzbtvVar;
        this.f11340a = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzbtu zzbtuVar = (zzbtu) this.f11341b.f11344a.get(this.f11340a);
        zzbts zzbtsVarA = (zzbtuVar == null || zzbtuVar.f11342a + ((Long) zzbca.f10500a.e()).longValue() < com.google.android.gms.ads.internal.zzt.b().a()) ? new zzbtr(this.f11340a).a() : new zzbtr(this.f11340a, zzbtuVar.f11343b).a();
        zzbtv zzbtvVar = this.f11341b;
        zzbtvVar.f11344a.put(this.f11340a, new zzbtu(zzbtvVar, zzbtsVarA));
        return zzbtsVarA;
    }
}
