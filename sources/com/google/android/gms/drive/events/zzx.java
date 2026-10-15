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
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzx> CREATOR = new zzy();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final List<DriveSpace> f7791o;

    @SafeParcelable.Constructor
    zzx(@SafeParcelable.Param List<DriveSpace> list) {
        this.f7791o = list;
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != zzx.class) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        return Objects.b(this.f7791o, ((zzx) obj).f7791o);
    }

    public final int hashCode() {
        return Objects.c(this.f7791o);
    }

    public final String toString() {
        return String.format(Locale.US, "TransferStateOptions[Spaces=%s]", this.f7791o);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.x(parcel, 2, this.f7791o, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
