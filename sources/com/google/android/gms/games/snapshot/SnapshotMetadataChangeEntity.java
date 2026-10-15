package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@UsedByReflection("GamesGmsClientImpl.java")
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class SnapshotMetadataChangeEntity extends com.google.android.gms.games.internal.zzb implements SnapshotMetadataChange {
    public static final Parcelable.Creator<SnapshotMetadataChangeEntity> CREATOR = new zzc();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8231o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final Long f8232p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f8233q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private BitmapTeleporter f8234r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final Long f8235s;

    SnapshotMetadataChangeEntity() {
        this(null, null, null, null, null);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadataChange
    public final BitmapTeleporter V1() {
        return this.f8234r;
    }

    public final Long V3() {
        return this.f8232p;
    }

    public final Long W3() {
        return this.f8235s;
    }

    public final String getDescription() {
        return this.f8231o;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, getDescription(), false);
        SafeParcelWriter.q(parcel, 2, V3(), false);
        SafeParcelWriter.s(parcel, 4, this.f8233q, i10, false);
        SafeParcelWriter.s(parcel, 5, this.f8234r, i10, false);
        SafeParcelWriter.q(parcel, 6, W3(), false);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    SnapshotMetadataChangeEntity(@SafeParcelable.Param String str, @SafeParcelable.Param Long l10, @SafeParcelable.Param BitmapTeleporter bitmapTeleporter, @SafeParcelable.Param Uri uri, @SafeParcelable.Param Long l11) {
        this.f8231o = str;
        this.f8232p = l10;
        this.f8234r = bitmapTeleporter;
        this.f8233q = uri;
        this.f8235s = l11;
        Preconditions.o(bitmapTeleporter == null || uri == null, "Cannot set both a URI and an image");
    }
}
