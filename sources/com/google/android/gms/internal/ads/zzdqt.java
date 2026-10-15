package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdqt implements zzdqh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f15412a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzeij f15413b;

    zzdqt(long j10, Context context, zzdqm zzdqmVar, zzcgd zzcgdVar, String str) {
        this.f15412a = j10;
        zzewh zzewhVarW = zzcgdVar.w();
        zzewhVarW.b(context);
        zzewhVarW.a(new com.google.android.gms.ads.internal.client.zzq());
        zzewhVarW.u(str);
        zzeij zzeijVarZza = zzewhVarW.d().zza();
        this.f15413b = zzeijVarZza;
        zzeijVarZza.o6(new zzdqs(this, zzdqmVar));
    }

    @Override // com.google.android.gms.internal.ads.zzdqh
    public final void a() {
        this.f15413b.y4(ObjectWrapper.Q4(null));
    }

    @Override // com.google.android.gms.internal.ads.zzdqh
    public final void b(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        this.f15413b.P9(zzlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdqh
    public final void zza() {
        this.f15413b.y();
    }
}
