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
public class ConnectionTelemetryConfiguration extends AbstractSafeParcelable {

    @KeepForSdk
    public static final Parcelable.Creator<ConnectionTelemetryConfiguration> CREATOR = new zzl();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final RootTelemetryConfiguration f7377o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f7378p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f7379q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final int[] f7380r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7381s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final int[] f7382t;

    @SafeParcelable.Constructor
    public ConnectionTelemetryConfiguration(@SafeParcelable.Param RootTelemetryConfiguration rootTelemetryConfiguration, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11, @SafeParcelable.Param int[] iArr, @SafeParcelable.Param int i10, @SafeParcelable.Param int[] iArr2) {
        this.f7377o = rootTelemetryConfiguration;
        this.f7378p = z10;
        this.f7379q = z11;
        this.f7380r = iArr;
        this.f7381s = i10;
        this.f7382t = iArr2;
    }

    @KeepForSdk
    public int V3() {
        return this.f7381s;
    }

    @KeepForSdk
    public int[] W3() {
        return this.f7380r;
    }

    @KeepForSdk
    public int[] X3() {
        return this.f7382t;
    }

    @KeepForSdk
    public boolean Y3() {
        return this.f7378p;
    }

    @KeepForSdk
    public boolean Z3() {
        return this.f7379q;
    }

    public final RootTelemetryConfiguration a4() {
        return this.f7377o;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, this.f7377o, i10, false);
        SafeParcelWriter.c(parcel, 2, Y3());
        SafeParcelWriter.c(parcel, 3, Z3());
        SafeParcelWriter.m(parcel, 4, W3(), false);
        SafeParcelWriter.l(parcel, 5, V3());
        SafeParcelWriter.m(parcel, 6, X3(), false);
        SafeParcelWriter.b(parcel, iA);
    }
}
