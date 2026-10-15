package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzadi extends zzadp {
    public static final Parcelable.Creator<zzadi> CREATOR = new zzadh();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f8588p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String f8589q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final String f8590r;

    zzadi(Parcel parcel) {
        super("COMM");
        String string = parcel.readString();
        int i10 = zzew.f17494a;
        this.f8588p = string;
        this.f8589q = parcel.readString();
        this.f8590r = parcel.readString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzadi.class == obj.getClass()) {
            zzadi zzadiVar = (zzadi) obj;
            if (zzew.u(this.f8589q, zzadiVar.f8589q) && zzew.u(this.f8588p, zzadiVar.f8588p) && zzew.u(this.f8590r, zzadiVar.f8590r)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f8588p;
        int iHashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f8589q;
        int iHashCode2 = str2 != null ? str2.hashCode() : 0;
        int i10 = iHashCode + 527;
        String str3 = this.f8590r;
        return (((i10 * 31) + iHashCode2) * 31) + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // com.google.android.gms.internal.ads.zzadp
    public final String toString() {
        return this.f8600o + ": language=" + this.f8588p + ", description=" + this.f8589q;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f8600o);
        parcel.writeString(this.f8588p);
        parcel.writeString(this.f8590r);
    }

    public zzadi(String str, String str2, String str3) {
        super("COMM");
        this.f8588p = str;
        this.f8589q = str2;
        this.f8590r = str3;
    }
}
