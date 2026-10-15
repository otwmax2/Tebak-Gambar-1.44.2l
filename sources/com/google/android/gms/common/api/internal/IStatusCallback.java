package com.google.android.gms.common.api.internal;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public interface IStatusCallback extends IInterface {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    public static abstract class Stub extends com.google.android.gms.internal.base.zab implements IStatusCallback {
        public Stub() {
            super("com.google.android.gms.common.api.internal.IStatusCallback");
        }

        @Override // com.google.android.gms.internal.base.zab
        protected final boolean A9(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 != 1) {
                return false;
            }
            l4((Status) com.google.android.gms.internal.base.zac.a(parcel, Status.CREATOR));
            return true;
        }
    }

    void l4(Status status) throws RemoteException;
}
