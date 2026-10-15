package com.tebakgambar.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class SoalEvent implements Parcelable {
    public static final Parcelable.Creator<SoalEvent> CREATOR = new Parcelable.Creator<SoalEvent>() { // from class: com.tebakgambar.model.SoalEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SoalEvent createFromParcel(Parcel parcel) {
            return new SoalEvent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SoalEvent[] newArray(int i10) {
            return new SoalEvent[i10];
        }
    };
    public ArrayList<SoalSogam> data;

    public SoalEvent(ArrayList<SoalSogam> arrayList) {
        this.data = arrayList;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeList(this.data);
    }

    public SoalEvent(Parcel parcel) {
        this.data = parcel.readArrayList(null);
    }
}
