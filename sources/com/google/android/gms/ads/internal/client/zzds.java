package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzasw;
import com.google.android.gms.internal.ads.zzasx;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzds extends zzasw implements zzdt {
    public zzds() {
        super("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            g();
        } else if (i10 == 2) {
            f();
        } else if (i10 == 3) {
            e();
        } else if (i10 == 4) {
            b();
        } else {
            if (i10 != 5) {
                return false;
            }
            boolean zH = zzasx.h(parcel);
            zzasx.c(parcel);
            y0(zH);
        }
        parcel2.writeNoException();
        return true;
    }
}
