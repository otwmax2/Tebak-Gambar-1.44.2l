package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzadt extends zzadp {
    public static final Parcelable.Creator<zzadt> CREATOR = new zzads();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f8604p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f8605q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f8606r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int[] f8607s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int[] f8608t;

    public zzadt(int i10, int i11, int i12, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.f8604p = i10;
        this.f8605q = i11;
        this.f8606r = i12;
        this.f8607s = iArr;
        this.f8608t = iArr2;
    }

    @Override // com.google.android.gms.internal.ads.zzadp, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzadt.class == obj.getClass()) {
            zzadt zzadtVar = (zzadt) obj;
            if (this.f8604p == zzadtVar.f8604p && this.f8605q == zzadtVar.f8605q && this.f8606r == zzadtVar.f8606r && Arrays.equals(this.f8607s, zzadtVar.f8607s) && Arrays.equals(this.f8608t, zzadtVar.f8608t)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((this.f8604p + 527) * 31) + this.f8605q) * 31) + this.f8606r) * 31) + Arrays.hashCode(this.f8607s)) * 31) + Arrays.hashCode(this.f8608t);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f8604p);
        parcel.writeInt(this.f8605q);
        parcel.writeInt(this.f8606r);
        parcel.writeIntArray(this.f8607s);
        parcel.writeIntArray(this.f8608t);
    }

    zzadt(Parcel parcel) {
        super("MLLT");
        this.f8604p = parcel.readInt();
        this.f8605q = parcel.readInt();
        this.f8606r = parcel.readInt();
        this.f8607s = (int[]) zzew.h(parcel.createIntArray());
        this.f8608t = (int[]) zzew.h(parcel.createIntArray());
    }
}
