package com.tebakgambar.sticker.model;

import android.os.Parcel;
import android.os.Parcelable;
import b7.c;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Sticker implements Parcelable {
    public static final Parcelable.Creator<Sticker> CREATOR = new Parcelable.Creator<Sticker>() { // from class: com.tebakgambar.sticker.model.Sticker.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Sticker createFromParcel(Parcel parcel) {
            return new Sticker(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Sticker[] newArray(int i10) {
            return new Sticker[i10];
        }
    };
    public List<String> emojis;

    @c("image_file")
    public String imageName;

    @c("image_url")
    public String imageUrl;

    protected Sticker(Parcel parcel) {
        this.emojis = parcel.createStringArrayList();
        this.imageUrl = parcel.readString();
        this.imageName = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeStringList(this.emojis);
        parcel.writeString(this.imageUrl);
        parcel.writeString(this.imageName);
    }
}
