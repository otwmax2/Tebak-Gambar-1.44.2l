package com.google.android.gms.internal.ads;

import android.content.Context;
import com.vungle.mediation.BuildConfig;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeoy implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbxf f17109a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfuu f17110b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f17111c;

    public zzeoy(zzbxf zzbxfVar, zzfuu zzfuuVar, Context context) {
        this.f17109a = zzbxfVar;
        this.f17110b = zzfuuVar;
        this.f17111c = context;
    }

    final /* synthetic */ zzeoz a() throws Exception {
        if (!this.f17109a.z(this.f17111c)) {
            return new zzeoz(null, null, null, null, null);
        }
        String strJ = this.f17109a.j(this.f17111c);
        String str = strJ == null ? BuildConfig.FLAVOR : strJ;
        String strH = this.f17109a.h(this.f17111c);
        String str2 = strH == null ? BuildConfig.FLAVOR : strH;
        String strF = this.f17109a.f(this.f17111c);
        String str3 = strF == null ? BuildConfig.FLAVOR : strF;
        String strG = this.f17109a.g(this.f17111c);
        return new zzeoz(str, str2, str3, strG == null ? BuildConfig.FLAVOR : strG, "TIME_OUT".equals(str2) ? (Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10192d0) : null);
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 34;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f17110b.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzeox
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f17108a.a();
            }
        });
    }
}
