package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzesv implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbyj f17310a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f17311b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f17312c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ScheduledExecutorService f17313d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzfuu f17314e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f17315f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzbxy f17316g;

    zzesv(zzbyj zzbyjVar, boolean z10, boolean z11, zzbxy zzbxyVar, zzfuu zzfuuVar, String str, ScheduledExecutorService scheduledExecutorService, byte[] bArr) {
        this.f17310a = zzbyjVar;
        this.f17311b = z10;
        this.f17312c = z11;
        this.f17316g = zzbxyVar;
        this.f17314e = zzfuuVar;
        this.f17315f = str;
        this.f17313d = scheduledExecutorService;
    }

    final /* synthetic */ zzesw a(Exception exc) {
        this.f17310a.u(exc, "TrustlessTokenSignal");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 50;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.K6)).booleanValue() && this.f17312c) ? zzfuj.h(null) : !this.f17311b ? zzfuj.h(null) : zzfuj.e(zzfuj.n(zzfuj.l(zzfuj.h(null), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzest
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                String str = (String) obj;
                if (str == null) {
                    return null;
                }
                return new zzesw(str);
            }
        }, this.f17314e), ((Long) zzbcy.f10612c.e()).longValue(), TimeUnit.MILLISECONDS, this.f17313d), Exception.class, new zzfnj() { // from class: com.google.android.gms.internal.ads.zzesu
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                this.f17309a.a((Exception) obj);
                return null;
            }
        }, this.f17314e);
    }
}
