package com.tebakgambar.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Date;
import ua.d;
import ua.e;

/* JADX INFO: loaded from: classes2.dex */
public class CustomBanner$$Parcelable implements Parcelable, d<CustomBanner> {
    public static final Parcelable.Creator<CustomBanner$$Parcelable> CREATOR = new Parcelable.Creator<CustomBanner$$Parcelable>() { // from class: com.tebakgambar.model.CustomBanner$$Parcelable.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CustomBanner$$Parcelable createFromParcel(Parcel parcel) {
            return new CustomBanner$$Parcelable(CustomBanner$$Parcelable.read(parcel, new ua.a()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CustomBanner$$Parcelable[] newArray(int i10) {
            return new CustomBanner$$Parcelable[i10];
        }
    };
    private CustomBanner customBanner$$0;

    public CustomBanner$$Parcelable(CustomBanner customBanner) {
        this.customBanner$$0 = customBanner;
    }

    public static CustomBanner read(Parcel parcel, ua.a aVar) {
        int i10 = parcel.readInt();
        if (aVar.a(i10)) {
            if (aVar.d(i10)) {
                throw new e("An instance loop was detected whild building Parcelable and deseralization cannot continue.  This error is most likely due to using @ParcelConstructor or @ParcelFactory.");
            }
            return (CustomBanner) aVar.b(i10);
        }
        int iG = aVar.g();
        CustomBanner customBanner = new CustomBanner();
        aVar.f(iG, customBanner);
        customBanner.negative = parcel.readString();
        customBanner.endDate = (Date) parcel.readSerializable();
        customBanner.webUrl = parcel.readString();
        customBanner.imageUrl = parcel.readString();
        customBanner.description = parcel.readString();
        customBanner.positive = parcel.readString();
        customBanner.title = parcel.readString();
        customBanner.type = parcel.readInt();
        customBanner.startDate = (Date) parcel.readSerializable();
        customBanner.status = parcel.readInt();
        aVar.f(i10, customBanner);
        return customBanner;
    }

    public static void write(CustomBanner customBanner, Parcel parcel, int i10, ua.a aVar) {
        int iC = aVar.c(customBanner);
        if (iC != -1) {
            parcel.writeInt(iC);
            return;
        }
        parcel.writeInt(aVar.e(customBanner));
        parcel.writeString(customBanner.negative);
        parcel.writeSerializable(customBanner.endDate);
        parcel.writeString(customBanner.webUrl);
        parcel.writeString(customBanner.imageUrl);
        parcel.writeString(customBanner.description);
        parcel.writeString(customBanner.positive);
        parcel.writeString(customBanner.title);
        parcel.writeInt(customBanner.type);
        parcel.writeSerializable(customBanner.startDate);
        parcel.writeInt(customBanner.status);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        write(this.customBanner$$0, parcel, i10, new ua.a());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // ua.d
    public CustomBanner getParcel() {
        return this.customBanner$$0;
    }
}
