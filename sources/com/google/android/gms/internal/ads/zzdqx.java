package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdqx implements zzdqh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f15416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdqm f15417b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzext f15418c;

    zzdqx(long j10, Context context, zzdqm zzdqmVar, zzcgd zzcgdVar, String str) {
        this.f15416a = j10;
        this.f15417b = zzdqmVar;
        zzexv zzexvVarX = zzcgdVar.x();
        zzexvVarX.b(context);
        zzexvVarX.o(str);
        this.f15418c = zzexvVarX.a().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzdqh
    public final void a() {
        try {
            this.f15418c.Fa(new zzdqw(this));
            this.f15418c.l1(ObjectWrapper.Q4(null));
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqh
    public final void b(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        try {
            this.f15418c.B6(zzlVar, new zzdqv(this));
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqh
    public final void zza() {
    }
}
