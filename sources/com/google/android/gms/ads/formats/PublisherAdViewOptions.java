package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.client.zzca;
import com.google.android.gms.ads.internal.client.zzcb;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzbfn;
import com.google.android.gms.internal.ads.zzbfo;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@Deprecated
public final class PublisherAdViewOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublisherAdViewOptions> CREATOR = new zzf();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f5674o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final zzcb f5675p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final IBinder f5676q;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    @Deprecated
    public static final class Builder {
    }

    @SafeParcelable.Constructor
    PublisherAdViewOptions(@SafeParcelable.Param boolean z10, @SafeParcelable.Param IBinder iBinder, @SafeParcelable.Param IBinder iBinder2) {
        this.f5674o = z10;
        this.f5675p = iBinder != null ? zzca.Sa(iBinder) : null;
        this.f5676q = iBinder2;
    }

    public final zzcb V3() {
        return this.f5675p;
    }

    public final zzbfo W3() {
        IBinder iBinder = this.f5676q;
        if (iBinder == null) {
            return null;
        }
        return zzbfn.Sa(iBinder);
    }

    public final boolean a() {
        return this.f5674o;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.c(parcel, 1, this.f5674o);
        zzcb zzcbVar = this.f5675p;
        SafeParcelWriter.k(parcel, 2, zzcbVar == null ? null : zzcbVar.asBinder(), false);
        SafeParcelWriter.k(parcel, 3, this.f5676q, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
