package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaei implements zzbp {
    public static final Parcelable.Creator<zzaei> CREATOR = new zzaeg();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final float f8625o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f8626p;

    public zzaei(float f10, int i10) {
        this.f8625o = f10;
        this.f8626p = i10;
    }

    /* synthetic */ zzaei(Parcel parcel, zzaeh zzaehVar) {
        this.f8625o = parcel.readFloat();
        this.f8626p = parcel.readInt();
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final /* synthetic */ void d2(zzbk zzbkVar) {
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaei.class == obj.getClass()) {
            zzaei zzaeiVar = (zzaei) obj;
            if (this.f8625o == zzaeiVar.f8625o && this.f8626p == zzaeiVar.f8626p) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.valueOf(this.f8625o).hashCode() + 527) * 31) + this.f8626p;
    }

    public final String toString() {
        return "smta: captureFrameRate=" + this.f8625o + ", svcTemporalLayerCount=" + this.f8626p;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeFloat(this.f8625o);
        parcel.writeInt(this.f8626p);
    }
}
