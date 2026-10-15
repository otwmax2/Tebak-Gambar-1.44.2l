package com.google.android.gms.games;

import android.annotation.SuppressLint;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ParcelCreator"})
public final class zzn extends zzh implements PlayerRelationshipInfo {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final com.google.android.gms.games.internal.player.zzd f8283r;

    public zzn(DataHolder dataHolder, int i10, com.google.android.gms.games.internal.player.zzd zzdVar) {
        super(dataHolder, i10);
        this.f8283r = zzdVar;
    }

    @Override // com.google.android.gms.games.PlayerRelationshipInfo
    public final int H0() {
        return C(this.f8283r.K, -1);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final boolean equals(Object obj) {
        return zzm.W3(this, obj);
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final int hashCode() {
        return zzm.V3(this);
    }

    @Override // com.google.android.gms.games.PlayerRelationshipInfo
    public final String p() {
        return D(this.f8283r.M, null);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* synthetic */ PlayerRelationshipInfo p3() {
        return new zzm(this);
    }

    @Override // com.google.android.gms.games.PlayerRelationshipInfo
    public final String q() {
        return D(this.f8283r.O, null);
    }

    @Override // com.google.android.gms.games.PlayerRelationshipInfo
    public final String r() {
        return D(this.f8283r.L, null);
    }

    public final String toString() {
        return zzm.X3(this);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        new zzm(this).writeToParcel(parcel, i10);
    }
}
