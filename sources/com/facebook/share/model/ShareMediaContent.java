package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.internal.ShareConstants;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.ShareVideo;
import i9.l;
import i9.t;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import t9.g;
import t9.m;

/* JADX INFO: compiled from: ShareMediaContent.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ShareMediaContent extends ShareContent<ShareMediaContent, Builder> {
    private final List<ShareMedia<?, ?>> media;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<ShareMediaContent> CREATOR = new Parcelable.Creator<ShareMediaContent>() { // from class: com.facebook.share.model.ShareMediaContent$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareMediaContent createFromParcel(Parcel parcel) {
            m.e(parcel, ShareConstants.FEED_SOURCE_PARAM);
            return new ShareMediaContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareMediaContent[] newArray(int i10) {
            return new ShareMediaContent[i10];
        }
    };

    /* JADX INFO: compiled from: ShareMediaContent.kt */
    public static final class Builder extends ShareContent.Builder<ShareMediaContent, Builder> {
        private final List<ShareMedia<?, ?>> media = new ArrayList();

        public final Builder addMedia(List<? extends ShareMedia<?, ?>> list) {
            if (list != null) {
                Iterator<? extends ShareMedia<?, ?>> it = list.iterator();
                while (it.hasNext()) {
                    addMedium(it.next());
                }
            }
            return this;
        }

        public final Builder addMedium(ShareMedia<?, ?> shareMedia) {
            ShareMedia<?, ?> shareMediaBuild;
            if (shareMedia != null) {
                if (shareMedia instanceof SharePhoto) {
                    shareMediaBuild = new SharePhoto.Builder().readFrom((SharePhoto) shareMedia).build();
                } else {
                    if (!(shareMedia instanceof ShareVideo)) {
                        throw new IllegalArgumentException("medium must be either a SharePhoto or ShareVideo");
                    }
                    shareMediaBuild = new ShareVideo.Builder().readFrom((ShareVideo) shareMedia).build();
                }
                this.media.add(shareMediaBuild);
            }
            return this;
        }

        public final List<ShareMedia<?, ?>> getMedia$facebook_common_release() {
            return this.media;
        }

        public final Builder setMedia(List<? extends ShareMedia<?, ?>> list) {
            this.media.clear();
            addMedia(list);
            return this;
        }

        @Override // com.facebook.share.ShareBuilder
        public ShareMediaContent build() {
            return new ShareMediaContent(this, null);
        }

        @Override // com.facebook.share.model.ShareContent.Builder, com.facebook.share.model.ShareModelBuilder
        public Builder readFrom(ShareMediaContent shareMediaContent) {
            return shareMediaContent == null ? this : ((Builder) super.readFrom(shareMediaContent)).addMedia(shareMediaContent.getMedia());
        }
    }

    /* JADX INFO: compiled from: ShareMediaContent.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }
    }

    private ShareMediaContent(Builder builder) {
        super(builder);
        this.media = t.O(builder.getMedia$facebook_common_release());
    }

    public /* synthetic */ ShareMediaContent(Builder builder, g gVar) {
        this(builder);
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final List<ShareMedia<?, ?>> getMedia() {
        return this.media;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        m.e(parcel, "out");
        super.writeToParcel(parcel, i10);
        Object[] array = this.media.toArray(new ShareMedia[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        parcel.writeParcelableArray((Parcelable[]) array, i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareMediaContent(Parcel parcel) {
        List<ShareMedia<?, ?>> list;
        super(parcel);
        m.e(parcel, ShareConstants.FEED_SOURCE_PARAM);
        Parcelable[] parcelableArray = parcel.readParcelableArray(ShareMedia.class.getClassLoader());
        if (parcelableArray == null) {
            list = null;
        } else {
            ArrayList arrayList = new ArrayList();
            for (Parcelable parcelable : parcelableArray) {
                ShareMedia shareMedia = (ShareMedia) parcelable;
                if (shareMedia != null) {
                    arrayList.add(shareMedia);
                }
            }
            list = arrayList;
        }
        this.media = list == null ? l.e() : list;
    }
}
