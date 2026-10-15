package com.tebakgambar.model;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class ResultEvents extends BaseEvent {
    public static final Parcelable.Creator<ResultEvents> CREATOR = new Parcelable.Creator<ResultEvents>() { // from class: com.tebakgambar.model.ResultEvents.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResultEvents createFromParcel(Parcel parcel) {
            return new ResultEvents(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResultEvents[] newArray(int i10) {
            return new ResultEvents[i10];
        }
    };

    protected ResultEvents(Parcel parcel) {
        super(parcel);
    }

    @Override // com.tebakgambar.model.BaseEvent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.tebakgambar.model.BaseEvent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
    }
}
