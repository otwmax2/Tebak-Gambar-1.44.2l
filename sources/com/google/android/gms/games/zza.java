package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zza extends com.google.android.gms.games.internal.zzb implements CurrentPlayerInfo {
    public static final Parcelable.Creator<zza> CREATOR = new zzc();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f8277o;

    public zza(CurrentPlayerInfo currentPlayerInfo) {
        this.f8277o = currentPlayerInfo.H3();
    }

    static int V3(CurrentPlayerInfo currentPlayerInfo) {
        return Objects.c(Integer.valueOf(currentPlayerInfo.H3()));
    }

    static boolean W3(CurrentPlayerInfo currentPlayerInfo, Object obj) {
        if (obj instanceof CurrentPlayerInfo) {
            return obj == currentPlayerInfo || ((CurrentPlayerInfo) obj).H3() == currentPlayerInfo.H3();
        }
        return false;
    }

    static String X3(CurrentPlayerInfo currentPlayerInfo) {
        Objects.ToStringHelper toStringHelperD = Objects.d(currentPlayerInfo);
        toStringHelperD.a("FriendsListVisibilityStatus", Integer.valueOf(currentPlayerInfo.H3()));
        return toStringHelperD.toString();
    }

    @Override // com.google.android.gms.games.CurrentPlayerInfo
    public final int H3() {
        return this.f8277o;
    }

    public final boolean equals(Object obj) {
        return W3(this, obj);
    }

    public final int hashCode() {
        return V3(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* bridge */ /* synthetic */ CurrentPlayerInfo p3() {
        return this;
    }

    public final String toString() {
        return X3(this);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, H3());
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    public zza(@SafeParcelable.Param int i10) {
        this.f8277o = i10;
    }
}
