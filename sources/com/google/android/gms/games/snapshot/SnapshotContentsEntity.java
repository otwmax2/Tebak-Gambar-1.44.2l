package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@UsedByReflection("GamesGmsClientImpl.java")
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class SnapshotContentsEntity extends com.google.android.gms.games.internal.zzb implements SnapshotContents {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private Contents f8228o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final Object f8227p = new Object();
    public static final Parcelable.Creator<SnapshotContentsEntity> CREATOR = new zza();

    @SafeParcelable.Constructor
    public SnapshotContentsEntity(@SafeParcelable.Param Contents contents) {
        this.f8228o = contents;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotContents
    public final void close() {
        this.f8228o = null;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotContents
    public final boolean isClosed() {
        return this.f8228o == null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, this.f8228o, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotContents
    public final Contents y1() {
        return this.f8228o;
    }
}
