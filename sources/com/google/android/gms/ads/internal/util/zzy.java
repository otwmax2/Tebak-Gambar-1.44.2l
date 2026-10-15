package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.content.Context;
import com.google.android.gms.internal.ads.zzbar;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@TargetApi(30)
public final class zzy extends zzx {
    @Override // com.google.android.gms.ads.internal.util.zzaa
    public final int k(Context context) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.N7)).booleanValue()) {
            return 0;
        }
        return super.k(context);
    }
}
