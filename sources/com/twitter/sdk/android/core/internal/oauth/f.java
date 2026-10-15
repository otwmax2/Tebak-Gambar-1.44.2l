package com.twitter.sdk.android.core.internal.oauth;

import android.os.Parcel;
import android.os.Parcelable;
import com.twitter.sdk.android.core.t;

/* JADX INFO: compiled from: OAuthResponse.java */
/* JADX INFO: loaded from: classes2.dex */
public class f implements Parcelable {
    public static final Parcelable.Creator<f> CREATOR = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final t f27471o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f27472p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final long f27473q;

    /* JADX INFO: compiled from: OAuthResponse.java */
    static class a implements Parcelable.Creator<f> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public f createFromParcel(Parcel parcel) {
            return new f(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public f[] newArray(int i10) {
            return new f[i10];
        }
    }

    /* synthetic */ f(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "authToken=" + this.f27471o + ",userName=" + this.f27472p + ",userId=" + this.f27473q;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f27471o, i10);
        parcel.writeString(this.f27472p);
        parcel.writeLong(this.f27473q);
    }

    public f(t tVar, String str, long j10) {
        this.f27471o = tVar;
        this.f27472p = str;
        this.f27473q = j10;
    }

    private f(Parcel parcel) {
        this.f27471o = (t) parcel.readParcelable(t.class.getClassLoader());
        this.f27472p = parcel.readString();
        this.f27473q = parcel.readLong();
    }
}
