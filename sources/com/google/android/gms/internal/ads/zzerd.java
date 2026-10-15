package com.google.android.gms.internal.ads;

import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzerd implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbyj f17231a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f17232b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ScheduledExecutorService f17233c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfuu f17234d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzavh f17235e;

    zzerd(String str, zzavh zzavhVar, zzbyj zzbyjVar, ScheduledExecutorService scheduledExecutorService, zzfuu zzfuuVar, byte[] bArr) {
        this.f17232b = str;
        this.f17235e = zzavhVar;
        this.f17231a = zzbyjVar;
        this.f17233c = scheduledExecutorService;
        this.f17234d = zzfuuVar;
    }

    final /* synthetic */ zzere a(Exception exc) {
        this.f17231a.u(exc, "AppSetIdInfoGmscoreSignal");
        return new zzere(null, -1);
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 43;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10337q2)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10392v2)).booleanValue()) {
                zzfut zzfutVarM = zzfuj.m(zzfkz.a(Tasks.e(null)), new zzftq() { // from class: com.google.android.gms.internal.ads.zzerb
                    @Override // com.google.android.gms.internal.ads.zzftq
                    public final zzfut a(Object obj) {
                        AppSetIdInfo appSetIdInfo = (AppSetIdInfo) obj;
                        return appSetIdInfo == null ? zzfuj.h(new zzere(null, -1)) : zzfuj.h(new zzere(appSetIdInfo.a(), appSetIdInfo.b()));
                    }
                }, this.f17234d);
                if (((Boolean) zzbbz.f10498a.e()).booleanValue()) {
                    zzfutVarM = zzfuj.n(zzfutVarM, ((Long) zzbbz.f10499b.e()).longValue(), TimeUnit.MILLISECONDS, this.f17233c);
                }
                return zzfuj.e(zzfutVarM, Exception.class, new zzfnj() { // from class: com.google.android.gms.internal.ads.zzerc
                    @Override // com.google.android.gms.internal.ads.zzfnj
                    public final Object a(Object obj) {
                        return this.f17230a.a((Exception) obj);
                    }
                }, this.f17234d);
            }
        }
        return zzfuj.h(new zzere(null, -1));
    }
}
