package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.share.internal.ShareConstants;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareMedia.Builder;
import i9.l;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import t9.g;
import t9.m;

/* JADX INFO: compiled from: ShareMedia.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class ShareMedia<M extends ShareMedia<M, B>, B extends Builder<M, B>> implements ShareModel {
    private final Bundle params;

    /* JADX INFO: compiled from: ShareMedia.kt */
    public static abstract class Builder<M extends ShareMedia<M, B>, B extends Builder<M, B>> implements ShareModelBuilder<M, B> {
        public static final Companion Companion = new Companion(null);
        private Bundle params = new Bundle();

        /* JADX INFO: compiled from: ShareMedia.kt */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(g gVar) {
                this();
            }

            public final List<ShareMedia<?, ?>> readListFrom$facebook_common_release(Parcel parcel) {
                m.e(parcel, "parcel");
                Parcelable[] parcelableArray = parcel.readParcelableArray(ShareMedia.class.getClassLoader());
                if (parcelableArray == null) {
                    return l.e();
                }
                ArrayList arrayList = new ArrayList();
                for (Parcelable parcelable : parcelableArray) {
                    if (parcelable instanceof ShareMedia) {
                        arrayList.add(parcelable);
                    }
                }
                return arrayList;
            }

            public final void writeListTo$facebook_common_release(Parcel parcel, int i10, List<? extends ShareMedia<?, ?>> list) {
                m.e(parcel, "out");
                m.e(list, ShareConstants.WEB_DIALOG_PARAM_MEDIA);
                Object[] array = list.toArray(new ShareMedia[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                parcel.writeParcelableArray((Parcelable[]) array, i10);
            }
        }

        public final Bundle getParams$facebook_common_release() {
            return this.params;
        }

        public final B setParameter(String str, String str2) {
            m.e(str, SDKConstants.PARAM_KEY);
            m.e(str2, SDKConstants.PARAM_VALUE);
            this.params.putString(str, str2);
            return this;
        }

        public final B setParameters(Bundle bundle) {
            m.e(bundle, "parameters");
            this.params.putAll(bundle);
            return this;
        }

        public final void setParams$facebook_common_release(Bundle bundle) {
            m.e(bundle, "<set-?>");
            this.params = bundle;
        }

        @Override // com.facebook.share.model.ShareModelBuilder
        public B readFrom(M m10) {
            return m10 == null ? this : (B) setParameters(((ShareMedia) m10).params);
        }
    }

    /* JADX INFO: compiled from: ShareMedia.kt */
    public enum Type {
        PHOTO,
        VIDEO;

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static Type[] valuesCustom() {
            Type[] typeArrValuesCustom = values();
            return (Type[]) Arrays.copyOf(typeArrValuesCustom, typeArrValuesCustom.length);
        }
    }

    protected ShareMedia(Builder<M, B> builder) {
        m.e(builder, "builder");
        this.params = new Bundle(builder.getParams$facebook_common_release());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public abstract Type getMediaType();

    public final Bundle getParameters() {
        return new Bundle(this.params);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        m.e(parcel, "dest");
        parcel.writeBundle(this.params);
    }

    public ShareMedia(Parcel parcel) {
        m.e(parcel, "parcel");
        Bundle bundle = parcel.readBundle(getClass().getClassLoader());
        this.params = bundle == null ? new Bundle() : bundle;
    }
}
