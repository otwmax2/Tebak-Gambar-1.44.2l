package com.google.android.gms.games.snapshot;

import android.os.Parcelable;
import com.google.android.gms.drive.Contents;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public interface SnapshotContents extends Parcelable {
    void close();

    boolean isClosed();

    Contents y1();
}
