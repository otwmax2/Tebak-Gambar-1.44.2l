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
public final class MostRecentGameInfoEntity extends com.google.android.gms.games.internal.zzb implements zza {
    public static final Parcelable.Creator<MostRecentGameInfoEntity> CREATOR = new zzc();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8066o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8067p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f8068q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f8069r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f8070s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f8071t;

    public MostRecentGameInfoEntity(zza zzaVar) {
        this.f8066o = zzaVar.P2();
        this.f8067p = zzaVar.P0();
        this.f8068q = zzaVar.M();
        this.f8069r = zzaVar.f2();
        this.f8070s = zzaVar.E2();
        this.f8071t = zzaVar.k1();
    }

    static int V3(zza zzaVar) {
        return Objects.c(zzaVar.P2(), zzaVar.P0(), Long.valueOf(zzaVar.M()), zzaVar.f2(), zzaVar.E2(), zzaVar.k1());
    }

    static boolean W3(zza zzaVar, Object obj) {
        if (!(obj instanceof zza)) {
            return false;
        }
        if (zzaVar == obj) {
            return true;
        }
        zza zzaVar2 = (zza) obj;
        return Objects.b(zzaVar2.P2(), zzaVar.P2()) && Objects.b(zzaVar2.P0(), zzaVar.P0()) && Objects.b(Long.valueOf(zzaVar2.M()), Long.valueOf(zzaVar.M())) && Objects.b(zzaVar2.f2(), zzaVar.f2()) && Objects.b(zzaVar2.E2(), zzaVar.E2()) && Objects.b(zzaVar2.k1(), zzaVar.k1());
    }

    static String X3(zza zzaVar) {
        return Objects.d(zzaVar).a("GameId", zzaVar.P2()).a("GameName", zzaVar.P0()).a("ActivityTimestampMillis", Long.valueOf(zzaVar.M())).a("GameIconUri", zzaVar.f2()).a("GameHiResUri", zzaVar.E2()).a("GameFeaturedUri", zzaVar.k1()).toString();
    }

    @Override // com.google.android.gms.games.internal.player.zza
    public final Uri E2() {
        return this.f8070s;
    }

    @Override // com.google.android.gms.games.internal.player.zza
    public final long M() {
        return this.f8068q;
    }

    @Override // com.google.android.gms.games.internal.player.zza
    public final String P0() {
        return this.f8067p;
    }

    @Override // com.google.android.gms.games.internal.player.zza
    public final String P2() {
        return this.f8066o;
    }

    public final boolean equals(Object obj) {
        return W3(this, obj);
    }

    @Override // com.google.android.gms.games.internal.player.zza
    public final Uri f2() {
        return this.f8069r;
    }

    public final int hashCode() {
        return V3(this);
    }

    @Override // com.google.android.gms.games.internal.player.zza
    public final Uri k1() {
        return this.f8071t;
    }

    public final String toString() {
        return X3(this);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f8066o, false);
        SafeParcelWriter.t(parcel, 2, this.f8067p, false);
        SafeParcelWriter.p(parcel, 3, this.f8068q);
        SafeParcelWriter.s(parcel, 4, this.f8069r, i10, false);
        SafeParcelWriter.s(parcel, 5, this.f8070s, i10, false);
        SafeParcelWriter.s(parcel, 6, this.f8071t, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    MostRecentGameInfoEntity(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param long j10, @SafeParcelable.Param Uri uri, @SafeParcelable.Param Uri uri2, @SafeParcelable.Param Uri uri3) {
        this.f8066o = str;
        this.f8067p = str2;
        this.f8068q = j10;
        this.f8069r = uri;
        this.f8070s = uri2;
        this.f8071t = uri3;
    }
}
