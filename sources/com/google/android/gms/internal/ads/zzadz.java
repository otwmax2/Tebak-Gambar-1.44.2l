package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzadz extends zzadp {
    public static final Parcelable.Creator<zzadz> CREATOR = new zzady();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f8614p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String f8615q;

    /* JADX WARN: Illegal instructions before constructor call */
    zzadz(Parcel parcel) {
        String string = parcel.readString();
        int i10 = zzew.f17494a;
        super(string);
        this.f8614p = parcel.readString();
        this.f8615q = parcel.readString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzadz.class == obj.getClass()) {
            zzadz zzadzVar = (zzadz) obj;
            if (this.f8600o.equals(zzadzVar.f8600o) && zzew.u(this.f8614p, zzadzVar.f8614p) && zzew.u(this.f8615q, zzadzVar.f8615q)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f8600o.hashCode() + 527;
        String str = this.f8614p;
        int iHashCode2 = str != null ? str.hashCode() : 0;
        int i10 = iHashCode * 31;
        String str2 = this.f8615q;
        return ((i10 + iHashCode2) * 31) + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // com.google.android.gms.internal.ads.zzadp
    public final String toString() {
        return this.f8600o + ": url=" + this.f8615q;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f8600o);
        parcel.writeString(this.f8614p);
        parcel.writeString(this.f8615q);
    }

    public zzadz(String str, String str2, String str3) {
        super(str);
        this.f8614p = str2;
        this.f8615q = str3;
    }
}
