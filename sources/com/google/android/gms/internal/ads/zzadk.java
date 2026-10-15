package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzadk extends zzadp {
    public static final Parcelable.Creator<zzadk> CREATOR = new zzadj();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f8591p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String f8592q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final String f8593r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final byte[] f8594s;

    zzadk(Parcel parcel) {
        super("GEOB");
        String string = parcel.readString();
        int i10 = zzew.f17494a;
        this.f8591p = string;
        this.f8592q = parcel.readString();
        this.f8593r = parcel.readString();
        this.f8594s = (byte[]) zzew.h(parcel.createByteArray());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzadk.class == obj.getClass()) {
            zzadk zzadkVar = (zzadk) obj;
            if (zzew.u(this.f8591p, zzadkVar.f8591p) && zzew.u(this.f8592q, zzadkVar.f8592q) && zzew.u(this.f8593r, zzadkVar.f8593r) && Arrays.equals(this.f8594s, zzadkVar.f8594s)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f8591p;
        int iHashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f8592q;
        int iHashCode2 = str2 != null ? str2.hashCode() : 0;
        int i10 = iHashCode + 527;
        String str3 = this.f8593r;
        return (((((i10 * 31) + iHashCode2) * 31) + (str3 != null ? str3.hashCode() : 0)) * 31) + Arrays.hashCode(this.f8594s);
    }

    @Override // com.google.android.gms.internal.ads.zzadp
    public final String toString() {
        return this.f8600o + ": mimeType=" + this.f8591p + ", filename=" + this.f8592q + ", description=" + this.f8593r;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f8591p);
        parcel.writeString(this.f8592q);
        parcel.writeString(this.f8593r);
        parcel.writeByteArray(this.f8594s);
    }

    public zzadk(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f8591p = str;
        this.f8592q = str2;
        this.f8593r = str3;
        this.f8594s = bArr;
    }
}
