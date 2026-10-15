package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdSize;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzezb {
    public static com.google.android.gms.ads.internal.client.zzq a(Context context, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzeyd zzeydVar = (zzeyd) it.next();
            if (zzeydVar.f17676c) {
                arrayList.add(AdSize.f5585p);
            } else {
                arrayList.add(new AdSize(zzeydVar.f17674a, zzeydVar.f17675b));
            }
        }
        return new com.google.android.gms.ads.internal.client.zzq(context, (AdSize[]) arrayList.toArray(new AdSize[arrayList.size()]));
    }

    public static zzeyd b(com.google.android.gms.ads.internal.client.zzq zzqVar) {
        return zzqVar.f5939w ? new zzeyd(-3, 0, true) : new zzeyd(zzqVar.f5935s, zzqVar.f5932p, false);
    }
}
