package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.Player;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public interface SnapshotMetadata extends Parcelable, Freezable<SnapshotMetadata> {
    long A0();

    float B3();

    long G1();

    String L3();

    long Q0();

    boolean Q2();

    String R3();

    String Z1();

    @KeepName
    @Deprecated
    String getCoverImageUrl();

    String getDescription();

    String getTitle();

    Uri o2();

    Game u();

    Player y2();
}
