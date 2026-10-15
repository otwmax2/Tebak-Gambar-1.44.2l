package b6;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.firebase_dynamic_links.zza;
import com.google.android.gms.internal.firebase_dynamic_links.zzd;

/* JADX INFO: compiled from: com.google.firebase:firebase-dynamic-links@@19.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class l extends zza implements i {
    public l() {
        super("com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks");
    }

    @Override // com.google.android.gms.internal.firebase_dynamic_links.zza
    protected final boolean P0(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            I6((Status) zzd.a(parcel, Status.CREATOR), (a) zzd.a(parcel, a.CREATOR));
        } else {
            if (i10 != 2) {
                return false;
            }
            Z1((Status) zzd.a(parcel, Status.CREATOR), (m) zzd.a(parcel, m.CREATOR));
        }
        return true;
    }
}
