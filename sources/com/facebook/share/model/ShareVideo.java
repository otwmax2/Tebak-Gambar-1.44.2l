package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.internal.ShareConstants;
import com.facebook.share.model.ShareMedia;
import t9.g;
import t9.m;

/* JADX INFO: compiled from: ShareVideo.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ShareVideo extends ShareMedia<ShareVideo, Builder> {
    private final Uri localUrl;
    private final ShareMedia.Type mediaType;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<ShareVideo> CREATOR = new Parcelable.Creator<ShareVideo>() { // from class: com.facebook.share.model.ShareVideo$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareVideo createFromParcel(Parcel parcel) {
            m.e(parcel, ShareConstants.FEED_SOURCE_PARAM);
            return new ShareVideo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareVideo[] newArray(int i10) {
            return new ShareVideo[i10];
        }
    };

    /* JADX INFO: compiled from: ShareVideo.kt */
    public static final class Builder extends ShareMedia.Builder<ShareVideo, Builder> {
        private Uri localUrl;

        public final Uri getLocalUrl$facebook_common_release() {
            return this.localUrl;
        }

        public final Builder readFrom$facebook_common_release(Parcel parcel) {
            m.e(parcel, "parcel");
            return readFrom((ShareVideo) parcel.readParcelable(ShareVideo.class.getClassLoader()));
        }

        public final Builder setLocalUrl(Uri uri) {
            this.localUrl = uri;
            return this;
        }

        public final void setLocalUrl$facebook_common_release(Uri uri) {
            this.localUrl = uri;
        }

        @Override // com.facebook.share.ShareBuilder
        public ShareVideo build() {
            return new ShareVideo(this, null);
        }

        @Override // com.facebook.share.model.ShareMedia.Builder, com.facebook.share.model.ShareModelBuilder
        public Builder readFrom(ShareVideo shareVideo) {
            return shareVideo == null ? this : setLocalUrl(shareVideo.getLocalUrl());
        }
    }

    /* JADX INFO: compiled from: ShareVideo.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }
    }

    private ShareVideo(Builder builder) {
        super(builder);
        this.mediaType = ShareMedia.Type.VIDEO;
        this.localUrl = builder.getLocalUrl$facebook_common_release();
    }

    public /* synthetic */ ShareVideo(Builder builder, g gVar) {
        this(builder);
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final Uri getLocalUrl() {
        return this.localUrl;
    }

    @Override // com.facebook.share.model.ShareMedia
    public ShareMedia.Type getMediaType() {
        return this.mediaType;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        m.e(parcel, "out");
        super.writeToParcel(parcel, i10);
        parcel.writeParcelable(this.localUrl, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareVideo(Parcel parcel) {
        super(parcel);
        m.e(parcel, "parcel");
        this.mediaType = ShareMedia.Type.VIDEO;
        this.localUrl = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
    }
}
