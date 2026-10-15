package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbvn extends zzbus {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f11371o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f11372p;

    public zzbvn(RewardItem rewardItem) {
        this(rewardItem != null ? rewardItem.o() : BuildConfig.FLAVOR, rewardItem != null ? rewardItem.p() : 1);
    }

    @Override // com.google.android.gms.internal.ads.zzbut
    public final int b() throws RemoteException {
        return this.f11372p;
    }

    @Override // com.google.android.gms.internal.ads.zzbut
    public final String c() throws RemoteException {
        return this.f11371o;
    }

    public zzbvn(String str, int i10) {
        this.f11371o = str;
        this.f11372p = i10;
    }
}
