package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VersionInfo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@SafeParcelable.Class
public final class zzbpq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbpq> CREATOR = new zzbpr();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f11100o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f11101p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f11102q;

    @SafeParcelable.Constructor
    zzbpq(@SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param int i12) {
        this.f11100o = i10;
        this.f11101p = i11;
        this.f11102q = i12;
    }

    public static zzbpq V3(VersionInfo versionInfo) {
        return new zzbpq(versionInfo.a(), versionInfo.c(), versionInfo.b());
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzbpq)) {
            zzbpq zzbpqVar = (zzbpq) obj;
            if (zzbpqVar.f11102q == this.f11102q && zzbpqVar.f11101p == this.f11101p && zzbpqVar.f11100o == this.f11100o) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new int[]{this.f11100o, this.f11101p, this.f11102q});
    }

    public final String toString() {
        return this.f11100o + "." + this.f11101p + "." + this.f11102q;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f11100o);
        SafeParcelWriter.l(parcel, 2, this.f11101p);
        SafeParcelWriter.l(parcel, 3, this.f11102q);
        SafeParcelWriter.b(parcel, iA);
    }
}
