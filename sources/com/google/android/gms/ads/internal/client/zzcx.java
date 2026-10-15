package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.internal.ads.zzbza;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzcx implements MuteThisAdReason {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5803a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcw f5804b;

    public zzcx(zzcw zzcwVar) {
        String strB;
        this.f5804b = zzcwVar;
        try {
            strB = zzcwVar.b();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
            strB = null;
        }
        this.f5803a = strB;
    }

    public final String toString() {
        return this.f5803a;
    }
}
