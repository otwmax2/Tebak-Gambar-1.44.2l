package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new zzk();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    Bundle f7518o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    Feature[] f7519p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    int f7520q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    ConnectionTelemetryConfiguration f7521r;

    public zzj() {
    }

    @SafeParcelable.Constructor
    zzj(@SafeParcelable.Param Bundle bundle, @SafeParcelable.Param Feature[] featureArr, @SafeParcelable.Param int i10, @SafeParcelable.Param ConnectionTelemetryConfiguration connectionTelemetryConfiguration) {
        this.f7518o = bundle;
        this.f7519p = featureArr;
        this.f7520q = i10;
        this.f7521r = connectionTelemetryConfiguration;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.f(parcel, 1, this.f7518o, false);
        SafeParcelWriter.w(parcel, 2, this.f7519p, i10, false);
        SafeParcelWriter.l(parcel, 3, this.f7520q);
        SafeParcelWriter.s(parcel, 4, this.f7521r, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
