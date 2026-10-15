package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzacy implements zzbp {
    public static final Parcelable.Creator<zzacy> CREATOR = new zzacx();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f8540o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f8541p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String f8542q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final String f8543r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final boolean f8544s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f8545t;

    public zzacy(int i10, String str, String str2, String str3, boolean z10, int i11) {
        boolean z11 = true;
        if (i11 != -1 && i11 <= 0) {
            z11 = false;
        }
        zzdl.d(z11);
        this.f8540o = i10;
        this.f8541p = str;
        this.f8542q = str2;
        this.f8543r = str3;
        this.f8544s = z10;
        this.f8545t = i11;
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final void d2(zzbk zzbkVar) {
        String str = this.f8542q;
        if (str != null) {
            zzbkVar.H(str);
        }
        String str2 = this.f8541p;
        if (str2 != null) {
            zzbkVar.A(str2);
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzacy.class == obj.getClass()) {
            zzacy zzacyVar = (zzacy) obj;
            if (this.f8540o == zzacyVar.f8540o && zzew.u(this.f8541p, zzacyVar.f8541p) && zzew.u(this.f8542q, zzacyVar.f8542q) && zzew.u(this.f8543r, zzacyVar.f8543r) && this.f8544s == zzacyVar.f8544s && this.f8545t == zzacyVar.f8545t) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.f8540o + 527;
        String str = this.f8541p;
        int iHashCode = str != null ? str.hashCode() : 0;
        int i11 = i10 * 31;
        String str2 = this.f8542q;
        int iHashCode2 = (((i11 + iHashCode) * 31) + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f8543r;
        return ((((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.f8544s ? 1 : 0)) * 31) + this.f8545t;
    }

    public final String toString() {
        return "IcyHeaders: name=\"" + this.f8542q + "\", genre=\"" + this.f8541p + "\", bitrate=" + this.f8540o + ", metadataInterval=" + this.f8545t;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f8540o);
        parcel.writeString(this.f8541p);
        parcel.writeString(this.f8542q);
        parcel.writeString(this.f8543r);
        zzew.t(parcel, this.f8544s);
        parcel.writeInt(this.f8545t);
    }

    zzacy(Parcel parcel) {
        this.f8540o = parcel.readInt();
        this.f8541p = parcel.readString();
        this.f8542q = parcel.readString();
        this.f8543r = parcel.readString();
        this.f8544s = zzew.B(parcel);
        this.f8545t = parcel.readInt();
    }
}
