package com.google.android.gms.games.internal.experience;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.internal.zzb;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@UsedByReflection("GamesGmsClientImpl.java")
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class ExperienceEventEntity extends zzb implements ExperienceEvent {
    public static final Parcelable.Creator<ExperienceEventEntity> CREATOR = new zza();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8045o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final GameEntity f8046p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8047q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8048r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8049s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f8050t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f8051u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f8052v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f8053w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f8054x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f8055y;

    @SafeParcelable.Constructor
    ExperienceEventEntity(@SafeParcelable.Param String str, @SafeParcelable.Param GameEntity gameEntity, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param Uri uri, @SafeParcelable.Param long j10, @SafeParcelable.Param long j11, @SafeParcelable.Param long j12, @SafeParcelable.Param int i10, @SafeParcelable.Param int i11) {
        this.f8045o = str;
        this.f8046p = gameEntity;
        this.f8047q = str2;
        this.f8048r = str3;
        this.f8049s = str4;
        this.f8050t = uri;
        this.f8051u = j10;
        this.f8052v = j11;
        this.f8053w = j12;
        this.f8054x = i10;
        this.f8055y = i11;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public final String I() {
        return this.f8047q;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public final long O0() {
        return this.f8051u;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public final long T() {
        return this.f8053w;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ExperienceEvent)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        ExperienceEvent experienceEvent = (ExperienceEvent) obj;
        return Objects.b(experienceEvent.j1(), j1()) && Objects.b(experienceEvent.u(), u()) && Objects.b(experienceEvent.I(), I()) && Objects.b(experienceEvent.i0(), i0()) && Objects.b(experienceEvent.getIconImageUrl(), getIconImageUrl()) && Objects.b(experienceEvent.g(), g()) && Objects.b(Long.valueOf(experienceEvent.O0()), Long.valueOf(O0())) && Objects.b(Long.valueOf(experienceEvent.k3()), Long.valueOf(k3())) && Objects.b(Long.valueOf(experienceEvent.T()), Long.valueOf(T())) && Objects.b(Integer.valueOf(experienceEvent.o()), Integer.valueOf(o())) && Objects.b(Integer.valueOf(experienceEvent.s2()), Integer.valueOf(s2()));
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public final Uri g() {
        return this.f8050t;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public final String getIconImageUrl() {
        return this.f8049s;
    }

    public final int hashCode() {
        return Objects.c(j1(), u(), I(), i0(), getIconImageUrl(), g(), Long.valueOf(O0()), Long.valueOf(k3()), Long.valueOf(T()), Integer.valueOf(o()), Integer.valueOf(s2()));
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public final String i0() {
        return this.f8048r;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public final String j1() {
        return this.f8045o;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public final long k3() {
        return this.f8052v;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public final int o() {
        return this.f8054x;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public final int s2() {
        return this.f8055y;
    }

    public final String toString() {
        return Objects.d(this).a("ExperienceId", j1()).a("Game", u()).a("DisplayTitle", I()).a("DisplayDescription", i0()).a("IconImageUrl", getIconImageUrl()).a("IconImageUri", g()).a("CreatedTimestamp", Long.valueOf(O0())).a("XpEarned", Long.valueOf(k3())).a("CurrentXp", Long.valueOf(T())).a("Type", Integer.valueOf(o())).a("NewLevel", Integer.valueOf(s2())).toString();
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public final Game u() {
        return this.f8046p;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f8045o, false);
        SafeParcelWriter.s(parcel, 2, this.f8046p, i10, false);
        SafeParcelWriter.t(parcel, 3, this.f8047q, false);
        SafeParcelWriter.t(parcel, 4, this.f8048r, false);
        SafeParcelWriter.t(parcel, 5, getIconImageUrl(), false);
        SafeParcelWriter.s(parcel, 6, this.f8050t, i10, false);
        SafeParcelWriter.p(parcel, 7, this.f8051u);
        SafeParcelWriter.p(parcel, 8, this.f8052v);
        SafeParcelWriter.p(parcel, 9, this.f8053w);
        SafeParcelWriter.l(parcel, 10, this.f8054x);
        SafeParcelWriter.l(parcel, 11, this.f8055y);
        SafeParcelWriter.b(parcel, iA);
    }
}
