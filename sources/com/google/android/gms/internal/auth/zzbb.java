package com.google.android.gms.internal.auth;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzbb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbb> CREATOR = new zzbc();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f21343o = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f21344p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final PendingIntent f21345q;

    @SafeParcelable.Constructor
    zzbb(@SafeParcelable.Param int i10, @SafeParcelable.Param String str, @SafeParcelable.Param PendingIntent pendingIntent) {
        this.f21344p = (String) Preconditions.k(str);
        this.f21345q = (PendingIntent) Preconditions.k(pendingIntent);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f21343o);
        SafeParcelWriter.t(parcel, 2, this.f21344p, false);
        SafeParcelWriter.s(parcel, 3, this.f21345q, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
