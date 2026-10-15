package i5;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.firebase_auth.zza;
import com.google.android.gms.internal.firebase_auth.zzd;
import com.google.android.gms.internal.firebase_auth.zzeh;
import com.google.android.gms.internal.firebase_auth.zzej;
import com.google.android.gms.internal.firebase_auth.zzem;
import com.google.android.gms.internal.firebase_auth.zzew;
import com.google.android.gms.internal.firebase_auth.zzff;
import com.google.android.gms.internal.firebase_auth.zzfm;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class q0 extends zza implements r0 {
    public q0() {
        super("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
    }

    @Override // com.google.android.gms.internal.firebase_auth.zza
    protected final boolean P0(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 1:
                S8((zzff) zzd.a(parcel, zzff.CREATOR));
                return true;
            case 2:
                k2((zzff) zzd.a(parcel, zzff.CREATOR), (zzew) zzd.a(parcel, zzew.CREATOR));
                return true;
            case 3:
                H2((zzem) zzd.a(parcel, zzem.CREATOR));
                return true;
            case 4:
                p8((zzfm) zzd.a(parcel, zzfm.CREATOR));
                return true;
            case 5:
                v0((Status) zzd.a(parcel, Status.CREATOR));
                return true;
            case 6:
                J8();
                return true;
            case 7:
                zzb();
                return true;
            case 8:
                o(parcel.readString());
                return true;
            case 9:
                u(parcel.readString());
                return true;
            case 10:
                Z4((g5.d0) zzd.a(parcel, g5.d0.CREATOR));
                return true;
            case 11:
                D(parcel.readString());
                return true;
            case 12:
                I8((Status) zzd.a(parcel, Status.CREATOR), (g5.d0) zzd.a(parcel, g5.d0.CREATOR));
                return true;
            case 13:
                a();
                return true;
            case 14:
                L5((zzeh) zzd.a(parcel, zzeh.CREATOR));
                return true;
            case 15:
                b8((zzej) zzd.a(parcel, zzej.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
