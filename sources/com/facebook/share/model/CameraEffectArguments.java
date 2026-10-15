package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import i9.i0;
import java.util.Set;
import t9.g;
import t9.m;

/* JADX INFO: compiled from: CameraEffectArguments.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CameraEffectArguments implements ShareModel {
    private final Bundle params;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<CameraEffectArguments> CREATOR = new Parcelable.Creator<CameraEffectArguments>() { // from class: com.facebook.share.model.CameraEffectArguments$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CameraEffectArguments createFromParcel(Parcel parcel) {
            m.e(parcel, "parcel");
            return new CameraEffectArguments(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CameraEffectArguments[] newArray(int i10) {
            return new CameraEffectArguments[i10];
        }
    };

    /* JADX INFO: compiled from: CameraEffectArguments.kt */
    public static final class Builder implements ShareModelBuilder<CameraEffectArguments, Builder> {
        private final Bundle params = new Bundle();

        public final Bundle getParams$facebook_common_release() {
            return this.params;
        }

        public final Builder putArgument(String str, String str2) {
            m.e(str, SDKConstants.PARAM_KEY);
            m.e(str2, SDKConstants.PARAM_VALUE);
            this.params.putString(str, str2);
            return this;
        }

        @Override // com.facebook.share.ShareBuilder
        public CameraEffectArguments build() {
            return new CameraEffectArguments(this, null);
        }

        public final Builder putArgument(String str, String[] strArr) {
            m.e(str, SDKConstants.PARAM_KEY);
            m.e(strArr, "arrayValue");
            this.params.putStringArray(str, strArr);
            return this;
        }

        @Override // com.facebook.share.model.ShareModelBuilder
        public Builder readFrom(CameraEffectArguments cameraEffectArguments) {
            if (cameraEffectArguments != null) {
                this.params.putAll(cameraEffectArguments.params);
            }
            return this;
        }

        public final Builder readFrom(Parcel parcel) {
            m.e(parcel, "parcel");
            return readFrom((CameraEffectArguments) parcel.readParcelable(CameraEffectArguments.class.getClassLoader()));
        }
    }

    /* JADX INFO: compiled from: CameraEffectArguments.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }
    }

    private CameraEffectArguments(Builder builder) {
        this.params = builder.getParams$facebook_common_release();
    }

    public /* synthetic */ CameraEffectArguments(Builder builder, g gVar) {
        this(builder);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final Object get(String str) {
        Bundle bundle = this.params;
        if (bundle == null) {
            return null;
        }
        return bundle.get(str);
    }

    public final String getString(String str) {
        Bundle bundle = this.params;
        if (bundle == null) {
            return null;
        }
        return bundle.getString(str);
    }

    public final String[] getStringArray(String str) {
        Bundle bundle = this.params;
        if (bundle == null) {
            return null;
        }
        return bundle.getStringArray(str);
    }

    public final Set<String> keySet() {
        Bundle bundle = this.params;
        Set<String> setKeySet = bundle == null ? null : bundle.keySet();
        return setKeySet == null ? i0.b() : setKeySet;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        m.e(parcel, "out");
        parcel.writeBundle(this.params);
    }

    public CameraEffectArguments(Parcel parcel) {
        m.e(parcel, "parcel");
        this.params = parcel.readBundle(CameraEffectArguments.class.getClassLoader());
    }
}
