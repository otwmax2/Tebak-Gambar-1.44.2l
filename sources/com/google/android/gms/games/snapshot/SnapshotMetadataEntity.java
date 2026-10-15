package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@UsedByReflection("GamesGmsClientImpl.java")
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class SnapshotMetadataEntity extends com.google.android.gms.games.internal.zzb implements SnapshotMetadata {
    public static final Parcelable.Creator<SnapshotMetadataEntity> CREATOR = new zzd();

    @SafeParcelable.Field
    private final long A;

    @SafeParcelable.Field
    private final String B;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final GameEntity f8236o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final PlayerEntity f8237p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8238q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f8239r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8240s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8241t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8242u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f8243v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f8244w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    private final float f8245x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8246y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f8247z;

    public SnapshotMetadataEntity(SnapshotMetadata snapshotMetadata) {
        this(snapshotMetadata, new PlayerEntity(snapshotMetadata.y2()));
    }

    static int W3(SnapshotMetadata snapshotMetadata) {
        return Objects.c(snapshotMetadata.u(), snapshotMetadata.y2(), snapshotMetadata.R3(), snapshotMetadata.o2(), Float.valueOf(snapshotMetadata.B3()), snapshotMetadata.getTitle(), snapshotMetadata.getDescription(), Long.valueOf(snapshotMetadata.Q0()), Long.valueOf(snapshotMetadata.A0()), snapshotMetadata.L3(), Boolean.valueOf(snapshotMetadata.Q2()), Long.valueOf(snapshotMetadata.G1()), snapshotMetadata.Z1());
    }

    static boolean X3(SnapshotMetadata snapshotMetadata, Object obj) {
        if (!(obj instanceof SnapshotMetadata)) {
            return false;
        }
        if (snapshotMetadata == obj) {
            return true;
        }
        SnapshotMetadata snapshotMetadata2 = (SnapshotMetadata) obj;
        return Objects.b(snapshotMetadata2.u(), snapshotMetadata.u()) && Objects.b(snapshotMetadata2.y2(), snapshotMetadata.y2()) && Objects.b(snapshotMetadata2.R3(), snapshotMetadata.R3()) && Objects.b(snapshotMetadata2.o2(), snapshotMetadata.o2()) && Objects.b(Float.valueOf(snapshotMetadata2.B3()), Float.valueOf(snapshotMetadata.B3())) && Objects.b(snapshotMetadata2.getTitle(), snapshotMetadata.getTitle()) && Objects.b(snapshotMetadata2.getDescription(), snapshotMetadata.getDescription()) && Objects.b(Long.valueOf(snapshotMetadata2.Q0()), Long.valueOf(snapshotMetadata.Q0())) && Objects.b(Long.valueOf(snapshotMetadata2.A0()), Long.valueOf(snapshotMetadata.A0())) && Objects.b(snapshotMetadata2.L3(), snapshotMetadata.L3()) && Objects.b(Boolean.valueOf(snapshotMetadata2.Q2()), Boolean.valueOf(snapshotMetadata.Q2())) && Objects.b(Long.valueOf(snapshotMetadata2.G1()), Long.valueOf(snapshotMetadata.G1())) && Objects.b(snapshotMetadata2.Z1(), snapshotMetadata.Z1());
    }

    static String Y3(SnapshotMetadata snapshotMetadata) {
        return Objects.d(snapshotMetadata).a("Game", snapshotMetadata.u()).a("Owner", snapshotMetadata.y2()).a("SnapshotId", snapshotMetadata.R3()).a("CoverImageUri", snapshotMetadata.o2()).a("CoverImageUrl", snapshotMetadata.getCoverImageUrl()).a("CoverImageAspectRatio", Float.valueOf(snapshotMetadata.B3())).a("Description", snapshotMetadata.getDescription()).a("LastModifiedTimestamp", Long.valueOf(snapshotMetadata.Q0())).a("PlayedTime", Long.valueOf(snapshotMetadata.A0())).a("UniqueName", snapshotMetadata.L3()).a("ChangePending", Boolean.valueOf(snapshotMetadata.Q2())).a("ProgressValue", Long.valueOf(snapshotMetadata.G1())).a("DeviceName", snapshotMetadata.Z1()).toString();
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final long A0() {
        return this.f8244w;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final float B3() {
        return this.f8245x;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final long G1() {
        return this.A;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final String L3() {
        return this.f8246y;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final long Q0() {
        return this.f8243v;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final boolean Q2() {
        return this.f8247z;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final String R3() {
        return this.f8238q;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: V3, reason: merged with bridge method [inline-methods] */
    public final SnapshotMetadata p3() {
        return this;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final String Z1() {
        return this.B;
    }

    public final boolean equals(Object obj) {
        return X3(this, obj);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final String getCoverImageUrl() {
        return this.f8240s;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final String getDescription() {
        return this.f8242u;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final String getTitle() {
        return this.f8241t;
    }

    public final int hashCode() {
        return W3(this);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final Uri o2() {
        return this.f8239r;
    }

    public final String toString() {
        return Y3(this);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final Game u() {
        return this.f8236o;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, u(), i10, false);
        SafeParcelWriter.s(parcel, 2, y2(), i10, false);
        SafeParcelWriter.t(parcel, 3, R3(), false);
        SafeParcelWriter.s(parcel, 5, o2(), i10, false);
        SafeParcelWriter.t(parcel, 6, getCoverImageUrl(), false);
        SafeParcelWriter.t(parcel, 7, this.f8241t, false);
        SafeParcelWriter.t(parcel, 8, getDescription(), false);
        SafeParcelWriter.p(parcel, 9, Q0());
        SafeParcelWriter.p(parcel, 10, A0());
        SafeParcelWriter.i(parcel, 11, B3());
        SafeParcelWriter.t(parcel, 12, L3(), false);
        SafeParcelWriter.c(parcel, 13, Q2());
        SafeParcelWriter.p(parcel, 14, G1());
        SafeParcelWriter.t(parcel, 15, Z1(), false);
        SafeParcelWriter.b(parcel, iA);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final Player y2() {
        return this.f8237p;
    }

    private SnapshotMetadataEntity(SnapshotMetadata snapshotMetadata, PlayerEntity playerEntity) {
        this.f8236o = new GameEntity(snapshotMetadata.u());
        this.f8237p = playerEntity;
        this.f8238q = snapshotMetadata.R3();
        this.f8239r = snapshotMetadata.o2();
        this.f8240s = snapshotMetadata.getCoverImageUrl();
        this.f8245x = snapshotMetadata.B3();
        this.f8241t = snapshotMetadata.getTitle();
        this.f8242u = snapshotMetadata.getDescription();
        this.f8243v = snapshotMetadata.Q0();
        this.f8244w = snapshotMetadata.A0();
        this.f8246y = snapshotMetadata.L3();
        this.f8247z = snapshotMetadata.Q2();
        this.A = snapshotMetadata.G1();
        this.B = snapshotMetadata.Z1();
    }

    @SafeParcelable.Constructor
    SnapshotMetadataEntity(@SafeParcelable.Param GameEntity gameEntity, @SafeParcelable.Param PlayerEntity playerEntity, @SafeParcelable.Param String str, @SafeParcelable.Param Uri uri, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param long j10, @SafeParcelable.Param long j11, @SafeParcelable.Param float f10, @SafeParcelable.Param String str5, @SafeParcelable.Param boolean z10, @SafeParcelable.Param long j12, @SafeParcelable.Param String str6) {
        this.f8236o = gameEntity;
        this.f8237p = playerEntity;
        this.f8238q = str;
        this.f8239r = uri;
        this.f8240s = str2;
        this.f8245x = f10;
        this.f8241t = str3;
        this.f8242u = str4;
        this.f8243v = j10;
        this.f8244w = j11;
        this.f8246y = str5;
        this.f8247z = z10;
        this.A = j12;
        this.B = str6;
    }
}
