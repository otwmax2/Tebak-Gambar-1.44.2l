package com.tebakgambar.model;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class FreeAnswer implements Parcelable {
    public static final Parcelable.Creator<FreeAnswer> CREATOR = new Parcelable.Creator<FreeAnswer>() { // from class: com.tebakgambar.model.FreeAnswer.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FreeAnswer createFromParcel(Parcel parcel) {
            return new FreeAnswer(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FreeAnswer[] newArray(int i10) {
            return new FreeAnswer[i10];
        }
    };

    @b7.c("image_url")
    public String imageUrl;
    public int progress;
    public int qty;

    protected FreeAnswer(Parcel parcel) {
        this.qty = parcel.readInt();
        this.progress = parcel.readInt();
        this.imageUrl = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.qty);
        parcel.writeInt(this.progress);
        parcel.writeString(this.imageUrl);
    }
}
