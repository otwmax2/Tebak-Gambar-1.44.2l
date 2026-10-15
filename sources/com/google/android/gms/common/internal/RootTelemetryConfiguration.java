package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
@SafeParcelable.Class
public class RootTelemetryConfiguration extends AbstractSafeParcelable {

    @KeepForSdk
    public static final Parcelable.Creator<RootTelemetryConfiguration> CREATOR = new zzai();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7423o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f7424p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f7425q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7426r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7427s;

    @SafeParcelable.Constructor
    public RootTelemetryConfiguration(@SafeParcelable.Param int i10, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11, @SafeParcelable.Param int i11, @SafeParcelable.Param int i12) {
        this.f7423o = i10;
        this.f7424p = z10;
        this.f7425q = z11;
        this.f7426r = i11;
        this.f7427s = i12;
    }

    @KeepForSdk
    public int V3() {
        return this.f7426r;
    }

    @KeepForSdk
    public int W3() {
        return this.f7427s;
    }

    @KeepForSdk
    public boolean X3() {
        return this.f7424p;
    }

    @KeepForSdk
    public boolean Y3() {
        return this.f7425q;
    }

    @KeepForSdk
    public int Z3() {
        return this.f7423o;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, Z3());
        SafeParcelWriter.c(parcel, 2, X3());
        SafeParcelWriter.c(parcel, 3, Y3());
        SafeParcelWriter.l(parcel, 4, V3());
        SafeParcelWriter.l(parcel, 5, W3());
        SafeParcelWriter.b(parcel, iA);
    }
}
