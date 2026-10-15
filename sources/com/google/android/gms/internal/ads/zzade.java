package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzade extends zzadp {
    public static final Parcelable.Creator<zzade> CREATOR = new zzadd();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f8577p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f8578q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f8579r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final long f8580s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final long f8581t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zzadp[] f8582u;

    zzade(Parcel parcel) {
        super("CHAP");
        String string = parcel.readString();
        int i10 = zzew.f17494a;
        this.f8577p = string;
        this.f8578q = parcel.readInt();
        this.f8579r = parcel.readInt();
        this.f8580s = parcel.readLong();
        this.f8581t = parcel.readLong();
        int i11 = parcel.readInt();
        this.f8582u = new zzadp[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            this.f8582u[i12] = (zzadp) parcel.readParcelable(zzadp.class.getClassLoader());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadp, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzade.class == obj.getClass()) {
            zzade zzadeVar = (zzade) obj;
            if (this.f8578q == zzadeVar.f8578q && this.f8579r == zzadeVar.f8579r && this.f8580s == zzadeVar.f8580s && this.f8581t == zzadeVar.f8581t && zzew.u(this.f8577p, zzadeVar.f8577p) && Arrays.equals(this.f8582u, zzadeVar.f8582u)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = ((this.f8578q + 527) * 31) + this.f8579r;
        int i11 = (int) this.f8580s;
        int i12 = (int) this.f8581t;
        String str = this.f8577p;
        return (((((i10 * 31) + i11) * 31) + i12) * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f8577p);
        parcel.writeInt(this.f8578q);
        parcel.writeInt(this.f8579r);
        parcel.writeLong(this.f8580s);
        parcel.writeLong(this.f8581t);
        parcel.writeInt(this.f8582u.length);
        for (zzadp zzadpVar : this.f8582u) {
            parcel.writeParcelable(zzadpVar, 0);
        }
    }

    public zzade(String str, int i10, int i11, long j10, long j11, zzadp[] zzadpVarArr) {
        super("CHAP");
        this.f8577p = str;
        this.f8578q = i10;
        this.f8579r = i11;
        this.f8580s = j10;
        this.f8581t = j11;
        this.f8582u = zzadpVarArr;
    }
}
