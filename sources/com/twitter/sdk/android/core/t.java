package com.twitter.sdk.android.core;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: TwitterAuthToken.java */
/* JADX INFO: loaded from: classes2.dex */
public class t extends com.twitter.sdk.android.core.a implements Parcelable {
    public static final Parcelable.Creator<t> CREATOR = new a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @b7.c("token")
    public final String f27502p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @b7.c("secret")
    public final String f27503q;

    /* JADX INFO: compiled from: TwitterAuthToken.java */
    static class a implements Parcelable.Creator<t> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public t createFromParcel(Parcel parcel) {
            return new t(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public t[] newArray(int i10) {
            return new t[i10];
        }
    }

    /* synthetic */ t(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        String str = this.f27503q;
        if (str == null ? tVar.f27503q != null : !str.equals(tVar.f27503q)) {
            return false;
        }
        String str2 = this.f27502p;
        String str3 = tVar.f27502p;
        return str2 == null ? str3 == null : str2.equals(str3);
    }

    public int hashCode() {
        String str = this.f27502p;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f27503q;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "token=" + this.f27502p + ",secret=" + this.f27503q;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f27502p);
        parcel.writeString(this.f27503q);
    }

    public t(String str, String str2) {
        this.f27502p = str;
        this.f27503q = str2;
    }

    private t(Parcel parcel) {
        this.f27502p = parcel.readString();
        this.f27503q = parcel.readString();
    }
}
