package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveSpace;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zze extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zze> CREATOR = new zzf();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7782o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f7783p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final List<DriveSpace> f7784q;

    @SafeParcelable.Constructor
    zze(@SafeParcelable.Param int i10, @SafeParcelable.Param boolean z10, @SafeParcelable.Param List<DriveSpace> list) {
        this.f7782o = i10;
        this.f7783p = z10;
        this.f7784q = list;
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zze.class) {
            if (obj == this) {
                return true;
            }
            zze zzeVar = (zze) obj;
            if (Objects.b(this.f7784q, zzeVar.f7784q) && this.f7782o == zzeVar.f7782o && this.f7783p == zzeVar.f7783p) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.c(this.f7784q, Integer.valueOf(this.f7782o), Boolean.valueOf(this.f7783p));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 2, this.f7782o);
        SafeParcelWriter.c(parcel, 3, this.f7783p);
        SafeParcelWriter.x(parcel, 4, this.f7784q, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
