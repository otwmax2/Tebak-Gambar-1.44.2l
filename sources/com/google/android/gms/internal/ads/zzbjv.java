package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzbjv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbjv> CREATOR = new zzbjw();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f10807o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final Bundle f10808p;

    @SafeParcelable.Constructor
    public zzbjv(@SafeParcelable.Param String str, @SafeParcelable.Param Bundle bundle) {
        this.f10807o = str;
        this.f10808p = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f10807o, false);
        SafeParcelWriter.f(parcel, 2, this.f10808p, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
