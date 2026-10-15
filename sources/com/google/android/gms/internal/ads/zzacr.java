package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzacr implements zzbp {
    public static final Parcelable.Creator<zzacr> CREATOR;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final zzaf f8520u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final zzaf f8521v;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f8522o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f8523p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final long f8524q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final long f8525r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final byte[] f8526s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f8527t;

    static {
        zzad zzadVar = new zzad();
        zzadVar.s("application/id3");
        f8520u = zzadVar.y();
        zzad zzadVar2 = new zzad();
        zzadVar2.s("application/x-scte35");
        f8521v = zzadVar2.y();
        CREATOR = new zzacq();
    }

    zzacr(Parcel parcel) {
        String string = parcel.readString();
        int i10 = zzew.f17494a;
        this.f8522o = string;
        this.f8523p = parcel.readString();
        this.f8524q = parcel.readLong();
        this.f8525r = parcel.readLong();
        this.f8526s = (byte[]) zzew.h(parcel.createByteArray());
    }

    public zzacr(String str, String str2, long j10, long j11, byte[] bArr) {
        this.f8522o = str;
        this.f8523p = str2;
        this.f8524q = j10;
        this.f8525r = j11;
        this.f8526s = bArr;
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
        if (obj != null && zzacr.class == obj.getClass()) {
            zzacr zzacrVar = (zzacr) obj;
            if (this.f8524q == zzacrVar.f8524q && this.f8525r == zzacrVar.f8525r && zzew.u(this.f8522o, zzacrVar.f8522o) && zzew.u(this.f8523p, zzacrVar.f8523p) && Arrays.equals(this.f8526s, zzacrVar.f8526s)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.f8527t;
        if (i10 != 0) {
            return i10;
        }
        String str = this.f8522o;
        int iHashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f8523p;
        int iHashCode2 = str2 != null ? str2.hashCode() : 0;
        long j10 = this.f8524q;
        long j11 = this.f8525r;
        int iHashCode3 = ((((((((iHashCode + 527) * 31) + iHashCode2) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + Arrays.hashCode(this.f8526s);
        this.f8527t = iHashCode3;
        return iHashCode3;
    }

    public final String toString() {
        return "EMSG: scheme=" + this.f8522o + ", id=" + this.f8525r + ", durationMs=" + this.f8524q + ", value=" + this.f8523p;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f8522o);
        parcel.writeString(this.f8523p);
        parcel.writeLong(this.f8524q);
        parcel.writeLong(this.f8525r);
        parcel.writeByteArray(this.f8526s);
    }
}
