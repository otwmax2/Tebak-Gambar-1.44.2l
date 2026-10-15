package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.drive.zzh;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzr extends AbstractSafeParcelable implements DriveEvent {
    public static final Parcelable.Creator<zzr> CREATOR = new zzs();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final zzh f7788o;

    @SafeParcelable.Constructor
    public zzr(@SafeParcelable.Param zzh zzhVar) {
        this.f7788o = zzhVar;
    }

    public final zzh V3() {
        return this.f7788o;
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != zzr.class) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        return Objects.b(this.f7788o, ((zzr) obj).f7788o);
    }

    public final int hashCode() {
        return Objects.c(this.f7788o);
    }

    @Override // com.google.android.gms.drive.events.DriveEvent
    public final int o() {
        return 8;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f7788o, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
