package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataBufferRef;
import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzb extends DataBufferRef implements zza {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzd f8086r;

    public zzb(DataHolder dataHolder, int i10, zzd zzdVar) {
        super(dataHolder, i10);
        this.f8086r = zzdVar;
    }

    @Override // com.google.android.gms.games.internal.player.zza
    public final Uri E2() {
        return A(this.f8086r.f8110x);
    }

    @Override // com.google.android.gms.games.internal.player.zza
    public final long M() {
        return w(this.f8086r.f8108v);
    }

    @Override // com.google.android.gms.games.internal.player.zza
    public final String P0() {
        return x(this.f8086r.f8107u);
    }

    @Override // com.google.android.gms.games.internal.player.zza
    public final String P2() {
        return x(this.f8086r.f8106t);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final boolean equals(Object obj) {
        return MostRecentGameInfoEntity.W3(this, obj);
    }

    @Override // com.google.android.gms.games.internal.player.zza
    public final Uri f2() {
        return A(this.f8086r.f8109w);
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final int hashCode() {
        return MostRecentGameInfoEntity.V3(this);
    }

    @Override // com.google.android.gms.games.internal.player.zza
    public final Uri k1() {
        return A(this.f8086r.f8111y);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* synthetic */ zza p3() {
        return new MostRecentGameInfoEntity(this);
    }

    public final String toString() {
        return MostRecentGameInfoEntity.X3(this);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        ((MostRecentGameInfoEntity) ((zza) p3())).writeToParcel(parcel, i10);
    }
}
