package com.tebakgambar.model;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.tebakgambar.TGApplication;
import y8.y;

/* JADX INFO: loaded from: classes2.dex */
public class BaseEvent implements Parcelable {
    public static final Parcelable.Creator<BaseEvent> CREATOR = new Parcelable.Creator<BaseEvent>() { // from class: com.tebakgambar.model.BaseEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BaseEvent createFromParcel(Parcel parcel) {
            return new BaseEvent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BaseEvent[] newArray(int i10) {
            return new BaseEvent[i10];
        }
    };
    public String ads_banner;
    public String ads_url;
    private int colorInt;
    public String color_first_event;
    public String extra_hashtag;
    public String id;
    public String mascot_image_url;
    public String message_event_end;
    public String message_event_start;
    public String message_login;
    public String need_login;
    public String negative_login;
    public String positive_login;
    public String sub_title_event;
    public String title_event;
    public String title_login;
    public String welcome_image_url;

    public BaseEvent() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getColor() {
        if (this.colorInt == 0) {
            try {
                this.colorInt = Color.parseColor("#" + this.color_first_event);
            } catch (Exception unused) {
                this.colorInt = Color.parseColor("#00AAA1");
            }
        }
        return this.colorInt;
    }

    public boolean isAdBannerAvailable() {
        return (TextUtils.isEmpty(this.ads_banner) || TextUtils.isEmpty(this.ads_url)) ? false : true;
    }

    public boolean isDone() {
        return y.O(TGApplication.d(), this.id).contains("-1");
    }

    public boolean isMessageExists() {
        return (TextUtils.isEmpty(this.message_event_start) && "-".equals(this.message_event_start)) ? false : true;
    }

    public boolean isNew() {
        return y.P(TGApplication.d(), this.id).equals(AppEventsConstants.EVENT_PARAM_VALUE_NO) || y.O(TGApplication.d(), this.id).equals("-1");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.id);
        parcel.writeString(this.title_event);
        parcel.writeString(this.sub_title_event);
        parcel.writeString(this.color_first_event);
        parcel.writeString(this.mascot_image_url);
        parcel.writeString(this.message_event_start);
        parcel.writeString(this.message_event_end);
        parcel.writeString(this.ads_banner);
        parcel.writeString(this.ads_url);
        parcel.writeString(this.need_login);
        parcel.writeString(this.message_login);
        parcel.writeString(this.title_login);
        parcel.writeString(this.positive_login);
        parcel.writeString(this.negative_login);
        parcel.writeString(this.welcome_image_url);
        parcel.writeString(this.extra_hashtag);
    }

    protected BaseEvent(Parcel parcel) {
        this.id = parcel.readString();
        this.title_event = parcel.readString();
        this.sub_title_event = parcel.readString();
        this.color_first_event = parcel.readString();
        this.mascot_image_url = parcel.readString();
        this.message_event_start = parcel.readString();
        this.message_event_end = parcel.readString();
        this.ads_banner = parcel.readString();
        this.ads_url = parcel.readString();
        this.need_login = parcel.readString();
        this.message_login = parcel.readString();
        this.title_login = parcel.readString();
        this.positive_login = parcel.readString();
        this.negative_login = parcel.readString();
        this.welcome_image_url = parcel.readString();
        this.extra_hashtag = parcel.readString();
    }
}
