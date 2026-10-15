package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.vungle.mediation.BuildConfig;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbq implements Parcelable {
    public static final Parcelable.Creator<zzbq> CREATOR = new zzbo();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzbp[] f11138o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final long f11139p;

    public zzbq(long j10, zzbp... zzbpVarArr) {
        this.f11139p = j10;
        this.f11138o = zzbpVarArr;
    }

    zzbq(Parcel parcel) {
        this.f11138o = new zzbp[parcel.readInt()];
        int i10 = 0;
        while (true) {
            zzbp[] zzbpVarArr = this.f11138o;
            if (i10 >= zzbpVarArr.length) {
                this.f11139p = parcel.readLong();
                return;
            } else {
                zzbpVarArr[i10] = (zzbp) parcel.readParcelable(zzbp.class.getClassLoader());
                i10++;
            }
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
        if (obj != null && zzbq.class == obj.getClass()) {
            zzbq zzbqVar = (zzbq) obj;
            if (Arrays.equals(this.f11138o, zzbqVar.f11138o) && this.f11139p == zzbqVar.f11139p) {
                return true;
            }
        }
        return false;
    }

    public final int h() {
        return this.f11138o.length;
    }

    public final int hashCode() {
        int iHashCode = Arrays.hashCode(this.f11138o) * 31;
        long j10 = this.f11139p;
        return iHashCode + ((int) (j10 ^ (j10 >>> 32)));
    }

    public final zzbp t(int i10) {
        return this.f11138o[i10];
    }

    public final String toString() {
        String str;
        String string = Arrays.toString(this.f11138o);
        long j10 = this.f11139p;
        if (j10 == -9223372036854775807L) {
            str = BuildConfig.FLAVOR;
        } else {
            str = ", presentationTimeUs=" + j10;
        }
        return "entries=" + string + str;
    }

    public final zzbq v(zzbp... zzbpVarArr) {
        return zzbpVarArr.length == 0 ? this : new zzbq(this.f11139p, (zzbp[]) zzew.F(this.f11138o, zzbpVarArr));
    }

    public final zzbq w(zzbq zzbqVar) {
        return zzbqVar == null ? this : v(zzbqVar.f11138o);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f11138o.length);
        for (zzbp zzbpVar : this.f11138o) {
            parcel.writeParcelable(zzbpVar, 0);
        }
        parcel.writeLong(this.f11139p);
    }

    public zzbq(List list) {
        this(-9223372036854775807L, (zzbp[]) list.toArray(new zzbp[0]));
    }
}
