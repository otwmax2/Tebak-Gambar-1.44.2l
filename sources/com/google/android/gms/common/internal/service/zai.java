package com.google.android.gms.common.internal.service;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.internal.base.zac;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zai extends com.google.android.gms.internal.base.zaa {
    zai(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.service.IClientTelemetryService");
    }

    public final void A9(TelemetryData telemetryData) throws RemoteException {
        Parcel parcelP0 = P0();
        zac.c(parcelP0, telemetryData);
        Q4(1, parcelP0);
    }
}
