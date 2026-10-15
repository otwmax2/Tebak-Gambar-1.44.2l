package com.tebakgambar.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class DataEvent implements Parcelable {
    public static final Parcelable.Creator<DataEvent> CREATOR = new Parcelable.Creator<DataEvent>() { // from class: com.tebakgambar.model.DataEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DataEvent createFromParcel(Parcel parcel) {
            return new DataEvent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DataEvent[] newArray(int i10) {
            return new DataEvent[i10];
        }
    };
    public ArrayList<String> finished;
    public String id;
    public String last;

    public DataEvent() {
        this.id = BuildConfig.FLAVOR;
        this.last = BuildConfig.FLAVOR;
        this.finished = new ArrayList<>();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.id);
        parcel.writeSerializable(this.last);
        parcel.writeStringList(this.finished);
    }

    public DataEvent(Parcel parcel) {
        this.id = parcel.readString();
        this.last = parcel.readString();
        parcel.readStringList(this.finished);
    }
}
