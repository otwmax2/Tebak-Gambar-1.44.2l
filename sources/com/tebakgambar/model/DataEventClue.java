package com.tebakgambar.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class DataEventClue implements Parcelable {
    public static final Parcelable.Creator<DataEventClue> CREATOR = new Parcelable.Creator<DataEventClue>() { // from class: com.tebakgambar.model.DataEventClue.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DataEventClue createFromParcel(Parcel parcel) {
            return new DataEventClue(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DataEventClue[] newArray(int i10) {
            return new DataEventClue[i10];
        }
    };
    public String id;
    public ArrayList<String> soal_clue;

    public DataEventClue() {
        this.id = BuildConfig.FLAVOR;
        this.soal_clue = new ArrayList<>();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.id);
        parcel.writeStringList(this.soal_clue);
    }

    public DataEventClue(Parcel parcel) {
        this.id = parcel.readString();
        parcel.readStringList(this.soal_clue);
    }
}
