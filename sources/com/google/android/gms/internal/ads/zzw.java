package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzw implements Parcelable {
    public static final Parcelable.Creator<zzw> CREATOR = new zzv();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f20915o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final UUID f20916p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String f20917q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final String f20918r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final byte[] f20919s;

    zzw(Parcel parcel) {
        this.f20916p = new UUID(parcel.readLong(), parcel.readLong());
        this.f20917q = parcel.readString();
        String string = parcel.readString();
        int i10 = zzew.f17494a;
        this.f20918r = string;
        this.f20919s = parcel.createByteArray();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzw)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzw zzwVar = (zzw) obj;
        return zzew.u(this.f20917q, zzwVar.f20917q) && zzew.u(this.f20918r, zzwVar.f20918r) && zzew.u(this.f20916p, zzwVar.f20916p) && Arrays.equals(this.f20919s, zzwVar.f20919s);
    }

    public final int hashCode() {
        int i10 = this.f20915o;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = this.f20916p.hashCode() * 31;
        String str = this.f20917q;
        int iHashCode2 = ((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.f20918r.hashCode()) * 31) + Arrays.hashCode(this.f20919s);
        this.f20915o = iHashCode2;
        return iHashCode2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f20916p.getMostSignificantBits());
        parcel.writeLong(this.f20916p.getLeastSignificantBits());
        parcel.writeString(this.f20917q);
        parcel.writeString(this.f20918r);
        parcel.writeByteArray(this.f20919s);
    }

    public zzw(UUID uuid, String str, String str2, byte[] bArr) {
        Objects.requireNonNull(uuid);
        this.f20916p = uuid;
        this.f20917q = null;
        this.f20918r = str2;
        this.f20919s = bArr;
    }
}
