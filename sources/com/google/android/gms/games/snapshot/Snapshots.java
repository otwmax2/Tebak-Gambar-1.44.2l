package com.google.android.gms.games.snapshot;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface Snapshots {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    @Deprecated
    public interface CommitSnapshotResult extends Result {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    @Deprecated
    public interface DeleteSnapshotResult extends Result {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    @Deprecated
    public interface LoadSnapshotsResult extends Releasable, Result {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    @Deprecated
    public interface OpenSnapshotResult extends Result {
    }
}
