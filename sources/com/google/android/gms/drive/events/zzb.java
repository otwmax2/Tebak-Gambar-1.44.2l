package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzb extends AbstractSafeParcelable implements DriveEvent {
    public static final Parcelable.Creator<zzb> CREATOR = new zzc();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final zze f7781o;

    @SafeParcelable.Constructor
    public zzb(@SafeParcelable.Param zze zzeVar) {
        this.f7781o = zzeVar;
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != zzb.class) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        return Objects.b(this.f7781o, ((zzb) obj).f7781o);
    }

    public final int hashCode() {
        return Objects.c(this.f7781o);
    }

    @Override // com.google.android.gms.drive.events.DriveEvent
    public final int o() {
        return 4;
    }

    public final String toString() {
        return String.format(Locale.US, "ChangesAvailableEvent [changesAvailableOptions=%s]", this.f7781o);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 3, this.f7781o, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
