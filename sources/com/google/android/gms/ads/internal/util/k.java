package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.ads.zzbyz;
import com.google.android.gms.internal.ads.zzbza;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class k extends zzb {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f6046c;

    k(Context context) {
        this.f6046c = context;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void a() {
        boolean zC;
        try {
            zC = AdvertisingIdClient.c(this.f6046c);
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e10) {
            zzbza.e("Fail to get isAdIdFakeForDebugLogging", e10);
            zC = false;
        }
        zzbyz.j(zC);
        zzbza.g("Update ad debug logging enablement as " + zC);
    }
}
