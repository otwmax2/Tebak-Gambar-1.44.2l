package com.tebakgambar.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class SoalClue implements Parcelable {
    public static final Parcelable.Creator<SoalClue> CREATOR = new Parcelable.Creator<SoalClue>() { // from class: com.tebakgambar.model.SoalClue.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SoalClue createFromParcel(Parcel parcel) {
            return new SoalClue(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SoalClue[] newArray(int i10) {
            return new SoalClue[i10];
        }
    };
    public ArrayList<Clue> clue;
    public String id;

    public SoalClue(Parcel parcel) {
        this.id = parcel.readString();
        this.clue = parcel.createTypedArrayList(Clue.CREATOR);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.id);
        parcel.writeTypedList(this.clue);
    }
}
