package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IInterface;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbde {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f10626a;

    public zzbde(Context context) {
        this.f10626a = context;
    }

    public final void a(zzbsm zzbsmVar) {
        try {
            ((zzbdf) zzbze.b(this.f10626a, "com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy", new zzbzc() { // from class: com.google.android.gms.internal.ads.zzbdd
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.internal.ads.zzbzc
                public final Object a(Object obj) {
                    if (obj == 0) {
                        return null;
                    }
                    IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.flags.IFlagRetrieverSupplierProxy");
                    return iInterfaceQueryLocalInterface instanceof zzbdf ? (zzbdf) iInterfaceQueryLocalInterface : new zzbdf(obj);
                }
            })).A9(zzbsmVar);
        } catch (RemoteException e10) {
            zzbza.g("Error calling setFlagsAccessedBeforeInitializedListener: ".concat(String.valueOf(e10.getMessage())));
        } catch (zzbzd e11) {
            zzbza.g("Could not load com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy:".concat(String.valueOf(e11.getMessage())));
        }
    }
}
