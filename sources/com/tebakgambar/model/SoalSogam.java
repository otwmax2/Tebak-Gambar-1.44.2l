package com.tebakgambar.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: loaded from: classes2.dex */
public class SoalSogam implements Parcelable {
    public static final Parcelable.Creator<SoalSogam> CREATOR = new Parcelable.Creator<SoalSogam>() { // from class: com.tebakgambar.model.SoalSogam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SoalSogam createFromParcel(Parcel parcel) {
            return new SoalSogam(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SoalSogam[] newArray(int i10) {
            return new SoalSogam[i10];
        }
    };
    public Integer default_point;
    public Integer duration;
    public String id;
    public String jawaban;
    public String jawaban1;
    public String jawaban2;
    public String soal_image_url;
    public String type;
    public String username;

    public SoalSogam() {
        this.id = BuildConfig.FLAVOR;
        this.username = BuildConfig.FLAVOR;
        this.jawaban = BuildConfig.FLAVOR;
        this.jawaban1 = BuildConfig.FLAVOR;
        this.jawaban2 = BuildConfig.FLAVOR;
        this.soal_image_url = BuildConfig.FLAVOR;
        this.duration = 0;
        this.default_point = 0;
        this.type = "REGULAR";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Boolean isRegularType() {
        return Boolean.valueOf(!this.type.equalsIgnoreCase("COUNTDOWN"));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.id);
        parcel.writeString(this.username);
        parcel.writeString(this.jawaban);
        parcel.writeString(this.jawaban1);
        parcel.writeString(this.jawaban2);
        parcel.writeString(this.soal_image_url);
        parcel.writeInt(this.duration.intValue());
        parcel.writeInt(this.default_point.intValue());
        parcel.writeString(this.type);
    }

    public SoalSogam(Parcel parcel) {
        this.id = parcel.readString();
        this.username = parcel.readString();
        this.jawaban = parcel.readString();
        this.jawaban1 = parcel.readString();
        this.jawaban2 = parcel.readString();
        this.soal_image_url = parcel.readString();
        this.duration = Integer.valueOf(parcel.readInt());
        this.default_point = Integer.valueOf(parcel.readInt());
        this.type = parcel.readString();
    }
}
