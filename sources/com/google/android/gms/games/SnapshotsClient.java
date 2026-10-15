package com.google.android.gms.games;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public interface SnapshotsClient {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    public static final class DataOrConflict<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final T f8016a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final SnapshotConflict f8017b;

        public DataOrConflict(T t10, SnapshotConflict snapshotConflict) {
            this.f8016a = t10;
            this.f8017b = snapshotConflict;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface ResolutionPolicy {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    public static final class SnapshotConflict {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Snapshot f8018a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f8019b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Snapshot f8020c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final SnapshotContents f8021d;

        public SnapshotConflict(Snapshot snapshot, String str, Snapshot snapshot2, SnapshotContents snapshotContents) {
            this.f8018a = snapshot;
            this.f8019b = str;
            this.f8020c = snapshot2;
            this.f8021d = snapshotContents;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    public static final class SnapshotContentUnavailableApiException extends ApiException {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        protected final SnapshotMetadata f8022p;

        public SnapshotContentUnavailableApiException(Status status, SnapshotMetadata snapshotMetadata) {
            super(status);
            this.f8022p = snapshotMetadata;
        }
    }
}
