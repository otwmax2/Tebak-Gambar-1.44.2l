package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzacu implements zzbp {
    public static final Parcelable.Creator<zzacu> CREATOR = new zzact();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f8530o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f8531p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String f8532q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f8533r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f8534s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f8535t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f8536u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final byte[] f8537v;

    public zzacu(int i10, String str, String str2, int i11, int i12, int i13, int i14, byte[] bArr) {
        this.f8530o = i10;
        this.f8531p = str;
        this.f8532q = str2;
        this.f8533r = i11;
        this.f8534s = i12;
        this.f8535t = i13;
        this.f8536u = i14;
        this.f8537v = bArr;
    }

    zzacu(Parcel parcel) {
        this.f8530o = parcel.readInt();
        String string = parcel.readString();
        int i10 = zzew.f17494a;
        this.f8531p = string;
        this.f8532q = parcel.readString();
        this.f8533r = parcel.readInt();
        this.f8534s = parcel.readInt();
        this.f8535t = parcel.readInt();
        this.f8536u = parcel.readInt();
        this.f8537v = (byte[]) zzew.h(parcel.createByteArray());
    }

    public static zzacu h(zzen zzenVar) {
        int iM = zzenVar.m();
        String strF = zzenVar.F(zzenVar.m(), zzfnh.f18474a);
        String strF2 = zzenVar.F(zzenVar.m(), zzfnh.f18476c);
        int iM2 = zzenVar.m();
        int iM3 = zzenVar.m();
        int iM4 = zzenVar.m();
        int iM5 = zzenVar.m();
        int iM6 = zzenVar.m();
        byte[] bArr = new byte[iM6];
        zzenVar.b(bArr, 0, iM6);
        return new zzacu(iM, strF, strF2, iM2, iM3, iM4, iM5, bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final void d2(zzbk zzbkVar) {
        zzbkVar.s(this.f8537v, this.f8530o);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzacu.class == obj.getClass()) {
            zzacu zzacuVar = (zzacu) obj;
            if (this.f8530o == zzacuVar.f8530o && this.f8531p.equals(zzacuVar.f8531p) && this.f8532q.equals(zzacuVar.f8532q) && this.f8533r == zzacuVar.f8533r && this.f8534s == zzacuVar.f8534s && this.f8535t == zzacuVar.f8535t && this.f8536u == zzacuVar.f8536u && Arrays.equals(this.f8537v, zzacuVar.f8537v)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((((this.f8530o + 527) * 31) + this.f8531p.hashCode()) * 31) + this.f8532q.hashCode()) * 31) + this.f8533r) * 31) + this.f8534s) * 31) + this.f8535t) * 31) + this.f8536u) * 31) + Arrays.hashCode(this.f8537v);
    }

    public final String toString() {
        return "Picture: mimeType=" + this.f8531p + ", description=" + this.f8532q;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f8530o);
        parcel.writeString(this.f8531p);
        parcel.writeString(this.f8532q);
        parcel.writeInt(this.f8533r);
        parcel.writeInt(this.f8534s);
        parcel.writeInt(this.f8535t);
        parcel.writeInt(this.f8536u);
        parcel.writeByteArray(this.f8537v);
    }
}
