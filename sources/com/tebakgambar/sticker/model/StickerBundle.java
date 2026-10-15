package com.tebakgambar.sticker.model;

import android.os.Parcel;
import android.os.Parcelable;
import b7.c;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class StickerBundle implements Parcelable {
    public static final Parcelable.Creator<StickerBundle> CREATOR = new Parcelable.Creator<StickerBundle>() { // from class: com.tebakgambar.sticker.model.StickerBundle.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StickerBundle createFromParcel(Parcel parcel) {
            return new StickerBundle(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StickerBundle[] newArray(int i10) {
            return new StickerBundle[i10];
        }
    };

    @c("android_play_store_link")
    public String androidPlayStoreLink;

    @c("ios_app_store_link")
    public String iosAppStoreLink;

    @c("sticker_packs")
    public List<StickerPack> stickerPacks;

    protected StickerBundle(Parcel parcel) {
        this.androidPlayStoreLink = parcel.readString();
        this.iosAppStoreLink = parcel.readString();
        this.stickerPacks = parcel.createTypedArrayList(StickerPack.CREATOR);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.androidPlayStoreLink);
        parcel.writeString(this.iosAppStoreLink);
        parcel.writeTypedList(this.stickerPacks);
    }
}
