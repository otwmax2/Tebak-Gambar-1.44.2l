package com.tebakgambar.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class ResultEventClue extends BaseEvent {
    public static final Parcelable.Creator<ResultEventClue> CREATOR = new Parcelable.Creator<ResultEventClue>() { // from class: com.tebakgambar.model.ResultEventClue.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResultEventClue createFromParcel(Parcel parcel) {
            return new ResultEventClue(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResultEventClue[] newArray(int i10) {
            return new ResultEventClue[i10];
        }
    };
    public ArrayList<String> color_clue;
    public ArrayList<String> image_clue;
    public ArrayList<SoalClue> soal_clue;
    public ArrayList<String> tutorial;

    protected ResultEventClue(Parcel parcel) {
        super(parcel);
        this.image_clue = parcel.createStringArrayList();
        this.color_clue = parcel.createStringArrayList();
        this.tutorial = parcel.createStringArrayList();
        this.soal_clue = parcel.createTypedArrayList(SoalClue.CREATOR);
    }

    @Override // com.tebakgambar.model.BaseEvent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.tebakgambar.model.BaseEvent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeStringList(this.image_clue);
        parcel.writeStringList(this.color_clue);
        parcel.writeStringList(this.tutorial);
        parcel.writeTypedList(this.soal_clue);
    }
}
