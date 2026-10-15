package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.drive.zzh;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzv extends AbstractSafeParcelable implements DriveEvent {
    public static final Parcelable.Creator<zzv> CREATOR = new zzw();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final List<zzh> f7790o;

    @SafeParcelable.Constructor
    public zzv(@SafeParcelable.Param List<zzh> list) {
        this.f7790o = list;
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != zzv.class) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        return Objects.b(this.f7790o, ((zzv) obj).f7790o);
    }

    public final int hashCode() {
        return Objects.c(this.f7790o);
    }

    @Override // com.google.android.gms.drive.events.DriveEvent
    public final int o() {
        return 7;
    }

    public final String toString() {
        return String.format("TransferStateEvent[%s]", TextUtils.join("','", this.f7790o));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.x(parcel, 3, this.f7790o, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
