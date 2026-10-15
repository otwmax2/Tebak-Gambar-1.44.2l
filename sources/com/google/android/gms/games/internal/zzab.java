package com.google.android.gms.games.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.video.VideoCapabilities;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzab extends com.google.android.gms.internal.games.zza implements zzy {
    public zzab() {
        super("com.google.android.gms.games.internal.IGamesCallbacks");
    }

    @Override // com.google.android.gms.internal.games.zza
    protected final boolean P0(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 6001) {
            s(parcel.readString());
        } else if (i10 == 6002) {
            I(parcel.readString());
        } else if (i10 == 12011) {
            p1((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
        } else if (i10 == 12012) {
            c7(parcel.readInt(), parcel.readString());
        } else if (i10 == 13001) {
            t5((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
        } else if (i10 == 13002) {
            K(parcel.readInt());
        } else if (i10 == 19001) {
            R2(parcel.readInt(), (VideoCapabilities) com.google.android.gms.internal.games.zzd.b(parcel, VideoCapabilities.CREATOR));
        } else if (i10 != 19002) {
            switch (i10) {
                case 5001:
                    P(parcel.readInt(), parcel.readString());
                    break;
                case 5002:
                    T2((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                    break;
                case 5003:
                    O5(parcel.readInt(), parcel.readString());
                    break;
                case 5004:
                    Ca((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                    break;
                case 5005:
                    Parcelable.Creator<DataHolder> creator = DataHolder.CREATOR;
                    R9((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, creator), (DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, creator));
                    break;
                case 5006:
                    n7((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                    break;
                case 5007:
                    u8((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                    break;
                case 5008:
                    J4((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                    break;
                case 5009:
                    J5((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                    break;
                case 5010:
                    r2((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                    break;
                case 5011:
                    A3((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                    break;
                default:
                    switch (i10) {
                        case 5016:
                            r1();
                            break;
                        case 5017:
                            M8((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 5018:
                            r9((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 5019:
                            Ea((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 5020:
                            j8(parcel.readInt(), parcel.readString());
                            break;
                        case 5021:
                            o7((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 5022:
                            v8((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 5023:
                            K4((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 5024:
                            N5((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 5025:
                            u2((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 5026:
                            t4((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR), parcel.createStringArray());
                            break;
                        case 5027:
                            W2((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR), parcel.createStringArray());
                            break;
                        case 5028:
                            s2((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR), parcel.createStringArray());
                            break;
                        case 5029:
                            ta((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR), parcel.createStringArray());
                            break;
                        case 5030:
                            a9((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR), parcel.createStringArray());
                            break;
                        case 5031:
                            S7((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR), parcel.createStringArray());
                            break;
                        case 5032:
                            T1((com.google.android.gms.games.multiplayer.realtime.zzb) com.google.android.gms.internal.games.zzd.b(parcel, com.google.android.gms.games.multiplayer.realtime.zzb.CREATOR));
                            break;
                        case 5033:
                            B9(parcel.readInt(), parcel.readInt(), parcel.readString());
                            break;
                        case 5034:
                            I1(parcel.readInt(), parcel.readString(), com.google.android.gms.internal.games.zzd.e(parcel));
                            break;
                        case 5035:
                            ga((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 5036:
                            z(parcel.readInt());
                            break;
                        case 5037:
                            ha((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 5038:
                            C3((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 5039:
                            ka((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 5040:
                            Z(parcel.readInt());
                            break;
                        case 9001:
                            a3((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 11001:
                            X2(parcel.readInt(), (Bundle) com.google.android.gms.internal.games.zzd.b(parcel, Bundle.CREATOR));
                            break;
                        case 12001:
                            U4((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 14001:
                            B4((DataHolder[]) parcel.createTypedArray(DataHolder.CREATOR));
                            break;
                        case 15001:
                            s4((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 17002:
                            F(parcel.readInt());
                            break;
                        case 19008:
                            G(parcel.readInt());
                            break;
                        case 19009:
                            w(parcel.readInt());
                            break;
                        case 19010:
                            j0(parcel.readInt());
                            break;
                        case 20001:
                            e3((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 20002:
                            V1((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 20003:
                            a2((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 20004:
                            la((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 20005:
                            b9((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 20006:
                            h8((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 20007:
                            f7((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 20008:
                            e6((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 20009:
                            X4((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                            break;
                        case 20012:
                            k1((Status) com.google.android.gms.internal.games.zzd.b(parcel, Status.CREATOR));
                            break;
                        case 20019:
                            J0(parcel.readInt());
                            break;
                        case 20020:
                            n2(parcel.readInt(), (Bundle) com.google.android.gms.internal.games.zzd.b(parcel, Bundle.CREATOR));
                            break;
                        case 23001:
                            l0(parcel.readInt());
                            break;
                        case 23002:
                            Q(parcel.readInt());
                            break;
                        case 23003:
                            w0(parcel.readInt());
                            break;
                        case 23004:
                            r0(parcel.readInt());
                            break;
                        case 23005:
                            R0(parcel.readInt());
                            break;
                        case 24002:
                            S(com.google.android.gms.internal.games.zzd.e(parcel));
                            break;
                        case 25002:
                            d0(parcel.readString());
                            break;
                        case 25003:
                            X3((Status) com.google.android.gms.internal.games.zzd.b(parcel, Status.CREATOR), parcel.readString());
                            break;
                        default:
                            switch (i10) {
                                case 8001:
                                    Z8((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                                    break;
                                case 8002:
                                    E5(parcel.readInt(), (Bundle) com.google.android.gms.internal.games.zzd.b(parcel, Bundle.CREATOR));
                                    break;
                                case 8003:
                                    u7((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                                    break;
                                case 8004:
                                    e4((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                                    break;
                                case 8005:
                                    o5((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                                    break;
                                case 8006:
                                    C1((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                                    break;
                                case 8007:
                                    K0(parcel.readInt(), parcel.readString());
                                    break;
                                case 8008:
                                    P3((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                                    break;
                                case 8009:
                                    O(parcel.readString());
                                    break;
                                case 8010:
                                    u(parcel.readString());
                                    break;
                                default:
                                    switch (i10) {
                                        case 10001:
                                            S6((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                                            break;
                                        case 10002:
                                            D(parcel.readString());
                                            break;
                                        case 10003:
                                            Z7((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                                            break;
                                        case 10004:
                                            d7((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                                            break;
                                        case 10005:
                                            p0(parcel.readInt(), (Bundle) com.google.android.gms.internal.games.zzd.b(parcel, Bundle.CREATOR));
                                            break;
                                        case 10006:
                                            Z5((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                                            break;
                                        default:
                                            switch (i10) {
                                                case 12004:
                                                    I3((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR), (Contents) com.google.android.gms.internal.games.zzd.b(parcel, Contents.CREATOR));
                                                    break;
                                                case 12005:
                                                    S3((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                                                    break;
                                                case 12006:
                                                    G2((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                                                    break;
                                                case 12007:
                                                    z9((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                                                    break;
                                                case 12008:
                                                    A6((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                                                    break;
                                                default:
                                                    switch (i10) {
                                                        case 12014:
                                                            z8((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                                                            break;
                                                        case 12015:
                                                            G3(parcel.readInt(), (Bundle) com.google.android.gms.internal.games.zzd.b(parcel, Bundle.CREATOR));
                                                            break;
                                                        case 12016:
                                                            w7((DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR));
                                                            break;
                                                        case 12017:
                                                            DataHolder dataHolder = (DataHolder) com.google.android.gms.internal.games.zzd.b(parcel, DataHolder.CREATOR);
                                                            String string = parcel.readString();
                                                            Parcelable.Creator<Contents> creator2 = Contents.CREATOR;
                                                            U7(dataHolder, string, (Contents) com.google.android.gms.internal.games.zzd.b(parcel, creator2), (Contents) com.google.android.gms.internal.games.zzd.b(parcel, creator2), (Contents) com.google.android.gms.internal.games.zzd.b(parcel, creator2));
                                                            break;
                                                        default:
                                                            return false;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            A0(parcel.readInt(), com.google.android.gms.internal.games.zzd.e(parcel));
        }
        parcel2.writeNoException();
        return true;
    }
}
