package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public class DeviceMetaData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DeviceMetaData> CREATOR = new zzx();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f6574o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private boolean f6575p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private long f6576q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f6577r;

    @SafeParcelable.Constructor
    DeviceMetaData(@SafeParcelable.Param int i10, @SafeParcelable.Param boolean z10, @SafeParcelable.Param long j10, @SafeParcelable.Param boolean z11) {
        this.f6574o = i10;
        this.f6575p = z10;
        this.f6576q = j10;
        this.f6577r = z11;
    }

    public long V3() {
        return this.f6576q;
    }

    public boolean W3() {
        return this.f6577r;
    }

    public boolean X3() {
        return this.f6575p;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f6574o);
        SafeParcelWriter.c(parcel, 2, X3());
        SafeParcelWriter.p(parcel, 3, V3());
        SafeParcelWriter.c(parcel, 4, W3());
        SafeParcelWriter.b(parcel, iA);
    }
}
