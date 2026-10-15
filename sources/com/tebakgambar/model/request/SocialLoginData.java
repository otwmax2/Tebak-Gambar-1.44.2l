package com.tebakgambar.model.request;

import android.os.Parcel;
import android.os.Parcelable;
import b7.c;
import com.tebakgambar.model.LocalUserData;
import com.vungle.mediation.BuildConfig;
import java.util.Date;
import java.util.Map;
import y8.l;

/* JADX INFO: loaded from: classes2.dex */
public class SocialLoginData implements Parcelable, RequestData {
    public static final Parcelable.Creator<SocialLoginData> CREATOR = new Parcelable.Creator<SocialLoginData>() { // from class: com.tebakgambar.model.request.SocialLoginData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SocialLoginData createFromParcel(Parcel parcel) {
            return new SocialLoginData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SocialLoginData[] newArray(int i10) {
            return new SocialLoginData[i10];
        }
    };
    public static final int SOCIAL_MEDIA_TYPE_FACEBOOK = 1;
    public static final int SOCIAL_MEDIA_TYPE_LINE = 3;
    public static final int SOCIAL_MEDIA_TYPE_TWITTER = 2;
    public Date birthDate;

    @c("email")
    public String email;

    @c("full_name")
    public String fullName;
    public String gender;

    @c("image_url")
    public String imageUrl;
    public String imei;

    @c("phone_number")
    public String phoneNumber;

    @c("social_client_id")
    public String socialClientId;

    @c("social_type")
    public int socialType;

    @c("user_token")
    public String userToken;
    public String username;

    public SocialLoginData(String str) {
        this.imei = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.tebakgambar.model.request.RequestData
    public Map<String, String> toFieldMap() {
        String syncToken = LocalUserData.getInstance().isLoggedIn() ? LocalUserData.getInstance().getSyncToken() : null;
        l lVar = new l();
        lVar.a("social_client_id", this.socialClientId, BuildConfig.FLAVOR);
        lVar.a("username", this.username, BuildConfig.FLAVOR);
        lVar.a("user_token", this.userToken, BuildConfig.FLAVOR);
        lVar.a("full_name", this.fullName, BuildConfig.FLAVOR);
        lVar.a("email", this.email, BuildConfig.FLAVOR);
        lVar.a("image_url", this.imageUrl, BuildConfig.FLAVOR);
        lVar.a("phone_number", this.phoneNumber, BuildConfig.FLAVOR);
        lVar.a("gender", this.gender, BuildConfig.FLAVOR);
        lVar.a("social_type", String.valueOf(this.socialType), BuildConfig.FLAVOR);
        lVar.a("imei", this.imei, BuildConfig.FLAVOR);
        lVar.put("sync_token", syncToken);
        return lVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.socialClientId);
        parcel.writeString(this.username);
        parcel.writeString(this.userToken);
        parcel.writeString(this.fullName);
        parcel.writeString(this.email);
        parcel.writeString(this.imageUrl);
        parcel.writeString(this.phoneNumber);
        parcel.writeString(this.gender);
        parcel.writeInt(this.socialType);
        parcel.writeString(this.imei);
    }

    protected SocialLoginData(Parcel parcel) {
        this.socialClientId = parcel.readString();
        this.username = parcel.readString();
        this.userToken = parcel.readString();
        this.fullName = parcel.readString();
        this.email = parcel.readString();
        this.imageUrl = parcel.readString();
        this.phoneNumber = parcel.readString();
        this.gender = parcel.readString();
        this.socialType = parcel.readInt();
        this.imei = parcel.readString();
    }
}
