package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaec implements zzbp {
    public static final Parcelable.Creator<zzaec> CREATOR = new zzaea();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f8616o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final byte[] f8617p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f8618q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f8619r;

    /* synthetic */ zzaec(Parcel parcel, zzaeb zzaebVar) {
        String string = parcel.readString();
        int i10 = zzew.f17494a;
        this.f8616o = string;
        this.f8617p = (byte[]) zzew.h(parcel.createByteArray());
        this.f8618q = parcel.readInt();
        this.f8619r = parcel.readInt();
    }

    public zzaec(String str, byte[] bArr, int i10, int i11) {
        this.f8616o = str;
        this.f8617p = bArr;
        this.f8618q = i10;
        this.f8619r = i11;
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final /* synthetic */ void d2(zzbk zzbkVar) {
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaec.class == obj.getClass()) {
            zzaec zzaecVar = (zzaec) obj;
            if (this.f8616o.equals(zzaecVar.f8616o) && Arrays.equals(this.f8617p, zzaecVar.f8617p) && this.f8618q == zzaecVar.f8618q && this.f8619r == zzaecVar.f8619r) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((this.f8616o.hashCode() + 527) * 31) + Arrays.hashCode(this.f8617p)) * 31) + this.f8618q) * 31) + this.f8619r;
    }

    public final String toString() {
        return "mdta: key=".concat(String.valueOf(this.f8616o));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f8616o);
        parcel.writeByteArray(this.f8617p);
        parcel.writeInt(this.f8618q);
        parcel.writeInt(this.f8619r);
    }
}
