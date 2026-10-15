package com.google.android.gms.internal.ads;

import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzblw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f10907a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f10908b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("lockClient")
    private zzbmf f10909c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("lockService")
    private zzbmf f10910d;

    private static final Context c(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    public final zzbmf a(Context context, zzbzg zzbzgVar, zzfep zzfepVar) {
        zzbmf zzbmfVar;
        synchronized (this.f10907a) {
            if (this.f10909c == null) {
                this.f10909c = new zzbmf(c(context), zzbzgVar, (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10158a), zzfepVar);
            }
            zzbmfVar = this.f10909c;
        }
        return zzbmfVar;
    }

    public final zzbmf b(Context context, zzbzg zzbzgVar, zzfep zzfepVar) {
        zzbmf zzbmfVar;
        synchronized (this.f10908b) {
            if (this.f10910d == null) {
                this.f10910d = new zzbmf(c(context), zzbzgVar, (String) zzbcu.f10603b.e(), zzfepVar);
            }
            zzbmfVar = this.f10910d;
        }
        return zzbmfVar;
    }
}
