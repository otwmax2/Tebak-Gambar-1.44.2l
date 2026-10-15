package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzer extends zzb implements zzeq {
    public zzer() {
        super("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
    }

    @Override // com.google.android.gms.internal.drive.zzb
    protected final boolean P0(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 1:
                i7((zzfl) zzc.a(parcel, zzfl.CREATOR));
                break;
            case 2:
                R6((zzft) zzc.a(parcel, zzft.CREATOR));
                break;
            case 3:
                l9((zzfn) zzc.a(parcel, zzfn.CREATOR));
                break;
            case 4:
                p5((zzfy) zzc.a(parcel, zzfy.CREATOR));
                break;
            case 5:
                r5((zzfh) zzc.a(parcel, zzfh.CREATOR));
                break;
            case 6:
                v0((Status) zzc.a(parcel, Status.CREATOR));
                break;
            case 7:
                onSuccess();
                break;
            case 8:
                L8((zzfv) zzc.a(parcel, zzfv.CREATOR));
                break;
            case 9:
                O8((zzgh) zzc.a(parcel, zzgh.CREATOR));
                break;
            case 10:
            case 19:
            default:
                return false;
            case 11:
                ba((zzfx) zzc.a(parcel, zzfx.CREATOR), zzip.X0(parcel.readStrongBinder()));
                break;
            case 12:
                I4((zzgd) zzc.a(parcel, zzgd.CREATOR));
                break;
            case 13:
                y3((zzga) zzc.a(parcel, zzga.CREATOR));
                break;
            case 14:
                v7((zzfj) zzc.a(parcel, zzfj.CREATOR));
                break;
            case 15:
                M0(zzc.d(parcel));
                break;
            case 16:
                E4((zzfr) zzc.a(parcel, zzfr.CREATOR));
                break;
            case 17:
                y6((com.google.android.gms.drive.zza) zzc.a(parcel, com.google.android.gms.drive.zza.CREATOR));
                break;
            case 18:
                c3((zzff) zzc.a(parcel, zzff.CREATOR));
                break;
            case 20:
                A2((zzem) zzc.a(parcel, zzem.CREATOR));
                break;
            case 21:
                V2((zzgz) zzc.a(parcel, zzgz.CREATOR));
                break;
            case 22:
                T6((zzgf) zzc.a(parcel, zzgf.CREATOR));
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
