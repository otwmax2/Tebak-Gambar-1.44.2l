package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzawk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    zzata f10078a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    boolean f10079b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ExecutorService f10080c;

    public zzawk() {
        this.f10080c = zzbyp.f11576b;
    }

    public zzawk(final Context context) {
        ExecutorService executorService = zzbyp.f11576b;
        this.f10080c = executorService;
        executorService.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzawf
            @Override // java.lang.Runnable
            public final void run() {
                zzawk zzawkVar = this.f10071o;
                Context context2 = context;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10405w4)).booleanValue()) {
                    try {
                        zzawkVar.f10078a = (zzata) zzbze.b(context2, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", new zzbzc() { // from class: com.google.android.gms.internal.ads.zzawg
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // com.google.android.gms.internal.ads.zzbzc
                            public final Object a(Object obj) {
                                return zzasz.Sa(obj);
                            }
                        });
                        zzawkVar.f10078a.N7(ObjectWrapper.Q4(context2), "GMA_SDK");
                        zzawkVar.f10079b = true;
                    } catch (RemoteException | zzbzd | NullPointerException unused) {
                        zzbza.b("Cannot dynamite load clearcut");
                    }
                }
            }
        });
    }
}
