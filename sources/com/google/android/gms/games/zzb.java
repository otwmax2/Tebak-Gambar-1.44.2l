package com.google.android.gms.games;

import android.annotation.SuppressLint;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ParcelCreator"})
public final class zzb extends zzh implements CurrentPlayerInfo {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final com.google.android.gms.games.internal.player.zzd f8278r;

    public zzb(DataHolder dataHolder, int i10, com.google.android.gms.games.internal.player.zzd zzdVar) {
        super(dataHolder, i10);
        this.f8278r = zzdVar;
    }

    public final boolean E() {
        return y(this.f8278r.P) && !z(this.f8278r.P);
    }

    @Override // com.google.android.gms.games.CurrentPlayerInfo
    public final int H3() {
        return C(this.f8278r.P, 0);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final boolean equals(Object obj) {
        return zza.W3(this, obj);
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final int hashCode() {
        return zza.V3(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* synthetic */ CurrentPlayerInfo p3() {
        return new zza(this);
    }

    public final String toString() {
        return zza.X3(this);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        new zza(this).writeToParcel(parcel, i10);
    }
}
