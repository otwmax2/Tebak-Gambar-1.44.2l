package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaef implements zzbp {
    public static final Parcelable.Creator<zzaef> CREATOR = new zzaed();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final long f8620o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final long f8621p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final long f8622q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final long f8623r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final long f8624s;

    public zzaef(long j10, long j11, long j12, long j13, long j14) {
        this.f8620o = j10;
        this.f8621p = j11;
        this.f8622q = j12;
        this.f8623r = j13;
        this.f8624s = j14;
    }

    /* synthetic */ zzaef(Parcel parcel, zzaee zzaeeVar) {
        this.f8620o = parcel.readLong();
        this.f8621p = parcel.readLong();
        this.f8622q = parcel.readLong();
        this.f8623r = parcel.readLong();
        this.f8624s = parcel.readLong();
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
        if (obj != null && zzaef.class == obj.getClass()) {
            zzaef zzaefVar = (zzaef) obj;
            if (this.f8620o == zzaefVar.f8620o && this.f8621p == zzaefVar.f8621p && this.f8622q == zzaefVar.f8622q && this.f8623r == zzaefVar.f8623r && this.f8624s == zzaefVar.f8624s) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f8620o;
        long j11 = j10 ^ (j10 >>> 32);
        long j12 = this.f8621p;
        long j13 = j12 ^ (j12 >>> 32);
        long j14 = this.f8622q;
        long j15 = j14 ^ (j14 >>> 32);
        long j16 = this.f8623r;
        long j17 = j16 ^ (j16 >>> 32);
        long j18 = this.f8624s;
        return ((((((((((int) j11) + 527) * 31) + ((int) j13)) * 31) + ((int) j15)) * 31) + ((int) j17)) * 31) + ((int) (j18 ^ (j18 >>> 32)));
    }

    public final String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.f8620o + ", photoSize=" + this.f8621p + ", photoPresentationTimestampUs=" + this.f8622q + ", videoStartPosition=" + this.f8623r + ", videoSize=" + this.f8624s;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f8620o);
        parcel.writeLong(this.f8621p);
        parcel.writeLong(this.f8622q);
        parcel.writeLong(this.f8623r);
        parcel.writeLong(this.f8624s);
    }
}
