package b6;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.firebase_dynamic_links.zzb;
import com.google.android.gms.internal.firebase_dynamic_links.zzd;

/* JADX INFO: compiled from: com.google.firebase:firebase-dynamic-links@@19.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class n extends zzb implements k {
    n(IBinder iBinder) {
        super(iBinder, "com.google.firebase.dynamiclinks.internal.IDynamicLinksService");
    }

    @Override // b6.k
    public final void a6(i iVar, String str) throws RemoteException {
        Parcel parcelP0 = P0();
        zzd.b(parcelP0, iVar);
        parcelP0.writeString(str);
        X0(1, parcelP0);
    }
}
