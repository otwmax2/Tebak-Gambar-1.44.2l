package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzfiz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfiz> CREATOR = new zzfja();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    public final int f18285o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private zzans f18286p = null;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private byte[] f18287q;

    @SafeParcelable.Constructor
    zzfiz(@SafeParcelable.Param int i10, @SafeParcelable.Param byte[] bArr) {
        this.f18285o = i10;
        this.f18287q = bArr;
        zzb();
    }

    private final void zzb() {
        zzans zzansVar = this.f18286p;
        if (zzansVar != null || this.f18287q == null) {
            if (zzansVar == null || this.f18287q != null) {
                if (zzansVar != null && this.f18287q != null) {
                    throw new IllegalStateException("Invalid internal representation - full");
                }
                if (zzansVar != null || this.f18287q != null) {
                    throw new IllegalStateException("Impossible");
                }
                throw new IllegalStateException("Invalid internal representation - empty");
            }
        }
    }

    public final zzans V3() {
        if (this.f18286p == null) {
            try {
                this.f18286p = zzans.F0(this.f18287q, zzgpy.a());
                this.f18287q = null;
            } catch (zzgqy | NullPointerException e10) {
                throw new IllegalStateException(e10);
            }
        }
        zzb();
        return this.f18286p;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f18285o);
        byte[] bArrT = this.f18287q;
        if (bArrT == null) {
            bArrT = this.f18286p.t();
        }
        SafeParcelWriter.g(parcel, 2, bArrT, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
