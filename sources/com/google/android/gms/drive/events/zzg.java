package com.google.android.gms.drive.events;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class zzg implements Parcelable.Creator<CompletionEvent> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CompletionEvent createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        DriveId driveId = null;
        String strP = null;
        ParcelFileDescriptor parcelFileDescriptor = null;
        ParcelFileDescriptor parcelFileDescriptor2 = null;
        MetadataBundle metadataBundle = null;
        ArrayList<String> arrayListR = null;
        IBinder iBinderD = null;
        int iE = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 2:
                    driveId = (DriveId) SafeParcelReader.o(parcel, iC, DriveId.CREATOR);
                    break;
                case 3:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 4:
                    parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.o(parcel, iC, ParcelFileDescriptor.CREATOR);
                    break;
                case 5:
                    parcelFileDescriptor2 = (ParcelFileDescriptor) SafeParcelReader.o(parcel, iC, ParcelFileDescriptor.CREATOR);
                    break;
                case 6:
                    metadataBundle = (MetadataBundle) SafeParcelReader.o(parcel, iC, MetadataBundle.CREATOR);
                    break;
                case 7:
                    arrayListR = SafeParcelReader.r(parcel, iC);
                    break;
                case 8:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 9:
                    iBinderD = SafeParcelReader.D(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new CompletionEvent(driveId, strP, parcelFileDescriptor, parcelFileDescriptor2, metadataBundle, arrayListR, iE, iBinderD);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CompletionEvent[] newArray(int i10) {
        return new CompletionEvent[i10];
    }
}
