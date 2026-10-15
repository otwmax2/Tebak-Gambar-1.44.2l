package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class PlayerLevelInfo extends com.google.android.gms.games.internal.zzb {
    public static final Parcelable.Creator<PlayerLevelInfo> CREATOR = new zzk();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f8007o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f8008p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final PlayerLevel f8009q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final PlayerLevel f8010r;

    @SafeParcelable.Constructor
    public PlayerLevelInfo(@SafeParcelable.Param long j10, @SafeParcelable.Param long j11, @SafeParcelable.Param PlayerLevel playerLevel, @SafeParcelable.Param PlayerLevel playerLevel2) {
        Preconditions.n(j10 != -1);
        Preconditions.k(playerLevel);
        Preconditions.k(playerLevel2);
        this.f8007o = j10;
        this.f8008p = j11;
        this.f8009q = playerLevel;
        this.f8010r = playerLevel2;
    }

    public final PlayerLevel V3() {
        return this.f8009q;
    }

    public final long W3() {
        return this.f8007o;
    }

    public final long X3() {
        return this.f8008p;
    }

    public final PlayerLevel Y3() {
        return this.f8010r;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PlayerLevelInfo)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        PlayerLevelInfo playerLevelInfo = (PlayerLevelInfo) obj;
        return Objects.b(Long.valueOf(this.f8007o), Long.valueOf(playerLevelInfo.f8007o)) && Objects.b(Long.valueOf(this.f8008p), Long.valueOf(playerLevelInfo.f8008p)) && Objects.b(this.f8009q, playerLevelInfo.f8009q) && Objects.b(this.f8010r, playerLevelInfo.f8010r);
    }

    public final int hashCode() {
        return Objects.c(Long.valueOf(this.f8007o), Long.valueOf(this.f8008p), this.f8009q, this.f8010r);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.p(parcel, 1, W3());
        SafeParcelWriter.p(parcel, 2, X3());
        SafeParcelWriter.s(parcel, 3, V3(), i10, false);
        SafeParcelWriter.s(parcel, 4, Y3(), i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
