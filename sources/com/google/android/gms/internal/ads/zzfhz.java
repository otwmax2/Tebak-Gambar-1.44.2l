package com.google.android.gms.internal.ads;

import android.content.Context;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.internal.ShowFirstParty;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@ShowFirstParty
public final class zzfhz {
    public static zzfji a(Context context, int i10, int i11, String str, String str2, String str3, zzfhp zzfhpVar) {
        return new zzfhy(context, 1, i11, str, str2, AppEventsConstants.EVENT_PARAM_VALUE_YES, zzfhpVar).b(50000);
    }
}
