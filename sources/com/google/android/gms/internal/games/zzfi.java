package com.google.android.gms.internal.games;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzfi extends com.google.android.gms.games.internal.zzb {
    public static final Parcelable.Creator<zzfi> CREATOR = new zzfh();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final Bundle f23193o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final IBinder f23194p;

    public zzfi(zzfg zzfgVar) {
        this.f23193o = zzfgVar.a();
        this.f23194p = zzfgVar.f23186a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.f(parcel, 1, this.f23193o, false);
        SafeParcelWriter.k(parcel, 2, this.f23194p, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    zzfi(@SafeParcelable.Param Bundle bundle, @SafeParcelable.Param IBinder iBinder) {
        this.f23193o = bundle;
        this.f23194p = iBinder;
    }
}
