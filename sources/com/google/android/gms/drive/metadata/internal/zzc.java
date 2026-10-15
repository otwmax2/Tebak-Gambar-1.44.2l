package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.CustomPropertyKey;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new zzd();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    final CustomPropertyKey f7801o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    final String f7802p;

    @SafeParcelable.Constructor
    public zzc(@SafeParcelable.Param CustomPropertyKey customPropertyKey, @SafeParcelable.Param String str) {
        Preconditions.l(customPropertyKey, SDKConstants.PARAM_KEY);
        this.f7801o = customPropertyKey;
        this.f7802p = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == zzc.class) {
            zzc zzcVar = (zzc) obj;
            if (Objects.b(this.f7801o, zzcVar.f7801o) && Objects.b(this.f7802p, zzcVar.f7802p)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.c(this.f7801o, this.f7802p);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f7801o, i10, false);
        SafeParcelWriter.t(parcel, 3, this.f7802p, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
