package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
@SafeParcelable.Class
public class Feature extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new zzc();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6906o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    @Deprecated
    private final int f6907p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f6908q;

    @SafeParcelable.Constructor
    public Feature(@SafeParcelable.Param String str, @SafeParcelable.Param int i10, @SafeParcelable.Param long j10) {
        this.f6906o = str;
        this.f6907p = i10;
        this.f6908q = j10;
    }

    @KeepForSdk
    public Feature(String str, long j10) {
        this.f6906o = str;
        this.f6908q = j10;
        this.f6907p = -1;
    }

    @KeepForSdk
    public long V3() {
        long j10 = this.f6908q;
        return j10 == -1 ? this.f6907p : j10;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Feature) {
            Feature feature = (Feature) obj;
            if (((getName() != null && getName().equals(feature.getName())) || (getName() == null && feature.getName() == null)) && V3() == feature.V3()) {
                return true;
            }
        }
        return false;
    }

    @KeepForSdk
    public String getName() {
        return this.f6906o;
    }

    public final int hashCode() {
        return Objects.c(getName(), Long.valueOf(V3()));
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelperD = Objects.d(this);
        toStringHelperD.a("name", getName());
        toStringHelperD.a(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, Long.valueOf(V3()));
        return toStringHelperD.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, getName(), false);
        SafeParcelWriter.l(parcel, 2, this.f6907p);
        SafeParcelWriter.p(parcel, 3, V3());
        SafeParcelWriter.b(parcel, iA);
    }
}
