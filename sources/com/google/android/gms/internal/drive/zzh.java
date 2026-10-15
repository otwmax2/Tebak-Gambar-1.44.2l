package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzh> CREATOR = new zzi();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    final int f22019o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    final DriveId f22020p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    final int f22021q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    final long f22022r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    final long f22023s;

    @SafeParcelable.Constructor
    public zzh(@SafeParcelable.Param int i10, @SafeParcelable.Param DriveId driveId, @SafeParcelable.Param int i11, @SafeParcelable.Param long j10, @SafeParcelable.Param long j11) {
        this.f22019o = i10;
        this.f22020p = driveId;
        this.f22021q = i11;
        this.f22022r = j10;
        this.f22023s = j11;
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zzh.class) {
            if (obj == this) {
                return true;
            }
            zzh zzhVar = (zzh) obj;
            if (this.f22019o == zzhVar.f22019o && Objects.b(this.f22020p, zzhVar.f22020p) && this.f22021q == zzhVar.f22021q && this.f22022r == zzhVar.f22022r && this.f22023s == zzhVar.f22023s) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.c(Integer.valueOf(this.f22019o), this.f22020p, Integer.valueOf(this.f22021q), Long.valueOf(this.f22022r), Long.valueOf(this.f22023s));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 2, this.f22019o);
        SafeParcelWriter.s(parcel, 3, this.f22020p, i10, false);
        SafeParcelWriter.l(parcel, 4, this.f22021q);
        SafeParcelWriter.p(parcel, 5, this.f22022r);
        SafeParcelWriter.p(parcel, 6, this.f22023s);
        SafeParcelWriter.b(parcel, iA);
    }
}
