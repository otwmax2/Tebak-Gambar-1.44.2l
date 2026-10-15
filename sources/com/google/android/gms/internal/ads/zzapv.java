package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzapv extends zzapu {
    protected zzapv(Context context, String str, boolean z10) {
        super(context, str, z10);
    }

    public static zzapv x(String str, Context context, boolean z10) {
        zzapu.t(context, false);
        return new zzapv(context, str, false);
    }

    @Deprecated
    public static zzapv y(String str, Context context, boolean z10, int i10) {
        zzapu.t(context, z10);
        return new zzapv(context, str, z10);
    }

    @Override // com.google.android.gms.internal.ads.zzapu
    protected final List r(zzaqx zzaqxVar, Context context, zzamv zzamvVar, zzamo zzamoVar) {
        if (zzaqxVar.k() == null || !this.J) {
            return super.r(zzaqxVar, context, zzamvVar, null);
        }
        int iA = zzaqxVar.a();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.r(zzaqxVar, context, zzamvVar, null));
        arrayList.add(new zzarq(zzaqxVar, "uz1YArq5cHS8AYJUDc1zzIdIMbHyJKwb7tfYne2XDSTiUe1d6tP4aZb4XhmiO5Pa", "D14sOPs9bJ6lVOYt2Sp9xUGRfFtxk1j4Rj4Ydr//Mak=", zzamvVar, iA, 24));
        return arrayList;
    }
}
