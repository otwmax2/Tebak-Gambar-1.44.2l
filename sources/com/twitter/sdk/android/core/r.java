package com.twitter.sdk.android.core;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: TwitterAuthConfig.java */
/* JADX INFO: loaded from: classes.dex */
public class r implements Parcelable {
    public static final Parcelable.Creator<r> CREATOR = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f27500o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f27501p;

    /* JADX INFO: compiled from: TwitterAuthConfig.java */
    /* JADX INFO: loaded from: classes2.dex */
    static class a implements Parcelable.Creator<r> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public r createFromParcel(Parcel parcel) {
            return new r(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public r[] newArray(int i10) {
            return new r[i10];
        }
    }

    /* synthetic */ r(Parcel parcel, a aVar) {
        this(parcel);
    }

    static String w(String str) {
        if (str != null) {
            return str.trim();
        }
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String h() {
        return this.f27500o;
    }

    public String t() {
        return this.f27501p;
    }

    public int v() {
        return 140;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f27500o);
        parcel.writeString(this.f27501p);
    }

    public r(String str, String str2) {
        if (str == null || str2 == null) {
            throw new IllegalArgumentException("TwitterAuthConfig must not be created with null consumer key or secret.");
        }
        this.f27500o = w(str);
        this.f27501p = w(str2);
    }

    private r(Parcel parcel) {
        this.f27500o = parcel.readString();
        this.f27501p = parcel.readString();
    }
}
