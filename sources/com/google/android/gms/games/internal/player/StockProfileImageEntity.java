package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@UsedByReflection("GamesGmsClientImpl.java")
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class StockProfileImageEntity extends com.google.android.gms.games.internal.zzb implements StockProfileImage {
    public static final Parcelable.Creator<StockProfileImageEntity> CREATOR = new zzf();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8084o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f8085p;

    @SafeParcelable.Constructor
    public StockProfileImageEntity(@SafeParcelable.Param String str, @SafeParcelable.Param Uri uri) {
        this.f8084o = str;
        this.f8085p = uri;
    }

    @Override // com.google.android.gms.games.internal.player.StockProfileImage
    public final Uri J() {
        return this.f8085p;
    }

    @Override // com.google.android.gms.games.internal.player.StockProfileImage
    public final String L1() {
        return this.f8084o;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof StockProfileImage)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        StockProfileImage stockProfileImage = (StockProfileImage) obj;
        return Objects.b(this.f8084o, stockProfileImage.L1()) && Objects.b(this.f8085p, stockProfileImage.J());
    }

    public final int hashCode() {
        return Objects.c(this.f8084o, this.f8085p);
    }

    public final String toString() {
        return Objects.d(this).a("ImageId", this.f8084o).a("ImageUri", this.f8085p).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, L1(), false);
        SafeParcelWriter.s(parcel, 2, this.f8085p, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
