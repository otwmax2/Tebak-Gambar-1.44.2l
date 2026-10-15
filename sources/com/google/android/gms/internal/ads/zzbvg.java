package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbvg implements RewardItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbut f11364a;

    public zzbvg(zzbut zzbutVar) {
        this.f11364a = zzbutVar;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final String o() {
        zzbut zzbutVar = this.f11364a;
        if (zzbutVar != null) {
            try {
                return zzbutVar.c();
            } catch (RemoteException e10) {
                zzbza.h("Could not forward getType to RewardItem", e10);
            }
        }
        return null;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final int p() {
        zzbut zzbutVar = this.f11364a;
        if (zzbutVar != null) {
            try {
                return zzbutVar.b();
            } catch (RemoteException e10) {
                zzbza.h("Could not forward getAmount to RewardItem", e10);
            }
        }
        return 0;
    }
}
