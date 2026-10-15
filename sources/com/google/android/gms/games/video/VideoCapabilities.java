package com.google.android.gms.games.video;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class VideoCapabilities extends com.google.android.gms.games.internal.zzb {
    public static final Parcelable.Creator<VideoCapabilities> CREATOR = new zza();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f8267o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f8268p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f8269q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean[] f8270r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean[] f8271s;

    @SafeParcelable.Constructor
    public VideoCapabilities(@SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11, @SafeParcelable.Param boolean z12, @SafeParcelable.Param boolean[] zArr, @SafeParcelable.Param boolean[] zArr2) {
        this.f8267o = z10;
        this.f8268p = z11;
        this.f8269q = z12;
        this.f8270r = zArr;
        this.f8271s = zArr2;
    }

    public final boolean[] V3() {
        return this.f8270r;
    }

    public final boolean[] W3() {
        return this.f8271s;
    }

    public final boolean X3() {
        return this.f8267o;
    }

    public final boolean Y3() {
        return this.f8268p;
    }

    public final boolean Z3() {
        return this.f8269q;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof VideoCapabilities)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        VideoCapabilities videoCapabilities = (VideoCapabilities) obj;
        return Objects.b(videoCapabilities.V3(), V3()) && Objects.b(videoCapabilities.W3(), W3()) && Objects.b(Boolean.valueOf(videoCapabilities.X3()), Boolean.valueOf(X3())) && Objects.b(Boolean.valueOf(videoCapabilities.Y3()), Boolean.valueOf(Y3())) && Objects.b(Boolean.valueOf(videoCapabilities.Z3()), Boolean.valueOf(Z3()));
    }

    public final int hashCode() {
        return Objects.c(V3(), W3(), Boolean.valueOf(X3()), Boolean.valueOf(Y3()), Boolean.valueOf(Z3()));
    }

    public final String toString() {
        return Objects.d(this).a("SupportedCaptureModes", V3()).a("SupportedQualityLevels", W3()).a("CameraSupported", Boolean.valueOf(X3())).a("MicSupported", Boolean.valueOf(Y3())).a("StorageWriteSupported", Boolean.valueOf(Z3())).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.c(parcel, 1, X3());
        SafeParcelWriter.c(parcel, 2, Y3());
        SafeParcelWriter.c(parcel, 3, Z3());
        SafeParcelWriter.d(parcel, 4, V3(), false);
        SafeParcelWriter.d(parcel, 5, W3(), false);
        SafeParcelWriter.b(parcel, iA);
    }
}
