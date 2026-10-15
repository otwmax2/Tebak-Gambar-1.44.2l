package com.google.android.gms.games.snapshot;

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
public final class SnapshotEntity extends com.google.android.gms.games.internal.zzb implements Snapshot {
    public static final Parcelable.Creator<SnapshotEntity> CREATOR = new zzb();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final SnapshotMetadataEntity f8229o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final SnapshotContentsEntity f8230p;

    @SafeParcelable.Constructor
    public SnapshotEntity(@SafeParcelable.Param SnapshotMetadata snapshotMetadata, @SafeParcelable.Param SnapshotContentsEntity snapshotContentsEntity) {
        this.f8229o = new SnapshotMetadataEntity(snapshotMetadata);
        this.f8230p = snapshotContentsEntity;
    }

    @Override // com.google.android.gms.games.snapshot.Snapshot
    public final SnapshotContents M3() {
        if (this.f8230p.isClosed()) {
            return null;
        }
        return this.f8230p;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Snapshot)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Snapshot snapshot = (Snapshot) obj;
        return Objects.b(snapshot.i1(), i1()) && Objects.b(snapshot.M3(), M3());
    }

    public final int hashCode() {
        return Objects.c(i1(), M3());
    }

    @Override // com.google.android.gms.games.snapshot.Snapshot
    public final SnapshotMetadata i1() {
        return this.f8229o;
    }

    public final String toString() {
        return Objects.d(this).a("Metadata", i1()).a("HasContents", Boolean.valueOf(M3() != null)).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, i1(), i10, false);
        SafeParcelWriter.s(parcel, 3, M3(), i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
