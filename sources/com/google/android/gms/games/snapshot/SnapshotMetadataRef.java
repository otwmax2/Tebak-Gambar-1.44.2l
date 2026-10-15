package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataBufferRef;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class SnapshotMetadataRef extends DataBufferRef implements SnapshotMetadata {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Game f8248r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Player f8249s;

    public SnapshotMetadataRef(DataHolder dataHolder, int i10) {
        super(dataHolder, i10);
        this.f8248r = new GameRef(dataHolder, i10);
        this.f8249s = new PlayerRef(dataHolder, i10);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final long A0() {
        return w("duration");
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final float B3() {
        float fT = t("cover_icon_image_height");
        float fT2 = t("cover_icon_image_width");
        if (fT == 0.0f) {
            return 0.0f;
        }
        return fT2 / fT;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final long G1() {
        return w("progress_value");
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final String L3() {
        return x("unique_name");
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final long Q0() {
        return w("last_modified_timestamp");
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final boolean Q2() {
        return v("pending_change_count") > 0;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final String R3() {
        return x("external_snapshot_id");
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final String Z1() {
        return x("device_name");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final boolean equals(Object obj) {
        return SnapshotMetadataEntity.X3(this, obj);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final String getCoverImageUrl() {
        return x("cover_icon_image_url");
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final String getDescription() {
        return x("description");
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final String getTitle() {
        return x("title");
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final int hashCode() {
        return SnapshotMetadataEntity.W3(this);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final Uri o2() {
        return A("cover_icon_image_uri");
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* synthetic */ SnapshotMetadata p3() {
        return new SnapshotMetadataEntity(this);
    }

    public final String toString() {
        return SnapshotMetadataEntity.Y3(this);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final Game u() {
        return this.f8248r;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        ((SnapshotMetadataEntity) ((SnapshotMetadata) p3())).writeToParcel(parcel, i10);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public final Player y2() {
        return this.f8249s;
    }
}
