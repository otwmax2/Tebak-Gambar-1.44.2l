package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class m extends k<ParcelFileDescriptor> {
    m(s sVar, y4.p<ParcelFileDescriptor> pVar) {
        super(sVar, pVar);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.android.play.core.assetpacks.k, v4.k0
    public final void G1(Bundle bundle, Bundle bundle2) throws RemoteException {
        super.G1(bundle, bundle2);
        this.f25959o.e((T) ((ParcelFileDescriptor) bundle.getParcelable("chunk_file_descriptor")));
    }
}
