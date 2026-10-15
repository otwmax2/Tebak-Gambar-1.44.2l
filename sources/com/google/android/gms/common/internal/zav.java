package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class zav extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zav> CREATOR = new zaw();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f7493o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    final IBinder f7494p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final ConnectionResult f7495q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f7496r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f7497s;

    @SafeParcelable.Constructor
    zav(@SafeParcelable.Param int i10, @SafeParcelable.Param IBinder iBinder, @SafeParcelable.Param ConnectionResult connectionResult, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11) {
        this.f7493o = i10;
        this.f7494p = iBinder;
        this.f7495q = connectionResult;
        this.f7496r = z10;
        this.f7497s = z11;
    }

    public final ConnectionResult V3() {
        return this.f7495q;
    }

    public final IAccountAccessor W3() {
        IBinder iBinder = this.f7494p;
        if (iBinder == null) {
            return null;
        }
        return IAccountAccessor.Stub.X0(iBinder);
    }

    public final boolean X3() {
        return this.f7496r;
    }

    public final boolean Y3() {
        return this.f7497s;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zav)) {
            return false;
        }
        zav zavVar = (zav) obj;
        return this.f7495q.equals(zavVar.f7495q) && Objects.b(W3(), zavVar.W3());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f7493o);
        SafeParcelWriter.k(parcel, 2, this.f7494p, false);
        SafeParcelWriter.s(parcel, 3, this.f7495q, i10, false);
        SafeParcelWriter.c(parcel, 4, this.f7496r);
        SafeParcelWriter.c(parcel, 5, this.f7497s);
        SafeParcelWriter.b(parcel, iA);
    }
}
