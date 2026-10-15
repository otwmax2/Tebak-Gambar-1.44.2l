package com.tebakgambar.sticker.model;

import android.content.Context;
import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import b7.c;
import com.tebakgambar.R;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class StickerCampaignDetail implements Parcelable {
    public static final Parcelable.Creator<StickerCampaignDetail> CREATOR = new Parcelable.Creator<StickerCampaignDetail>() { // from class: com.tebakgambar.sticker.model.StickerCampaignDetail.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StickerCampaignDetail createFromParcel(Parcel parcel) {
            return new StickerCampaignDetail(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StickerCampaignDetail[] newArray(int i10) {
            return new StickerCampaignDetail[i10];
        }
    };

    @c("background_color")
    public String backgroundColor;

    @c("banner_image_url")
    public String bannerImageUrl;

    @c("claim_button")
    public Button claimButton;
    public int id;

    @c("need_login")
    public boolean isNeedLogin;

    @c("share_button")
    public Button shareButton;

    @c("share_text")
    public String shareText;

    @c("sticker_bundle")
    public StickerBundle stickerBundle;
    public Term term;

    public static class Button implements Parcelable {
        public static final Parcelable.Creator<Button> CREATOR = new Parcelable.Creator<Button>() { // from class: com.tebakgambar.sticker.model.StickerCampaignDetail.Button.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Button createFromParcel(Parcel parcel) {
                return new Button(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Button[] newArray(int i10) {
                return new Button[i10];
            }
        };

        @c("background_color")
        public String backgroundColor;

        @c("text_color")
        public String textColor;
        public String title;

        protected Button(Parcel parcel) {
            this.backgroundColor = parcel.readString();
            this.title = parcel.readString();
            this.textColor = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getBackgroundColor(Context context) {
            if (!TextUtils.isEmpty(this.backgroundColor)) {
                try {
                    return Color.parseColor(this.backgroundColor);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            return context.getResources().getColor(R.color.color_dark_green_1);
        }

        public int getTextColor(Context context) {
            if (!TextUtils.isEmpty(this.textColor)) {
                try {
                    return Color.parseColor(this.textColor);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            return context.getResources().getColor(R.color.color_dark_green_1);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.backgroundColor);
            parcel.writeString(this.title);
            parcel.writeString(this.textColor);
        }
    }

    public static class Term implements Parcelable {
        public static final Parcelable.Creator<Term> CREATOR = new Parcelable.Creator<Term>() { // from class: com.tebakgambar.sticker.model.StickerCampaignDetail.Term.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Term createFromParcel(Parcel parcel) {
                return new Term(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Term[] newArray(int i10) {
                return new Term[i10];
            }
        };

        @c("background_color")
        public String backgroundColor;
        public List<String> points;

        @c("text_color")
        public String textColor;
        public String title;

        protected Term(Parcel parcel) {
            this.backgroundColor = parcel.readString();
            this.title = parcel.readString();
            this.points = parcel.createStringArrayList();
            this.textColor = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getBackgroundColor(Context context) {
            if (!TextUtils.isEmpty(this.backgroundColor)) {
                try {
                    return Color.parseColor(this.backgroundColor);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            return context.getResources().getColor(R.color.color_dark_green_1);
        }

        public int getTextColor(Context context) {
            if (!TextUtils.isEmpty(this.textColor)) {
                try {
                    return Color.parseColor(this.textColor);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            return context.getResources().getColor(R.color.color_dark_green_1);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.backgroundColor);
            parcel.writeString(this.title);
            parcel.writeStringList(this.points);
            parcel.writeString(this.textColor);
        }
    }

    protected StickerCampaignDetail(Parcel parcel) {
        this.id = parcel.readInt();
        this.backgroundColor = parcel.readString();
        this.bannerImageUrl = parcel.readString();
        this.shareText = parcel.readString();
        this.term = (Term) parcel.readParcelable(Term.class.getClassLoader());
        this.stickerBundle = (StickerBundle) parcel.readParcelable(StickerBundle.class.getClassLoader());
        this.claimButton = (Button) parcel.readParcelable(Button.class.getClassLoader());
        this.shareButton = (Button) parcel.readParcelable(Button.class.getClassLoader());
        this.isNeedLogin = parcel.readInt() == 1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getBackgroundColor(Context context) {
        if (!TextUtils.isEmpty(this.backgroundColor)) {
            try {
                return Color.parseColor(this.backgroundColor);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return context.getResources().getColor(R.color.color_dark_green_1);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.id);
        parcel.writeString(this.backgroundColor);
        parcel.writeString(this.bannerImageUrl);
        parcel.writeString(this.shareText);
        parcel.writeParcelable(this.term, i10);
        parcel.writeParcelable(this.stickerBundle, i10);
        parcel.writeParcelable(this.claimButton, i10);
        parcel.writeParcelable(this.shareButton, i10);
        parcel.writeInt(this.isNeedLogin ? 1 : 0);
    }
}
