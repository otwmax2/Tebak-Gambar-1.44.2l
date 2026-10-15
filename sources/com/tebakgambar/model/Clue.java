package com.tebakgambar.model;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class Clue implements Parcelable {
    public static final Parcelable.Creator<Clue> CREATOR = new Parcelable.Creator<Clue>() { // from class: com.tebakgambar.model.Clue.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Clue createFromParcel(Parcel parcel) {
            return new Clue(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Clue[] newArray(int i10) {
            return new Clue[i10];
        }
    };
    public String jawaban;
    public String soal_image_url;

    public Clue(String str, String str2) {
        this.soal_image_url = str;
        this.jawaban = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.soal_image_url);
        parcel.writeString(this.jawaban);
    }

    public Clue(Parcel parcel) {
        this.soal_image_url = parcel.readString();
        this.jawaban = parcel.readString();
    }
}
