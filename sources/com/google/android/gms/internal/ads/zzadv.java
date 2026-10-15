package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzadv extends zzadp {
    public static final Parcelable.Creator<zzadv> CREATOR = new zzadu();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f8609p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final byte[] f8610q;

    zzadv(Parcel parcel) {
        super("PRIV");
        String string = parcel.readString();
        int i10 = zzew.f17494a;
        this.f8609p = string;
        this.f8610q = (byte[]) zzew.h(parcel.createByteArray());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzadv.class == obj.getClass()) {
            zzadv zzadvVar = (zzadv) obj;
            if (zzew.u(this.f8609p, zzadvVar.f8609p) && Arrays.equals(this.f8610q, zzadvVar.f8610q)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f8609p;
        return (((str != null ? str.hashCode() : 0) + 527) * 31) + Arrays.hashCode(this.f8610q);
    }

    @Override // com.google.android.gms.internal.ads.zzadp
    public final String toString() {
        return this.f8600o + ": owner=" + this.f8609p;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f8609p);
        parcel.writeByteArray(this.f8610q);
    }

    public zzadv(String str, byte[] bArr) {
        super("PRIV");
        this.f8609p = str;
        this.f8610q = bArr;
    }
}
