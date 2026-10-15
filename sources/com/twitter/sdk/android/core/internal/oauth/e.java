package com.twitter.sdk.android.core.internal.oauth;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: OAuth2Token.java */
/* JADX INFO: loaded from: classes2.dex */
public class e extends com.twitter.sdk.android.core.a implements Parcelable {
    public static final Parcelable.Creator<e> CREATOR = new a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @b7.c("token_type")
    private final String f27469p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @b7.c("access_token")
    private final String f27470q;

    /* JADX INFO: compiled from: OAuth2Token.java */
    static class a implements Parcelable.Creator<e> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e createFromParcel(Parcel parcel) {
            return new e(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public e[] newArray(int i10) {
            return new e[i10];
        }
    }

    /* synthetic */ e(Parcel parcel, a aVar) {
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
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        String str = this.f27470q;
        if (str == null ? eVar.f27470q != null : !str.equals(eVar.f27470q)) {
            return false;
        }
        String str2 = this.f27469p;
        String str3 = eVar.f27469p;
        return str2 == null ? str3 == null : str2.equals(str3);
    }

    public String h() {
        return this.f27470q;
    }

    public int hashCode() {
        String str = this.f27469p;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f27470q;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String t() {
        return this.f27469p;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f27469p);
        parcel.writeString(this.f27470q);
    }

    public e(String str, String str2) {
        this.f27469p = str;
        this.f27470q = str2;
    }

    private e(Parcel parcel) {
        this.f27469p = parcel.readString();
        this.f27470q = parcel.readString();
    }
}
