package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class zze extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zze> CREATOR = new zzf();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f5841o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5842p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5843q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public zze f5844r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public IBinder f5845s;

    @SafeParcelable.Constructor
    public zze(@SafeParcelable.Param int i10, @SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param zze zzeVar, @SafeParcelable.Param IBinder iBinder) {
        this.f5841o = i10;
        this.f5842p = str;
        this.f5843q = str2;
        this.f5844r = zzeVar;
        this.f5845s = iBinder;
    }

    public final AdError V3() {
        zze zzeVar = this.f5844r;
        return new AdError(this.f5841o, this.f5842p, this.f5843q, zzeVar == null ? null : new AdError(zzeVar.f5841o, zzeVar.f5842p, zzeVar.f5843q));
    }

    public final LoadAdError W3() {
        zze zzeVar = this.f5844r;
        zzdn zzdlVar = null;
        AdError adError = zzeVar == null ? null : new AdError(zzeVar.f5841o, zzeVar.f5842p, zzeVar.f5843q);
        int i10 = this.f5841o;
        String str = this.f5842p;
        String str2 = this.f5843q;
        IBinder iBinder = this.f5845s;
        if (iBinder != null) {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            zzdlVar = iInterfaceQueryLocalInterface instanceof zzdn ? (zzdn) iInterfaceQueryLocalInterface : new zzdl(iBinder);
        }
        return new LoadAdError(i10, str, str2, adError, ResponseInfo.d(zzdlVar));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f5841o);
        SafeParcelWriter.t(parcel, 2, this.f5842p, false);
        SafeParcelWriter.t(parcel, 3, this.f5843q, false);
        SafeParcelWriter.s(parcel, 4, this.f5844r, i10, false);
        SafeParcelWriter.k(parcel, 5, this.f5845s, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
