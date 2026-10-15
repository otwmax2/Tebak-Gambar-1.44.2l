package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzerj implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f17246a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbyj f17247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ScheduledExecutorService f17248c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f17249d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f17250e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzbya f17251f;

    public zzerj(zzbya zzbyaVar, int i10, Context context, zzbyj zzbyjVar, ScheduledExecutorService scheduledExecutorService, Executor executor, String str, byte[] bArr) {
        this.f17251f = zzbyaVar;
        this.f17246a = context;
        this.f17247b = zzbyjVar;
        this.f17248c = scheduledExecutorService;
        this.f17249d = executor;
        this.f17250e = str;
    }

    final /* synthetic */ zzerk a(Exception exc) {
        this.f17247b.u(exc, "AttestationTokenSignal");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 44;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return zzfuj.e((zzfua) zzfuj.n(zzfuj.l(zzfua.D(zzfuj.k(new zzftp() { // from class: com.google.android.gms.internal.ads.zzerg
            @Override // com.google.android.gms.internal.ads.zzftp
            public final zzfut zza() {
                return zzfuj.h(null);
            }
        }, this.f17249d)), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzerh
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                String str = (String) obj;
                if (str == null) {
                    return null;
                }
                return new zzerk(str);
            }
        }, this.f17249d), ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.P0)).longValue(), TimeUnit.MILLISECONDS, this.f17248c), Exception.class, new zzfnj() { // from class: com.google.android.gms.internal.ads.zzeri
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                this.f17245a.a((Exception) obj);
                return null;
            }
        }, zzfva.b());
    }
}
