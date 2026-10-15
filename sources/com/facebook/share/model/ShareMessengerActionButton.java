package com.facebook.share.model;

import android.os.Parcel;
import t9.m;

/* JADX INFO: compiled from: ShareMessengerActionButton.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class ShareMessengerActionButton implements ShareModel {
    private final String title;

    /* JADX INFO: compiled from: ShareMessengerActionButton.kt */
    public static abstract class Builder<M extends ShareMessengerActionButton, B extends Builder<M, B>> implements ShareModelBuilder<M, B> {
        private String title;

        public final String getTitle$facebook_common_release() {
            return this.title;
        }

        public final B setTitle(String str) {
            this.title = str;
            return this;
        }

        public final void setTitle$facebook_common_release(String str) {
            this.title = str;
        }

        @Override // com.facebook.share.model.ShareModelBuilder
        public B readFrom(M m10) {
            return m10 == null ? this : (B) setTitle(m10.getTitle());
        }
    }

    protected ShareMessengerActionButton(Builder<?, ?> builder) {
        m.e(builder, "builder");
        this.title = builder.getTitle$facebook_common_release();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String getTitle() {
        return this.title;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        m.e(parcel, "dest");
        parcel.writeString(this.title);
    }

    public ShareMessengerActionButton(Parcel parcel) {
        m.e(parcel, "parcel");
        this.title = parcel.readString();
    }
}
