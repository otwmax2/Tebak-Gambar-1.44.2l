package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@SafeParcelable.Class
public final class zam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zam> CREATOR = new zak();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f7610o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    final String f7611p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    final FastJsonResponse.Field<?, ?> f7612q;

    @SafeParcelable.Constructor
    zam(@SafeParcelable.Param int i10, @SafeParcelable.Param String str, @SafeParcelable.Param FastJsonResponse.Field<?, ?> field) {
        this.f7610o = i10;
        this.f7611p = str;
        this.f7612q = field;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f7610o);
        SafeParcelWriter.t(parcel, 2, this.f7611p, false);
        SafeParcelWriter.s(parcel, 3, this.f7612q, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }

    zam(String str, FastJsonResponse.Field<?, ?> field) {
        this.f7610o = 1;
        this.f7611p = str;
        this.f7612q = field;
    }
}
