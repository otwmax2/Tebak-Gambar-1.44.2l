package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zzfeb {
    public static zzfec a(Context context, int i10) {
        boolean zBooleanValue;
        if (zzfep.a()) {
            int i11 = i10 - 2;
            if (i11 != 20 && i11 != 21) {
                switch (i11) {
                    case 2:
                    case 3:
                    case 6:
                    case 7:
                    case 8:
                        zBooleanValue = ((Boolean) zzbcd.f10514c.e()).booleanValue();
                        break;
                    case 4:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                        zBooleanValue = ((Boolean) zzbcd.f10515d.e()).booleanValue();
                        break;
                    case 5:
                        zBooleanValue = ((Boolean) zzbcd.f10513b.e()).booleanValue();
                        break;
                }
            } else {
                zBooleanValue = ((Boolean) zzbcd.f10516e.e()).booleanValue();
            }
            if (zBooleanValue) {
                return new zzfee(context, i10);
            }
        }
        return new zzfey();
    }

    public static zzfec b(Context context, int i10, int i11, com.google.android.gms.ads.internal.client.zzl zzlVar) {
        zzfec zzfecVarA = a(context, i10);
        if (!(zzfecVarA instanceof zzfee)) {
            return zzfecVarA;
        }
        zzfecVarA.f();
        zzfecVarA.l0(i11);
        if (zzfem.e(zzlVar.D)) {
            zzfecVarA.s(zzlVar.D);
        }
        return zzfecVarA;
    }
}
