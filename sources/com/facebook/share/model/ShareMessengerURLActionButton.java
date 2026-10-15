package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareMessengerActionButton;
import java.util.Arrays;
import t9.g;
import t9.m;

/* JADX INFO: compiled from: ShareMessengerURLActionButton.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ShareMessengerURLActionButton extends ShareMessengerActionButton {
    private final Uri fallbackUrl;
    private final boolean isMessengerExtensionURL;
    private final boolean shouldHideWebviewShareButton;
    private final Uri url;
    private final WebviewHeightRatio webviewHeightRatio;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<ShareMessengerURLActionButton> CREATOR = new Parcelable.Creator<ShareMessengerURLActionButton>() { // from class: com.facebook.share.model.ShareMessengerURLActionButton$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareMessengerURLActionButton createFromParcel(Parcel parcel) {
            m.e(parcel, "parcel");
            return new ShareMessengerURLActionButton(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareMessengerURLActionButton[] newArray(int i10) {
            return new ShareMessengerURLActionButton[i10];
        }
    };

    /* JADX INFO: compiled from: ShareMessengerURLActionButton.kt */
    public static final class Builder extends ShareMessengerActionButton.Builder<ShareMessengerURLActionButton, Builder> {
        private Uri fallbackUrl;
        private boolean isMessengerExtensionURL;
        private boolean shouldHideWebviewShareButton;
        private Uri url;
        private WebviewHeightRatio webviewHeightRatio;

        public final Uri getFallbackUrl$facebook_common_release() {
            return this.fallbackUrl;
        }

        public final boolean getShouldHideWebviewShareButton$facebook_common_release() {
            return this.shouldHideWebviewShareButton;
        }

        public final Uri getUrl$facebook_common_release() {
            return this.url;
        }

        public final WebviewHeightRatio getWebviewHeightRatio$facebook_common_release() {
            return this.webviewHeightRatio;
        }

        public final boolean isMessengerExtensionURL$facebook_common_release() {
            return this.isMessengerExtensionURL;
        }

        public final Builder setFallbackUrl(Uri uri) {
            this.fallbackUrl = uri;
            return this;
        }

        public final void setFallbackUrl$facebook_common_release(Uri uri) {
            this.fallbackUrl = uri;
        }

        public final Builder setIsMessengerExtensionURL(boolean z10) {
            this.isMessengerExtensionURL = z10;
            return this;
        }

        public final void setMessengerExtensionURL$facebook_common_release(boolean z10) {
            this.isMessengerExtensionURL = z10;
        }

        public final Builder setShouldHideWebviewShareButton(boolean z10) {
            this.shouldHideWebviewShareButton = z10;
            return this;
        }

        public final void setShouldHideWebviewShareButton$facebook_common_release(boolean z10) {
            this.shouldHideWebviewShareButton = z10;
        }

        public final Builder setUrl(Uri uri) {
            this.url = uri;
            return this;
        }

        public final void setUrl$facebook_common_release(Uri uri) {
            this.url = uri;
        }

        public final Builder setWebviewHeightRatio(WebviewHeightRatio webviewHeightRatio) {
            this.webviewHeightRatio = webviewHeightRatio;
            return this;
        }

        public final void setWebviewHeightRatio$facebook_common_release(WebviewHeightRatio webviewHeightRatio) {
            this.webviewHeightRatio = webviewHeightRatio;
        }

        @Override // com.facebook.share.ShareBuilder
        public ShareMessengerURLActionButton build() {
            return new ShareMessengerURLActionButton(this, null);
        }

        @Override // com.facebook.share.model.ShareMessengerActionButton.Builder, com.facebook.share.model.ShareModelBuilder
        public Builder readFrom(ShareMessengerURLActionButton shareMessengerURLActionButton) {
            return shareMessengerURLActionButton == null ? this : setUrl(shareMessengerURLActionButton.getUrl()).setIsMessengerExtensionURL(shareMessengerURLActionButton.isMessengerExtensionURL()).setFallbackUrl(shareMessengerURLActionButton.getFallbackUrl()).setWebviewHeightRatio(shareMessengerURLActionButton.getWebviewHeightRatio()).setShouldHideWebviewShareButton(shareMessengerURLActionButton.getShouldHideWebviewShareButton());
        }
    }

    /* JADX INFO: compiled from: ShareMessengerURLActionButton.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: ShareMessengerURLActionButton.kt */
    public enum WebviewHeightRatio {
        WebviewHeightRatioFull,
        WebviewHeightRatioTall,
        WebviewHeightRatioCompact;

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static WebviewHeightRatio[] valuesCustom() {
            WebviewHeightRatio[] webviewHeightRatioArrValuesCustom = values();
            return (WebviewHeightRatio[]) Arrays.copyOf(webviewHeightRatioArrValuesCustom, webviewHeightRatioArrValuesCustom.length);
        }
    }

    private ShareMessengerURLActionButton(Builder builder) {
        super(builder);
        this.url = builder.getUrl$facebook_common_release();
        this.isMessengerExtensionURL = builder.isMessengerExtensionURL$facebook_common_release();
        this.fallbackUrl = builder.getFallbackUrl$facebook_common_release();
        this.webviewHeightRatio = builder.getWebviewHeightRatio$facebook_common_release();
        this.shouldHideWebviewShareButton = builder.getShouldHideWebviewShareButton$facebook_common_release();
    }

    public /* synthetic */ ShareMessengerURLActionButton(Builder builder, g gVar) {
        this(builder);
    }

    public final Uri getFallbackUrl() {
        return this.fallbackUrl;
    }

    public final boolean getIsMessengerExtensionURL() {
        return this.isMessengerExtensionURL;
    }

    public final boolean getShouldHideWebviewShareButton() {
        return this.shouldHideWebviewShareButton;
    }

    public final Uri getUrl() {
        return this.url;
    }

    public final WebviewHeightRatio getWebviewHeightRatio() {
        return this.webviewHeightRatio;
    }

    public final boolean isMessengerExtensionURL() {
        return this.isMessengerExtensionURL;
    }

    @Override // com.facebook.share.model.ShareMessengerActionButton, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        m.e(parcel, "dest");
        super.writeToParcel(parcel, i10);
        parcel.writeParcelable(this.url, 0);
        parcel.writeByte(this.isMessengerExtensionURL ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.fallbackUrl, 0);
        parcel.writeSerializable(this.webviewHeightRatio);
        parcel.writeByte(this.isMessengerExtensionURL ? (byte) 1 : (byte) 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareMessengerURLActionButton(Parcel parcel) {
        super(parcel);
        m.e(parcel, "parcel");
        this.url = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.isMessengerExtensionURL = parcel.readByte() != 0;
        this.fallbackUrl = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.webviewHeightRatio = (WebviewHeightRatio) parcel.readSerializable();
        this.shouldHideWebviewShareButton = parcel.readByte() != 0;
    }
}
