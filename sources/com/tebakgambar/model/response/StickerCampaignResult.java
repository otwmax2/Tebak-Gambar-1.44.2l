package com.tebakgambar.model.response;

import android.os.Parcel;
import android.os.Parcelable;
import b7.c;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class StickerCampaignResult implements Parcelable {
    public static final Parcelable.Creator<StickerCampaignResult> CREATOR = new Parcelable.Creator<StickerCampaignResult>() { // from class: com.tebakgambar.model.response.StickerCampaignResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StickerCampaignResult createFromParcel(Parcel parcel) {
            return new StickerCampaignResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StickerCampaignResult[] newArray(int i10) {
            return new StickerCampaignResult[i10];
        }
    };

    @c("button_image_url")
    public String buttonImageUrl;

    @c("campaign_details")
    public List<CampaignDetail> campaignDetails;
    public String title;
    public int version;

    public static class CampaignDetail implements Parcelable {
        public static final Parcelable.Creator<CampaignDetail> CREATOR = new Parcelable.Creator<CampaignDetail>() { // from class: com.tebakgambar.model.response.StickerCampaignResult.CampaignDetail.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CampaignDetail createFromParcel(Parcel parcel) {
                return new CampaignDetail(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CampaignDetail[] newArray(int i10) {
                return new CampaignDetail[i10];
            }
        };

        @c("cover_image_url")
        public String coverImageUrl;
        public int id;

        @c("is_enable")
        public boolean isEnabled;
        public int version;

        protected CampaignDetail(Parcel parcel) {
            this.id = parcel.readInt();
            this.version = parcel.readInt();
            this.coverImageUrl = parcel.readString();
            this.isEnabled = parcel.readByte() != 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.id);
            parcel.writeInt(this.version);
            parcel.writeString(this.coverImageUrl);
            parcel.writeByte(this.isEnabled ? (byte) 1 : (byte) 0);
        }
    }

    protected StickerCampaignResult(Parcel parcel) {
        this.buttonImageUrl = parcel.readString();
        this.campaignDetails = parcel.createTypedArrayList(CampaignDetail.CREATOR);
        this.title = parcel.readString();
        this.version = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.buttonImageUrl);
        parcel.writeTypedList(this.campaignDetails);
        parcel.writeString(this.title);
        parcel.writeInt(this.version);
    }
}
