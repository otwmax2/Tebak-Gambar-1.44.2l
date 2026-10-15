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
public final class PlayerLevel extends com.google.android.gms.games.internal.zzb {
    public static final Parcelable.Creator<PlayerLevel> CREATOR = new zzj();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f8004o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f8005p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f8006q;

    @SafeParcelable.Constructor
    public PlayerLevel(@SafeParcelable.Param int i10, @SafeParcelable.Param long j10, @SafeParcelable.Param long j11) {
        Preconditions.o(j10 >= 0, "Min XP must be positive!");
        Preconditions.o(j11 > j10, "Max XP must be more than min XP!");
        this.f8004o = i10;
        this.f8005p = j10;
        this.f8006q = j11;
    }

    public final int V3() {
        return this.f8004o;
    }

    public final long W3() {
        return this.f8006q;
    }

    public final long X3() {
        return this.f8005p;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PlayerLevel)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        PlayerLevel playerLevel = (PlayerLevel) obj;
        return Objects.b(Integer.valueOf(playerLevel.V3()), Integer.valueOf(V3())) && Objects.b(Long.valueOf(playerLevel.X3()), Long.valueOf(X3())) && Objects.b(Long.valueOf(playerLevel.W3()), Long.valueOf(W3()));
    }

    public final int hashCode() {
        return Objects.c(Integer.valueOf(this.f8004o), Long.valueOf(this.f8005p), Long.valueOf(this.f8006q));
    }

    public final String toString() {
        return Objects.d(this).a("LevelNumber", Integer.valueOf(V3())).a("MinXp", Long.valueOf(X3())).a("MaxXp", Long.valueOf(W3())).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, V3());
        SafeParcelWriter.p(parcel, 2, X3());
        SafeParcelWriter.p(parcel, 3, W3());
        SafeParcelWriter.b(parcel, iA);
    }
}
