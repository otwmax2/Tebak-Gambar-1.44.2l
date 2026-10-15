package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeqi implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f17210a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f17211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PackageInfo f17212c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzbya f17213d;

    public zzeqi(zzbya zzbyaVar, Executor executor, String str, PackageInfo packageInfo, int i10, byte[] bArr) {
        this.f17213d = zzbyaVar;
        this.f17210a = executor;
        this.f17211b = str;
        this.f17212c = packageInfo;
    }

    final /* synthetic */ zzfut a(Throwable th) throws Exception {
        return zzfuj.h(new zzeqj(this.f17211b));
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 41;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return zzfuj.f(zzfuj.l(zzfuj.h(this.f17211b), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzeqg
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                return new zzeqj((String) obj);
            }
        }, this.f17210a), Throwable.class, new zzftq() { // from class: com.google.android.gms.internal.ads.zzeqh
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f17209a.a((Throwable) obj);
            }
        }, this.f17210a);
    }
}
