package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzezx;
import com.google.android.gms.internal.ads.zzfoj;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class zzaz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaz> CREATOR = new zzba();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f6103o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f6104p;

    @SafeParcelable.Constructor
    zzaz(@SafeParcelable.Param String str, @SafeParcelable.Param int i10) {
        this.f6103o = str == null ? BuildConfig.FLAVOR : str;
        this.f6104p = i10;
    }

    public static zzaz W3(Throwable th) {
        com.google.android.gms.ads.internal.client.zze zzeVarA = zzezx.a(th);
        return new zzaz(zzfoj.d(th.getMessage()) ? zzeVarA.f5842p : th.getMessage(), zzeVarA.f5841o);
    }

    public final zzay V3() {
        return new zzay(this.f6103o, this.f6104p);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f6103o, false);
        SafeParcelWriter.l(parcel, 2, this.f6104p);
        SafeParcelWriter.b(parcel, iA);
    }
}
