package com.google.android.gms.games.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.DataHolderResult;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.AnnotatedData;
import com.google.android.gms.games.FriendsResolutionRequiredException;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameBuffer;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.GamesClientStatusCodes;
import com.google.android.gms.games.GamesMetadata;
import com.google.android.gms.games.GamesStatusCodes;
import com.google.android.gms.games.LeaderboardsClient;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerBuffer;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.Players;
import com.google.android.gms.games.SnapshotsClient;
import com.google.android.gms.games.VideosClient;
import com.google.android.gms.games.achievement.AchievementBuffer;
import com.google.android.gms.games.achievement.Achievements;
import com.google.android.gms.games.event.EventBuffer;
import com.google.android.gms.games.event.Events;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardBuffer;
import com.google.android.gms.games.leaderboard.LeaderboardEntity;
import com.google.android.gms.games.leaderboard.LeaderboardScore;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.games.leaderboard.LeaderboardScoreEntity;
import com.google.android.gms.games.leaderboard.Leaderboards;
import com.google.android.gms.games.leaderboard.ScoreSubmissionData;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.SnapshotContentsEntity;
import com.google.android.gms.games.snapshot.SnapshotEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataBuffer;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;
import com.google.android.gms.games.snapshot.SnapshotMetadataChangeEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntity;
import com.google.android.gms.games.snapshot.Snapshots;
import com.google.android.gms.games.stats.PlayerStats;
import com.google.android.gms.games.stats.PlayerStatsBuffer;
import com.google.android.gms.games.stats.PlayerStatsEntity;
import com.google.android.gms.games.stats.Stats;
import com.google.android.gms.games.video.CaptureState;
import com.google.android.gms.games.video.VideoCapabilities;
import com.google.android.gms.games.video.Videos;
import com.google.android.gms.internal.games.zzfd;
import com.google.android.gms.internal.games.zzfe;
import com.google.android.gms.internal.games.zzfi;
import com.google.android.gms.internal.games.zzgh;
import com.google.android.gms.signin.internal.SignInClientImpl;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class zzf extends GmsClient<zzac> {
    private final zzfe W;
    private final String X;
    private PlayerEntity Y;
    private GameEntity Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private final zzae f8124a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private boolean f8125b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private final long f8126c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private boolean f8127d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private final Games.GamesOptions f8128e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private Bundle f8129f0;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class a extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final TaskCompletionSource<Boolean> f8130o;

        a(TaskCompletionSource<Boolean> taskCompletionSource) {
            this.f8130o = taskCompletionSource;
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void O5(int i10, String str) {
            if (i10 == 0 || i10 == 3003) {
                this.f8130o.c(Boolean.valueOf(i10 == 3003));
            } else {
                zzf.F1(this.f8130o, i10);
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class a0 extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final TaskCompletionSource<AnnotatedData<AchievementBuffer>> f8131o;

        a0(TaskCompletionSource<AnnotatedData<AchievementBuffer>> taskCompletionSource) {
            this.f8131o = taskCompletionSource;
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void T2(DataHolder dataHolder) {
            int iA4 = dataHolder.a4();
            if (iA4 == 0 || iA4 == 3) {
                this.f8131o.c(new AnnotatedData<>(new AchievementBuffer(dataHolder), iA4 == 3));
            } else {
                zzf.F1(this.f8131o, iA4);
                dataHolder.close();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    static final class b extends m0 implements GamesMetadata.LoadGamesResult {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final GameBuffer f8132q;

        b(DataHolder dataHolder) {
            super(dataHolder);
            this.f8132q = new GameBuffer(dataHolder);
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class b0 extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final TaskCompletionSource<Void> f8133o;

        b0(TaskCompletionSource<Void> taskCompletionSource) {
            this.f8133o = taskCompletionSource;
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void O5(int i10, String str) {
            if (i10 == 0 || i10 == 3003) {
                this.f8133o.c(null);
            } else {
                zzf.F1(this.f8133o, i10);
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class c extends m0 implements Events.LoadEventsResult {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final EventBuffer f8134q;

        c(DataHolder dataHolder) {
            super(dataHolder);
            this.f8134q = new EventBuffer(dataHolder);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    static final class c0 implements Videos.CaptureCapabilitiesResult {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final Status f8135o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final VideoCapabilities f8136p;

        c0(Status status, VideoCapabilities videoCapabilities) {
            this.f8135o = status;
            this.f8136p = videoCapabilities;
        }

        @Override // com.google.android.gms.common.api.Result
        public final Status V2() {
            return this.f8135o;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    static final class d extends m0 implements Stats.LoadPlayerStatsResult {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final PlayerStats f8137q;

        d(DataHolder dataHolder) {
            super(dataHolder);
            PlayerStatsBuffer playerStatsBuffer = new PlayerStatsBuffer(dataHolder);
            try {
                if (playerStatsBuffer.getCount() > 0) {
                    this.f8137q = new PlayerStatsEntity((PlayerStats) playerStatsBuffer.get(0));
                } else {
                    this.f8137q = null;
                }
            } finally {
                playerStatsBuffer.c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    static final class d0 implements Videos.CaptureAvailableResult {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final Status f8138o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final boolean f8139p;

        d0(Status status, boolean z10) {
            this.f8138o = status;
            this.f8139p = z10;
        }

        @Override // com.google.android.gms.common.api.Result
        public final Status V2() {
            return this.f8138o;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    static final class e extends m0 implements Leaderboards.LoadPlayerScoreResult {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final LeaderboardScoreEntity f8140q;

        e(DataHolder dataHolder) {
            super(dataHolder);
            LeaderboardScoreBuffer leaderboardScoreBuffer = new LeaderboardScoreBuffer(dataHolder);
            try {
                if (leaderboardScoreBuffer.getCount() > 0) {
                    this.f8140q = (LeaderboardScoreEntity) ((LeaderboardScore) leaderboardScoreBuffer.get(0)).p3();
                } else {
                    this.f8140q = null;
                }
            } finally {
                leaderboardScoreBuffer.c();
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class e0 extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final TaskCompletionSource<SnapshotMetadata> f8141o;

        e0(TaskCompletionSource<SnapshotMetadata> taskCompletionSource) {
            this.f8141o = taskCompletionSource;
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void S3(DataHolder dataHolder) {
            int iA4 = dataHolder.a4();
            if (iA4 != 0) {
                zzf.F1(this.f8141o, iA4);
                dataHolder.close();
                return;
            }
            SnapshotMetadataBuffer snapshotMetadataBuffer = new SnapshotMetadataBuffer(dataHolder);
            try {
                SnapshotMetadata snapshotMetadataP3 = snapshotMetadataBuffer.getCount() > 0 ? ((SnapshotMetadata) snapshotMetadataBuffer.get(0)).p3() : null;
                snapshotMetadataBuffer.close();
                this.f8141o.c(snapshotMetadataP3);
            } catch (Throwable th) {
                try {
                    snapshotMetadataBuffer.close();
                } catch (Throwable th2) {
                    zzgh.a(th, th2);
                }
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class f extends m0 implements Leaderboards.LoadScoresResult {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final LeaderboardEntity f8142q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private final LeaderboardScoreBuffer f8143r;

        f(DataHolder dataHolder, DataHolder dataHolder2) {
            super(dataHolder2);
            LeaderboardBuffer leaderboardBuffer = new LeaderboardBuffer(dataHolder);
            try {
                if (leaderboardBuffer.getCount() > 0) {
                    this.f8142q = (LeaderboardEntity) leaderboardBuffer.get(0).p3();
                } else {
                    this.f8142q = null;
                }
                leaderboardBuffer.c();
                this.f8143r = new LeaderboardScoreBuffer(dataHolder2);
            } catch (Throwable th) {
                leaderboardBuffer.c();
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    static final class f0 implements Videos.CaptureStateResult {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final Status f8144o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final CaptureState f8145p;

        f0(Status status, CaptureState captureState) {
            this.f8144o = status;
            this.f8145p = captureState;
        }

        @Override // com.google.android.gms.common.api.Result
        public final Status V2() {
            return this.f8144o;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class g extends m0 implements Players.LoadPlayersResult {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final PlayerBuffer f8146q;

        g(DataHolder dataHolder) {
            super(dataHolder);
            this.f8146q = new PlayerBuffer(dataHolder);
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class g0 extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final TaskCompletionSource<String> f8147o;

        g0(TaskCompletionSource<String> taskCompletionSource) {
            this.f8147o = taskCompletionSource;
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void c7(int i10, String str) {
            if (i10 == 0) {
                this.f8147o.c(str);
            } else {
                zzf.F1(this.f8147o, i10);
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static class h extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private TaskCompletionSource<CaptureState> f8148o;

        h(TaskCompletionSource<CaptureState> taskCompletionSource) {
            this.f8148o = taskCompletionSource;
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void n2(int i10, Bundle bundle) {
            if (i10 == 0) {
                this.f8148o.c(CaptureState.a(bundle));
            } else {
                zzf.F1(this.f8148o, i10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    static final class h0 extends m0 implements Snapshots.CommitSnapshotResult {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final SnapshotMetadata f8149q;

        h0(DataHolder dataHolder) {
            super(dataHolder);
            SnapshotMetadataBuffer snapshotMetadataBuffer = new SnapshotMetadataBuffer(dataHolder);
            try {
                if (snapshotMetadataBuffer.getCount() > 0) {
                    this.f8149q = new SnapshotMetadataEntity((SnapshotMetadata) snapshotMetadataBuffer.get(0));
                } else {
                    this.f8149q = null;
                }
            } finally {
                snapshotMetadataBuffer.c();
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class i extends m0 implements Snapshots.LoadSnapshotsResult {
        i(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class i0 extends r<Events.LoadEventsResult> {
        i0(BaseImplementation.ResultHolder<Events.LoadEventsResult> resultHolder) {
            super(resultHolder);
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void p1(DataHolder dataHolder) {
            X0(new c(dataHolder));
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static class j extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private TaskCompletionSource<Boolean> f8150o;

        j(TaskCompletionSource<Boolean> taskCompletionSource) {
            this.f8150o = taskCompletionSource;
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void A0(int i10, boolean z10) {
            if (i10 == 0) {
                this.f8150o.c(Boolean.valueOf(z10));
            } else {
                zzf.F1(this.f8150o, i10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    static final class j0 implements Snapshots.DeleteSnapshotResult {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final Status f8151o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final String f8152p;

        j0(int i10, String str) {
            this.f8151o = GamesStatusCodes.b(i10);
            this.f8152p = str;
        }

        @Override // com.google.android.gms.common.api.Result
        public final Status V2() {
            return this.f8151o;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class k extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final TaskCompletionSource<AnnotatedData<SnapshotMetadataBuffer>> f8153o;

        k(TaskCompletionSource<AnnotatedData<SnapshotMetadataBuffer>> taskCompletionSource) {
            this.f8153o = taskCompletionSource;
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void U4(DataHolder dataHolder) {
            int iA4 = dataHolder.a4();
            boolean z10 = iA4 == 3;
            if (iA4 == 0 || z10) {
                this.f8153o.c(new AnnotatedData<>(new SnapshotMetadataBuffer(dataHolder), z10));
            } else {
                zzf.F1(this.f8153o, iA4);
                dataHolder.close();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    class k0 extends zzfd {
        k0() {
            super(zzf.this.D().getMainLooper(), 1000);
        }

        @Override // com.google.android.gms.internal.games.zzfd
        protected final void d(String str, int i10) {
            try {
                if (zzf.this.a()) {
                    ((zzac) zzf.this.I()).K6(str, i10);
                    return;
                }
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 89);
                sb.append("Unable to increment event ");
                sb.append(str);
                sb.append(" by ");
                sb.append(i10);
                sb.append(" because the games client is no longer connected");
                zzz.a("GamesGmsClientImpl", sb.toString());
            } catch (RemoteException e10) {
                zzf.x0(e10);
            } catch (SecurityException e11) {
                zzf.j1(e11);
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class l extends m0 implements Snapshots.OpenSnapshotResult {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final Snapshot f8155q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private final String f8156r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private final Snapshot f8157s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private final SnapshotContents f8158t;

        l(DataHolder dataHolder, Contents contents) {
            this(dataHolder, null, contents, null, null);
        }

        l(DataHolder dataHolder, String str, Contents contents, Contents contents2, Contents contents3) {
            super(dataHolder);
            SnapshotMetadataBuffer snapshotMetadataBuffer = new SnapshotMetadataBuffer(dataHolder);
            try {
                if (snapshotMetadataBuffer.getCount() == 0) {
                    this.f8155q = null;
                    this.f8157s = null;
                } else {
                    boolean z10 = true;
                    if (snapshotMetadataBuffer.getCount() == 1) {
                        if (dataHolder.a4() == 4004) {
                            z10 = false;
                        }
                        Asserts.b(z10);
                        this.f8155q = new SnapshotEntity(new SnapshotMetadataEntity((SnapshotMetadata) snapshotMetadataBuffer.get(0)), new SnapshotContentsEntity(contents));
                        this.f8157s = null;
                    } else {
                        this.f8155q = new SnapshotEntity(new SnapshotMetadataEntity((SnapshotMetadata) snapshotMetadataBuffer.get(0)), new SnapshotContentsEntity(contents));
                        this.f8157s = new SnapshotEntity(new SnapshotMetadataEntity((SnapshotMetadata) snapshotMetadataBuffer.get(1)), new SnapshotContentsEntity(contents2));
                    }
                }
                snapshotMetadataBuffer.c();
                this.f8156r = str;
                this.f8158t = new SnapshotContentsEntity(contents3);
            } catch (Throwable th) {
                snapshotMetadataBuffer.c();
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class l0 extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final TaskCompletionSource<AnnotatedData<EventBuffer>> f8159o;

        l0(TaskCompletionSource<AnnotatedData<EventBuffer>> taskCompletionSource) {
            this.f8159o = taskCompletionSource;
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void p1(DataHolder dataHolder) {
            int iA4 = dataHolder.a4();
            boolean z10 = iA4 == 3;
            if (iA4 == 0 || z10) {
                this.f8159o.c(new AnnotatedData<>(new EventBuffer(dataHolder), z10));
            } else {
                zzf.F1(this.f8159o, iA4);
                dataHolder.close();
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static class m extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private TaskCompletionSource<VideoCapabilities> f8160o;

        m(TaskCompletionSource<VideoCapabilities> taskCompletionSource) {
            this.f8160o = taskCompletionSource;
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void R2(int i10, VideoCapabilities videoCapabilities) {
            if (i10 == 0) {
                this.f8160o.c(videoCapabilities);
            } else {
                zzf.F1(this.f8160o, i10);
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static abstract class m0 extends DataHolderResult {
        m0(DataHolder dataHolder) {
            super(dataHolder, GamesStatusCodes.b(dataHolder.a4()));
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class n extends r<Players.LoadPlayersResult> {
        n(BaseImplementation.ResultHolder<Players.LoadPlayersResult> resultHolder) {
            super(resultHolder);
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void J4(DataHolder dataHolder) {
            X0(new g(dataHolder));
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void u8(DataHolder dataHolder) {
            X0(new g(dataHolder));
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class n0 extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final TaskCompletionSource<AnnotatedData<Game>> f8161o;

        n0(TaskCompletionSource<AnnotatedData<Game>> taskCompletionSource) {
            this.f8161o = taskCompletionSource;
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void J5(DataHolder dataHolder) {
            int iA4 = dataHolder.a4();
            if (iA4 != 0 && iA4 != 3) {
                zzf.F1(this.f8161o, iA4);
                dataHolder.close();
                return;
            }
            GameBuffer gameBuffer = new GameBuffer(dataHolder);
            try {
                Game gameP3 = gameBuffer.getCount() > 0 ? ((Game) gameBuffer.get(0)).p3() : null;
                gameBuffer.close();
                this.f8161o.c(new AnnotatedData<>(gameP3, iA4 == 3));
            } catch (Throwable th) {
                try {
                    gameBuffer.close();
                } catch (Throwable th2) {
                    zzgh.a(th, th2);
                }
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class o extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final TaskCompletionSource<AnnotatedData<PlayerStats>> f8162o;

        o(TaskCompletionSource<AnnotatedData<PlayerStats>> taskCompletionSource) {
            this.f8162o = taskCompletionSource;
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void s4(DataHolder dataHolder) {
            int iA4 = dataHolder.a4();
            if (iA4 != 0 && iA4 != 3) {
                zzf.F1(this.f8162o, iA4);
                dataHolder.close();
                return;
            }
            PlayerStatsBuffer playerStatsBuffer = new PlayerStatsBuffer(dataHolder);
            try {
                PlayerStats playerStatsP3 = playerStatsBuffer.getCount() > 0 ? ((PlayerStats) playerStatsBuffer.get(0)).p3() : null;
                playerStatsBuffer.close();
                this.f8162o.c(new AnnotatedData<>(playerStatsP3, iA4 == 3));
            } catch (Throwable th) {
                try {
                    playerStatsBuffer.close();
                } catch (Throwable th2) {
                    zzgh.a(th, th2);
                }
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class o0 extends m0 implements Leaderboards.LeaderboardMetadataResult {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final LeaderboardBuffer f8163q;

        o0(DataHolder dataHolder) {
            super(dataHolder);
            this.f8163q = new LeaderboardBuffer(dataHolder);
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class p extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final TaskCompletionSource<AnnotatedData<Player>> f8164o;

        p(TaskCompletionSource<AnnotatedData<Player>> taskCompletionSource) {
            this.f8164o = taskCompletionSource;
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void u8(DataHolder dataHolder) {
            int iA4 = dataHolder.a4();
            if (iA4 != 0 && iA4 != 3) {
                zzf.F1(this.f8164o, iA4);
                dataHolder.close();
            } else {
                PlayerBuffer playerBuffer = new PlayerBuffer(dataHolder);
                try {
                    this.f8164o.c(new AnnotatedData<>(playerBuffer.getCount() > 0 ? ((Player) playerBuffer.get(0)).p3() : null, iA4 == 3));
                } finally {
                    playerBuffer.c();
                }
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class p0 extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final TaskCompletionSource<AnnotatedData<Leaderboard>> f8165o;

        p0(TaskCompletionSource<AnnotatedData<Leaderboard>> taskCompletionSource) {
            this.f8165o = taskCompletionSource;
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void Ca(DataHolder dataHolder) {
            int iA4 = dataHolder.a4();
            boolean z10 = iA4 == 3;
            if (iA4 != 0 && !z10) {
                zzf.F1(this.f8165o, iA4);
                dataHolder.close();
                return;
            }
            LeaderboardBuffer leaderboardBuffer = new LeaderboardBuffer(dataHolder);
            try {
                Leaderboard leaderboardP3 = leaderboardBuffer.getCount() > 0 ? leaderboardBuffer.get(0).p3() : null;
                leaderboardBuffer.close();
                this.f8165o.c(new AnnotatedData<>(leaderboardP3, z10));
            } catch (Throwable th) {
                try {
                    leaderboardBuffer.close();
                } catch (Throwable th2) {
                    zzgh.a(th, th2);
                }
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private final class q extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final TaskCompletionSource<AnnotatedData<PlayerBuffer>> f8166o;

        q(TaskCompletionSource<AnnotatedData<PlayerBuffer>> taskCompletionSource) {
            this.f8166o = taskCompletionSource;
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void J4(DataHolder dataHolder) {
            u8(dataHolder);
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void u8(DataHolder dataHolder) {
            int iA4 = dataHolder.a4();
            if (iA4 == 10003) {
                zzf.this.T0(this.f8166o);
                dataHolder.close();
                return;
            }
            boolean z10 = iA4 == 3;
            if (iA4 == 0 || z10) {
                this.f8166o.c(new AnnotatedData<>(new PlayerBuffer(dataHolder), z10));
            } else {
                zzf.F1(this.f8166o, iA4);
                dataHolder.close();
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class q0 extends r<Leaderboards.LoadScoresResult> {
        q0(BaseImplementation.ResultHolder<Leaderboards.LoadScoresResult> resultHolder) {
            super(resultHolder);
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void R9(DataHolder dataHolder, DataHolder dataHolder2) {
            X0(new f(dataHolder, dataHolder2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    static abstract class r<T> extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final BaseImplementation.ResultHolder<T> f8168o;

        r(BaseImplementation.ResultHolder<T> resultHolder) {
            this.f8168o = (BaseImplementation.ResultHolder) Preconditions.l(resultHolder, "Holder must not be null");
        }

        final void X0(T t10) {
            this.f8168o.b(t10);
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private final class r0 extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final TaskCompletionSource<AnnotatedData<LeaderboardScore>> f8169o;

        r0(TaskCompletionSource<AnnotatedData<LeaderboardScore>> taskCompletionSource) {
            this.f8169o = taskCompletionSource;
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void Z8(DataHolder dataHolder) {
            int iA4 = dataHolder.a4();
            boolean z10 = iA4 == 3;
            if (iA4 == 10003) {
                zzf.this.T0(this.f8169o);
                dataHolder.close();
                return;
            }
            if (iA4 != 0 && !z10) {
                zzf.F1(this.f8169o, iA4);
                dataHolder.close();
                return;
            }
            LeaderboardScoreBuffer leaderboardScoreBuffer = new LeaderboardScoreBuffer(dataHolder);
            try {
                LeaderboardScore leaderboardScoreP3 = leaderboardScoreBuffer.getCount() > 0 ? ((LeaderboardScore) leaderboardScoreBuffer.get(0)).p3() : null;
                leaderboardScoreBuffer.close();
                this.f8169o.c(new AnnotatedData<>(leaderboardScoreP3, z10));
            } catch (Throwable th) {
                try {
                    leaderboardScoreBuffer.close();
                } catch (Throwable th2) {
                    zzgh.a(th, th2);
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    interface s<T> {
        void accept(T t10);
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class s0 extends r<Leaderboards.LeaderboardMetadataResult> {
        s0(BaseImplementation.ResultHolder<Leaderboards.LeaderboardMetadataResult> resultHolder) {
            super(resultHolder);
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void Ca(DataHolder dataHolder) {
            X0(new o0(dataHolder));
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class t extends r<Snapshots.OpenSnapshotResult> {
        t(BaseImplementation.ResultHolder<Snapshots.OpenSnapshotResult> resultHolder) {
            super(resultHolder);
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void I3(DataHolder dataHolder, Contents contents) {
            X0(new l(dataHolder, contents));
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void U7(DataHolder dataHolder, String str, Contents contents, Contents contents2, Contents contents3) {
            X0(new l(dataHolder, str, contents, contents2, contents3));
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private final class t0 extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final TaskCompletionSource<AnnotatedData<LeaderboardsClient.LeaderboardScores>> f8171o;

        t0(TaskCompletionSource<AnnotatedData<LeaderboardsClient.LeaderboardScores>> taskCompletionSource) {
            this.f8171o = taskCompletionSource;
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void R9(DataHolder dataHolder, DataHolder dataHolder2) {
            int iA4 = dataHolder2.a4();
            boolean z10 = iA4 == 3;
            if (iA4 == 10003) {
                zzf.this.T0(this.f8171o);
                dataHolder.close();
                dataHolder2.close();
                return;
            }
            if (iA4 != 0 && !z10) {
                zzf.F1(this.f8171o, iA4);
                dataHolder.close();
                dataHolder2.close();
                return;
            }
            LeaderboardBuffer leaderboardBuffer = new LeaderboardBuffer(dataHolder);
            try {
                Leaderboard leaderboardP3 = leaderboardBuffer.getCount() > 0 ? leaderboardBuffer.get(0).p3() : null;
                leaderboardBuffer.close();
                this.f8171o.c(new AnnotatedData<>(new LeaderboardsClient.LeaderboardScores(leaderboardP3, new LeaderboardScoreBuffer(dataHolder2)), z10));
            } catch (Throwable th) {
                try {
                    leaderboardBuffer.close();
                } catch (Throwable th2) {
                    zzgh.a(th, th2);
                }
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class u extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final TaskCompletionSource<ScoreSubmissionData> f8173o;

        u(TaskCompletionSource<ScoreSubmissionData> taskCompletionSource) {
            this.f8173o = taskCompletionSource;
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void n7(DataHolder dataHolder) {
            int iA4 = dataHolder.a4();
            if (iA4 != 0 && iA4 != 5) {
                zzf.F1(this.f8173o, iA4);
                return;
            }
            try {
                this.f8173o.c(new ScoreSubmissionData(dataHolder));
            } finally {
                dataHolder.close();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    static abstract class u0<T> extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final ListenerHolder<T> f8174o;

        u0(ListenerHolder<T> listenerHolder) {
            this.f8174o = (ListenerHolder) Preconditions.l(listenerHolder, "Callback must not be null");
        }

        final void X0(s<T> sVar) {
            this.f8174o.c(zzf.v0(sVar));
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class v extends r<Snapshots.LoadSnapshotsResult> {
        v(BaseImplementation.ResultHolder<Snapshots.LoadSnapshotsResult> resultHolder) {
            super(resultHolder);
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void U4(DataHolder dataHolder) {
            X0(new i(dataHolder));
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class v0 extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final TaskCompletionSource<AnnotatedData<LeaderboardBuffer>> f8175o;

        v0(TaskCompletionSource<AnnotatedData<LeaderboardBuffer>> taskCompletionSource) {
            this.f8175o = taskCompletionSource;
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void Ca(DataHolder dataHolder) {
            int iA4 = dataHolder.a4();
            boolean z10 = iA4 == 3;
            if (iA4 == 0 || z10) {
                this.f8175o.c(new AnnotatedData<>(new LeaderboardBuffer(dataHolder), z10));
            } else {
                zzf.F1(this.f8175o, iA4);
                dataHolder.close();
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class w extends zza {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final TaskCompletionSource<SnapshotsClient.DataOrConflict<Snapshot>> f8176o;

        w(TaskCompletionSource<SnapshotsClient.DataOrConflict<Snapshot>> taskCompletionSource) {
            this.f8176o = taskCompletionSource;
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void I3(DataHolder dataHolder, Contents contents) {
            int iA4 = dataHolder.a4();
            SnapshotMetadataBuffer snapshotMetadataBuffer = new SnapshotMetadataBuffer(dataHolder);
            try {
                SnapshotEntity snapshotEntity = snapshotMetadataBuffer.getCount() > 0 ? new SnapshotEntity(((SnapshotMetadata) snapshotMetadataBuffer.get(0)).p3(), new SnapshotContentsEntity(contents)) : null;
                snapshotMetadataBuffer.close();
                if (iA4 == 0) {
                    this.f8176o.c(new SnapshotsClient.DataOrConflict<>(snapshotEntity, null));
                } else if (iA4 != 4002 || snapshotEntity == null || snapshotEntity.i1() == null) {
                    zzf.F1(this.f8176o, iA4);
                } else {
                    this.f8176o.b(new SnapshotsClient.SnapshotContentUnavailableApiException(GamesStatusCodes.b(iA4), snapshotEntity.i1()));
                }
            } catch (Throwable th) {
                try {
                    snapshotMetadataBuffer.close();
                } catch (Throwable th2) {
                    zzgh.a(th, th2);
                }
                throw th;
            }
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void U7(DataHolder dataHolder, String str, Contents contents, Contents contents2, Contents contents3) {
            SnapshotMetadataBuffer snapshotMetadataBuffer = new SnapshotMetadataBuffer(dataHolder);
            try {
                if (snapshotMetadataBuffer.getCount() >= 2 && str != null && contents3 != null) {
                    SnapshotEntity snapshotEntity = new SnapshotEntity(((SnapshotMetadata) snapshotMetadataBuffer.get(0)).p3(), new SnapshotContentsEntity(contents));
                    SnapshotEntity snapshotEntity2 = new SnapshotEntity(((SnapshotMetadata) snapshotMetadataBuffer.get(1)).p3(), new SnapshotContentsEntity(contents2));
                    snapshotMetadataBuffer.close();
                    this.f8176o.c(new SnapshotsClient.DataOrConflict<>(null, new SnapshotsClient.SnapshotConflict(snapshotEntity, str, snapshotEntity2, new SnapshotContentsEntity(contents3))));
                    return;
                }
                this.f8176o.c(null);
                snapshotMetadataBuffer.close();
            } catch (Throwable th) {
                try {
                    snapshotMetadataBuffer.close();
                } catch (Throwable th2) {
                    zzgh.a(th, th2);
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    static final class w0 extends m0 implements Achievements.LoadAchievementsResult {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final AchievementBuffer f8177q;

        w0(DataHolder dataHolder) {
            super(dataHolder);
            this.f8177q = new AchievementBuffer(dataHolder);
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class x implements Achievements.UpdateAchievementResult {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final Status f8178o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final String f8179p;

        x(int i10, String str) {
            this.f8178o = GamesStatusCodes.b(i10);
            this.f8179p = str;
        }

        @Override // com.google.android.gms.common.api.Result
        public final Status V2() {
            return this.f8178o;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    static abstract class x0<T> implements ListenerHolder.Notifier<T> {
        private x0() {
        }

        @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
        public void b() {
        }

        /* synthetic */ x0(com.google.android.gms.games.internal.a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    static final class y extends m0 implements Leaderboards.SubmitScoreResult {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final ScoreSubmissionData f8180q;

        y(DataHolder dataHolder) {
            super(dataHolder);
            try {
                this.f8180q = new ScoreSubmissionData(dataHolder);
            } finally {
                dataHolder.close();
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    private static final class z extends r<Achievements.UpdateAchievementResult> {
        z(BaseImplementation.ResultHolder<Achievements.UpdateAchievementResult> resultHolder) {
            super(resultHolder);
        }

        @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
        public final void O5(int i10, String str) {
            X0(new x(i10, str));
        }
    }

    public zzf(Context context, Looper looper, ClientSettings clientSettings, Games.GamesOptions gamesOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 1, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.W = new com.google.android.gms.games.internal.a(this);
        this.f8125b0 = false;
        this.f8127d0 = false;
        this.X = clientSettings.g();
        this.f8124a0 = zzae.b(this, clientSettings.f());
        this.f8126c0 = hashCode();
        this.f8128e0 = gamesOptions;
        if (gamesOptions.f7972v) {
            return;
        }
        if (clientSettings.i() != null || (context instanceof Activity)) {
            y0(clientSettings.i());
        }
    }

    private static <R> void E0(BaseImplementation.ResultHolder<R> resultHolder, SecurityException securityException) {
        if (resultHolder != null) {
            resultHolder.a(GamesClientStatusCodes.b(4));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:101:0x014c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static <R> void F1(com.google.android.gms.tasks.TaskCompletionSource<R> r4, int r5) {
        /*
            Method dump skipped, instruction units count: 656
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.games.internal.zzf.F1(com.google.android.gms.tasks.TaskCompletionSource, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T0(TaskCompletionSource<?> taskCompletionSource) {
        try {
            taskCompletionSource.b(FriendsResolutionRequiredException.c(GamesClientStatusCodes.c(26703, ((zzac) I()).k0())));
        } catch (RemoteException e10) {
            taskCompletionSource.b(e10);
        }
    }

    private static <R> void X0(TaskCompletionSource<R> taskCompletionSource, SecurityException securityException) {
        if (taskCompletionSource != null) {
            taskCompletionSource.b(new ApiException(GamesClientStatusCodes.b(4)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void j1(SecurityException securityException) {
        zzz.b("GamesGmsClientImpl", "Is player signed out?", securityException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> ListenerHolder.Notifier<T> v0(s<T> sVar) {
        return new com.google.android.gms.games.internal.j(sVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void x0(RemoteException remoteException) {
        zzz.d("GamesGmsClientImpl", "service died", remoteException);
    }

    public final void A0(BaseImplementation.ResultHolder<Videos.CaptureAvailableResult> resultHolder, int i10) throws RemoteException {
        try {
            ((zzac) I()).Q7(new com.google.android.gms.games.internal.f(resultHolder), i10);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void A1(BaseImplementation.ResultHolder<Achievements.UpdateAchievementResult> resultHolder, String str, int i10) throws RemoteException {
        try {
            ((zzac) I()).Y3(resultHolder == null ? null : new z(resultHolder), str, i10, this.f8124a0.e(), this.f8124a0.d());
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void B0(BaseImplementation.ResultHolder<Players.LoadPlayersResult> resultHolder, int i10, boolean z10, boolean z11) throws RemoteException {
        try {
            ((zzac) I()).D2(new n(resultHolder), i10, z10, z11);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void B1(BaseImplementation.ResultHolder<Leaderboards.LoadScoresResult> resultHolder, String str, int i10, int i11, int i12, boolean z10) throws RemoteException {
        try {
            ((zzac) I()).U1(new q0(resultHolder), str, i10, i11, i12, z10);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public Bundle C() {
        try {
            Bundle bundleNa = ((zzac) I()).na();
            if (bundleNa != null) {
                bundleNa.setClassLoader(zzf.class.getClassLoader());
                this.f8129f0 = bundleNa;
            }
            return bundleNa;
        } catch (RemoteException e10) {
            x0(e10);
            return null;
        }
    }

    public final void C0(BaseImplementation.ResultHolder<Leaderboards.LoadScoresResult> resultHolder, LeaderboardScoreBuffer leaderboardScoreBuffer, int i10, int i11) throws RemoteException {
        try {
            ((zzac) I()).v1(new q0(resultHolder), leaderboardScoreBuffer.i().a(), i10, i11);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void C1(BaseImplementation.ResultHolder<Leaderboards.LeaderboardMetadataResult> resultHolder, String str, boolean z10) throws RemoteException {
        try {
            ((zzac) I()).T5(new s0(resultHolder), str, z10);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void D0(BaseImplementation.ResultHolder<Snapshots.CommitSnapshotResult> resultHolder, Snapshot snapshot, SnapshotMetadataChange snapshotMetadataChange) throws RemoteException {
        SnapshotContents snapshotContentsM3 = snapshot.M3();
        Preconditions.o(!snapshotContentsM3.isClosed(), "Snapshot already closed");
        BitmapTeleporter bitmapTeleporterV1 = snapshotMetadataChange.V1();
        if (bitmapTeleporterV1 != null) {
            bitmapTeleporterV1.V3(D().getCacheDir());
        }
        Contents contentsY1 = snapshotContentsM3.y1();
        snapshotContentsM3.close();
        try {
            ((zzac) I()).M1(new com.google.android.gms.games.internal.b(resultHolder), snapshot.i1().R3(), (SnapshotMetadataChangeEntity) snapshotMetadataChange, contentsY1);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void D1(BaseImplementation.ResultHolder<Leaderboards.LeaderboardMetadataResult> resultHolder, boolean z10) throws RemoteException {
        try {
            ((zzac) I()).k7(new s0(resultHolder), z10);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void E1(TaskCompletionSource<AnnotatedData<Game>> taskCompletionSource) throws RemoteException {
        try {
            ((zzac) I()).r8(new n0(taskCompletionSource));
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected Bundle F() {
        String string = D().getResources().getConfiguration().locale.toString();
        Bundle bundleC = this.f8128e0.c();
        bundleC.putString("com.google.android.gms.games.key.gamePackageName", this.X);
        bundleC.putString("com.google.android.gms.games.key.desiredLocale", string);
        bundleC.putParcelable("com.google.android.gms.games.key.popupWindowToken", new BinderWrapper(this.f8124a0.e()));
        if (!bundleC.containsKey("com.google.android.gms.games.key.API_VERSION")) {
            bundleC.putInt("com.google.android.gms.games.key.API_VERSION", 8);
        }
        bundleC.putBundle("com.google.android.gms.games.key.signInOptions", SignInClientImpl.r0(o0()));
        return bundleC;
    }

    public final void F0(BaseImplementation.ResultHolder<Achievements.UpdateAchievementResult> resultHolder, String str) throws RemoteException {
        try {
            ((zzac) I()).oa(resultHolder == null ? null : new z(resultHolder), str, this.f8124a0.e(), this.f8124a0.d());
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void G0(BaseImplementation.ResultHolder<Achievements.UpdateAchievementResult> resultHolder, String str, int i10) throws RemoteException {
        try {
            ((zzac) I()).B2(resultHolder == null ? null : new z(resultHolder), str, i10, this.f8124a0.e(), this.f8124a0.d());
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void G1(TaskCompletionSource<Void> taskCompletionSource, String str) throws RemoteException {
        try {
            ((zzac) I()).ea(taskCompletionSource == null ? null : new b0(taskCompletionSource), str, this.f8124a0.e(), this.f8124a0.d());
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    public final void H0(BaseImplementation.ResultHolder<Leaderboards.LoadScoresResult> resultHolder, String str, int i10, int i11, int i12, boolean z10) throws RemoteException {
        try {
            ((zzac) I()).B5(new q0(resultHolder), str, i10, i11, i12, z10);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void H1(TaskCompletionSource<Boolean> taskCompletionSource, String str, int i10) throws RemoteException {
        try {
            ((zzac) I()).Y3(taskCompletionSource == null ? null : new a(taskCompletionSource), str, i10, this.f8124a0.e(), this.f8124a0.d());
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    public final void I0(BaseImplementation.ResultHolder<Players.LoadPlayersResult> resultHolder, String str, int i10, boolean z10, boolean z11) throws RemoteException {
        if (!str.equals("played_with") && !str.equals("friends_all")) {
            throw new IllegalArgumentException(str.length() != 0 ? "Invalid player collection: ".concat(str) : new String("Invalid player collection: "));
        }
        try {
            ((zzac) I()).Q6(new n(resultHolder), str, i10, z10, z11);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void I1(TaskCompletionSource<AnnotatedData<LeaderboardsClient.LeaderboardScores>> taskCompletionSource, String str, int i10, int i11, int i12, boolean z10) throws RemoteException {
        try {
            ((zzac) I()).U1(new t0(taskCompletionSource), str, i10, i11, i12, z10);
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected String J() {
        return "com.google.android.gms.games.internal.IGamesService";
    }

    public final void J0(BaseImplementation.ResultHolder<Leaderboards.SubmitScoreResult> resultHolder, String str, long j10, String str2) throws RemoteException {
        try {
            ((zzac) I()).O3(resultHolder == null ? null : new com.google.android.gms.games.internal.l(resultHolder), str, j10, str2);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void J1(TaskCompletionSource<AnnotatedData<Leaderboard>> taskCompletionSource, String str, boolean z10) throws RemoteException {
        try {
            ((zzac) I()).T5(new p0(taskCompletionSource), str, z10);
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected String K() {
        return "com.google.android.gms.games.service.START";
    }

    public final void K0(BaseImplementation.ResultHolder<Leaderboards.LoadPlayerScoreResult> resultHolder, String str, String str2, int i10, int i11) throws RemoteException {
        try {
            ((zzac) I()).Ga(new com.google.android.gms.games.internal.m(resultHolder), null, str2, i10, i11);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void K1(TaskCompletionSource<AnnotatedData<LeaderboardBuffer>> taskCompletionSource, boolean z10) throws RemoteException {
        try {
            ((zzac) I()).k7(new v0(taskCompletionSource), z10);
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    public final void L0(BaseImplementation.ResultHolder<Snapshots.OpenSnapshotResult> resultHolder, String str, String str2, SnapshotMetadataChange snapshotMetadataChange, SnapshotContents snapshotContents) throws RemoteException {
        Preconditions.o(!snapshotContents.isClosed(), "SnapshotContents already closed");
        BitmapTeleporter bitmapTeleporterV1 = snapshotMetadataChange.V1();
        if (bitmapTeleporterV1 != null) {
            bitmapTeleporterV1.V3(D().getCacheDir());
        }
        Contents contentsY1 = snapshotContents.y1();
        snapshotContents.close();
        try {
            ((zzac) I()).Ja(new t(resultHolder), str, str2, (SnapshotMetadataChangeEntity) snapshotMetadataChange, contentsY1);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void M0(BaseImplementation.ResultHolder<Players.LoadPlayersResult> resultHolder, String str, boolean z10) throws RemoteException {
        try {
            ((zzac) I()).N4(new n(resultHolder), str, z10);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void M1(String str, int i10) {
        this.W.c(str, i10);
    }

    public final void N0(BaseImplementation.ResultHolder<Snapshots.OpenSnapshotResult> resultHolder, String str, boolean z10, int i10) throws RemoteException {
        try {
            ((zzac) I()).j3(new t(resultHolder), str, z10, i10);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void N1() throws RemoteException {
        ((zzac) I()).W(this.f8126c0);
    }

    public final void O0(BaseImplementation.ResultHolder<Players.LoadPlayersResult> resultHolder, boolean z10) throws RemoteException {
        try {
            ((zzac) I()).P5(new n(resultHolder), z10);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    final void O1() {
        if (a()) {
            try {
                ((zzac) I()).m1();
            } catch (RemoteException e10) {
                x0(e10);
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public /* synthetic */ void P(IInterface iInterface) {
        zzac zzacVar = (zzac) iInterface;
        super.P(zzacVar);
        if (this.f8125b0) {
            this.f8124a0.g();
            this.f8125b0 = false;
        }
        Games.GamesOptions gamesOptions = this.f8128e0;
        if (gamesOptions.f7965o || gamesOptions.f7972v) {
            return;
        }
        try {
            zzacVar.S5(new com.google.android.gms.games.internal.k(new zzfi(this.f8124a0.f())), this.f8126c0);
        } catch (RemoteException e10) {
            x0(e10);
        }
    }

    public final void P0(BaseImplementation.ResultHolder<Events.LoadEventsResult> resultHolder, boolean z10, String... strArr) throws RemoteException {
        this.W.a();
        try {
            ((zzac) I()).H6(new i0(resultHolder), z10, strArr);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void P1(BaseImplementation.ResultHolder<Videos.CaptureCapabilitiesResult> resultHolder) throws RemoteException {
        try {
            ((zzac) I()).k9(new com.google.android.gms.games.internal.d(resultHolder));
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public void Q(ConnectionResult connectionResult) {
        super.Q(connectionResult);
        this.f8125b0 = false;
    }

    public final void Q0(ListenerHolder<VideosClient.OnCaptureOverlayStateListener> listenerHolder) throws RemoteException {
        ((zzac) I()).M7(new com.google.android.gms.games.internal.i(listenerHolder), this.f8126c0);
    }

    public final void Q1(BaseImplementation.ResultHolder<Snapshots.DeleteSnapshotResult> resultHolder, String str) throws RemoteException {
        try {
            ((zzac) I()).r6(new com.google.android.gms.games.internal.e(resultHolder), str);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void R1(BaseImplementation.ResultHolder<Achievements.LoadAchievementsResult> resultHolder, boolean z10) throws RemoteException {
        try {
            ((zzac) I()).y8(new com.google.android.gms.games.internal.o(resultHolder), z10);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected void S(int i10, IBinder iBinder, Bundle bundle, int i11) {
        if (i10 == 0 && bundle != null) {
            bundle.setClassLoader(zzf.class.getClassLoader());
            boolean z10 = bundle.getBoolean("show_welcome_popup");
            this.f8125b0 = z10;
            this.f8127d0 = z10;
            this.Y = (PlayerEntity) bundle.getParcelable("com.google.android.gms.games.current_player");
            this.Z = (GameEntity) bundle.getParcelable("com.google.android.gms.games.current_game");
        }
        super.S(i10, iBinder, bundle, i11);
    }

    public final void S0(Snapshot snapshot) throws RemoteException {
        SnapshotContents snapshotContentsM3 = snapshot.M3();
        Preconditions.o(!snapshotContentsM3.isClosed(), "Snapshot already closed");
        Contents contentsY1 = snapshotContentsM3.y1();
        snapshotContentsM3.close();
        ((zzac) I()).b7(contentsY1);
    }

    public final void S1(TaskCompletionSource<VideoCapabilities> taskCompletionSource) throws RemoteException {
        try {
            ((zzac) I()).k9(new m(taskCompletionSource));
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public boolean T() {
        return true;
    }

    public final void U0(TaskCompletionSource<Boolean> taskCompletionSource, int i10) throws RemoteException {
        try {
            ((zzac) I()).Q7(new j(taskCompletionSource), i10);
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    public final void U1(TaskCompletionSource<String> taskCompletionSource, String str) throws RemoteException {
        try {
            ((zzac) I()).r6(new g0(taskCompletionSource), str);
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    public final void V0(TaskCompletionSource<AnnotatedData<LeaderboardsClient.LeaderboardScores>> taskCompletionSource, LeaderboardScoreBuffer leaderboardScoreBuffer, int i10, int i11) throws RemoteException {
        try {
            ((zzac) I()).v1(new t0(taskCompletionSource), leaderboardScoreBuffer.i().a(), i10, i11);
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    public final void V1(TaskCompletionSource<AnnotatedData<AchievementBuffer>> taskCompletionSource, boolean z10) throws RemoteException {
        try {
            ((zzac) I()).y8(new a0(taskCompletionSource), z10);
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    public final void W0(TaskCompletionSource<SnapshotMetadata> taskCompletionSource, Snapshot snapshot, SnapshotMetadataChange snapshotMetadataChange) throws RemoteException {
        SnapshotContents snapshotContentsM3 = snapshot.M3();
        Preconditions.o(!snapshotContentsM3.isClosed(), "Snapshot already closed");
        BitmapTeleporter bitmapTeleporterV1 = snapshotMetadataChange.V1();
        if (bitmapTeleporterV1 != null) {
            bitmapTeleporterV1.V3(D().getCacheDir());
        }
        Contents contentsY1 = snapshotContentsM3.y1();
        snapshotContentsM3.close();
        try {
            ((zzac) I()).M1(new e0(taskCompletionSource), snapshot.i1().R3(), (SnapshotMetadataChangeEntity) snapshotMetadataChange, contentsY1);
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    public final void W1(BaseImplementation.ResultHolder<Videos.CaptureStateResult> resultHolder) throws RemoteException {
        try {
            ((zzac) I()).Ma(new com.google.android.gms.games.internal.g(resultHolder));
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void X1(BaseImplementation.ResultHolder<Events.LoadEventsResult> resultHolder, boolean z10) throws RemoteException {
        this.W.a();
        try {
            ((zzac) I()).J3(new i0(resultHolder), z10);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void Y0(TaskCompletionSource<Void> taskCompletionSource, String str) throws RemoteException {
        try {
            ((zzac) I()).oa(taskCompletionSource == null ? null : new b0(taskCompletionSource), str, this.f8124a0.e(), this.f8124a0.d());
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    public final void Y1(TaskCompletionSource<CaptureState> taskCompletionSource) throws RemoteException {
        try {
            ((zzac) I()).Ma(new h(taskCompletionSource));
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    public final void Z0(TaskCompletionSource<Boolean> taskCompletionSource, String str, int i10) throws RemoteException {
        try {
            ((zzac) I()).B2(taskCompletionSource == null ? null : new a(taskCompletionSource), str, i10, this.f8124a0.e(), this.f8124a0.d());
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    public final void Z1(TaskCompletionSource<AnnotatedData<EventBuffer>> taskCompletionSource, boolean z10) throws RemoteException {
        this.W.a();
        try {
            ((zzac) I()).J3(new l0(taskCompletionSource), z10);
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    public final void a1(TaskCompletionSource<AnnotatedData<LeaderboardScore>> taskCompletionSource, String str, int i10, int i11) throws RemoteException {
        try {
            ((zzac) I()).Ga(new r0(taskCompletionSource), null, str, i10, i11);
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    public final void a2(BaseImplementation.ResultHolder<Stats.LoadPlayerStatsResult> resultHolder, boolean z10) throws RemoteException {
        try {
            ((zzac) I()).o2(new com.google.android.gms.games.internal.c(resultHolder), z10);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void b1(TaskCompletionSource<AnnotatedData<LeaderboardsClient.LeaderboardScores>> taskCompletionSource, String str, int i10, int i11, int i12, boolean z10) throws RemoteException {
        try {
            ((zzac) I()).B5(new t0(taskCompletionSource), str, i10, i11, i12, z10);
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    public final void b2(TaskCompletionSource<AnnotatedData<PlayerStats>> taskCompletionSource, boolean z10) throws RemoteException {
        try {
            ((zzac) I()).o2(new o(taskCompletionSource), z10);
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    @Override // com.google.android.gms.common.internal.GmsClient, com.google.android.gms.common.api.Api.Client
    public Set<Scope> c() {
        return H();
    }

    public final void c1(TaskCompletionSource<AnnotatedData<PlayerBuffer>> taskCompletionSource, String str, int i10, boolean z10, boolean z11) throws RemoteException {
        if (!str.equals("played_with") && !str.equals("friends_all")) {
            throw new IllegalArgumentException(str.length() != 0 ? "Invalid player collection: ".concat(str) : new String("Invalid player collection: "));
        }
        try {
            ((zzac) I()).Q6(new q(taskCompletionSource), str, i10, z10, z11);
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    public final void c2(BaseImplementation.ResultHolder<Snapshots.LoadSnapshotsResult> resultHolder, boolean z10) throws RemoteException {
        try {
            ((zzac) I()).G4(new v(resultHolder), z10);
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void d1(TaskCompletionSource<ScoreSubmissionData> taskCompletionSource, String str, long j10, String str2) throws RemoteException {
        try {
            ((zzac) I()).O3(new u(taskCompletionSource), str, j10, str2);
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    public final void d2(TaskCompletionSource<AnnotatedData<SnapshotMetadataBuffer>> taskCompletionSource, boolean z10) throws RemoteException {
        try {
            ((zzac) I()).G4(new k(taskCompletionSource), z10);
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    public final void e1(TaskCompletionSource<SnapshotsClient.DataOrConflict<Snapshot>> taskCompletionSource, String str, String str2, SnapshotMetadataChange snapshotMetadataChange, SnapshotContents snapshotContents) throws RemoteException {
        Preconditions.o(!snapshotContents.isClosed(), "SnapshotContents already closed");
        BitmapTeleporter bitmapTeleporterV1 = snapshotMetadataChange.V1();
        if (bitmapTeleporterV1 != null) {
            bitmapTeleporterV1.V3(D().getCacheDir());
        }
        Contents contentsY1 = snapshotContents.y1();
        snapshotContents.close();
        try {
            ((zzac) I()).Ja(new w(taskCompletionSource), str, str2, (SnapshotMetadataChangeEntity) snapshotMetadataChange, contentsY1);
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    public final void e2(int i10) {
        this.f8124a0.a(i10);
    }

    public final void f1(TaskCompletionSource<AnnotatedData<Player>> taskCompletionSource, String str, boolean z10) throws RemoteException {
        try {
            ((zzac) I()).N4(new p(taskCompletionSource), str, z10);
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    public final void g1(TaskCompletionSource<SnapshotsClient.DataOrConflict<Snapshot>> taskCompletionSource, String str, boolean z10, int i10) throws RemoteException {
        try {
            ((zzac) I()).j3(new w(taskCompletionSource), str, z10, i10);
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public void h(BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        this.Y = null;
        this.Z = null;
        super.h(connectionProgressReportCallbacks);
    }

    public final void h1(TaskCompletionSource<AnnotatedData<Player>> taskCompletionSource, boolean z10) throws RemoteException {
        try {
            ((zzac) I()).N4(new p(taskCompletionSource), null, z10);
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public void i() {
        this.f8125b0 = false;
        if (a()) {
            try {
                this.W.a();
                ((zzac) I()).f1(this.f8126c0);
            } catch (RemoteException unused) {
                zzz.c("GamesGmsClientImpl", "Failed to notify client disconnect.");
            }
        }
        super.i();
    }

    public final void i1(TaskCompletionSource<AnnotatedData<EventBuffer>> taskCompletionSource, boolean z10, String... strArr) throws RemoteException {
        this.W.a();
        try {
            ((zzac) I()).H6(new l0(taskCompletionSource), z10, strArr);
        } catch (SecurityException e10) {
            X0(taskCompletionSource, e10);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public void j(BaseGmsClient.SignOutCallbacks signOutCallbacks) {
        try {
            y1(new com.google.android.gms.games.internal.q(signOutCallbacks));
        } catch (RemoteException unused) {
            signOutCallbacks.r1();
        }
    }

    public final Bundle k1() {
        Bundle bundleC = C();
        if (bundleC == null) {
            bundleC = this.f8129f0;
        }
        this.f8129f0 = null;
        return bundleC;
    }

    public final String l1() throws RemoteException {
        return ((zzac) I()).y9();
    }

    public final Player m1() throws RemoteException {
        w();
        synchronized (this) {
            if (this.Y == null) {
                PlayerBuffer playerBuffer = new PlayerBuffer(((zzac) I()).m8());
                try {
                    if (playerBuffer.getCount() > 0) {
                        this.Y = (PlayerEntity) ((Player) playerBuffer.get(0)).p3();
                    }
                    playerBuffer.c();
                } catch (Throwable th) {
                    playerBuffer.c();
                    throw th;
                }
            }
        }
        return this.Y;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public int n() {
        return 12451000;
    }

    public final Game n1() throws RemoteException {
        w();
        synchronized (this) {
            if (this.Z == null) {
                GameBuffer gameBuffer = new GameBuffer(((zzac) I()).V4());
                try {
                    if (gameBuffer.getCount() > 0) {
                        this.Z = (GameEntity) ((Game) gameBuffer.get(0)).p3();
                    }
                    gameBuffer.c();
                } catch (Throwable th) {
                    gameBuffer.c();
                    throw th;
                }
            }
        }
        return this.Z;
    }

    public final Intent o1() throws RemoteException {
        return ((zzac) I()).A5();
    }

    public final Intent p1() {
        try {
            return ((zzac) I()).k3();
        } catch (RemoteException e10) {
            x0(e10);
            return null;
        }
    }

    public final Intent q1() throws RemoteException {
        return ((zzac) I()).X8();
    }

    public final void r0(String str, long j10, String str2) throws RemoteException {
        try {
            ((zzac) I()).O3(null, str, j10, str2);
        } catch (SecurityException unused) {
        }
    }

    public final int r1() throws RemoteException {
        return ((zzac) I()).a7();
    }

    public final Intent s0(PlayerEntity playerEntity) throws RemoteException {
        return ((zzac) I()).L2(playerEntity);
    }

    public final int s1() throws RemoteException {
        return ((zzac) I()).N0();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public boolean t() {
        Games.GamesOptions gamesOptions = this.f8128e0;
        return (gamesOptions.B == 1 || gamesOptions.f7975y != null || gamesOptions.f7972v) ? false : true;
    }

    public final Intent t0(String str, int i10, int i11) {
        try {
            return ((zzac) I()).w4(str, i10, i11);
        } catch (RemoteException e10) {
            x0(e10);
            return null;
        }
    }

    public final Intent t1() throws RemoteException {
        return ((zzac) I()).o0();
    }

    public final Intent u0(String str, boolean z10, boolean z11, int i10) throws RemoteException {
        return ((zzac) I()).j5(str, z10, z11, i10);
    }

    public final boolean u1() throws RemoteException {
        return ((zzac) I()).U();
    }

    final void w0(IBinder iBinder, Bundle bundle) {
        if (a()) {
            try {
                ((zzac) I()).q8(iBinder, bundle);
            } catch (RemoteException e10) {
                x0(e10);
            }
        }
    }

    public final String w1(boolean z10) throws RemoteException {
        PlayerEntity playerEntity = this.Y;
        return playerEntity != null ? playerEntity.J3() : ((zzac) I()).d1();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected /* synthetic */ IInterface x(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.games.internal.IGamesService");
        return iInterfaceQueryLocalInterface instanceof zzac ? (zzac) iInterfaceQueryLocalInterface : new zzaf(iBinder);
    }

    public final void y0(View view) {
        this.f8124a0.c(view);
    }

    public final void y1(BaseImplementation.ResultHolder<Status> resultHolder) throws RemoteException {
        this.W.a();
        try {
            ((zzac) I()).y7(new com.google.android.gms.games.internal.p(resultHolder));
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void z0(BaseImplementation.ResultHolder<GamesMetadata.LoadGamesResult> resultHolder) throws RemoteException {
        try {
            ((zzac) I()).r8(new com.google.android.gms.games.internal.n(resultHolder));
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }

    public final void z1(BaseImplementation.ResultHolder<Achievements.UpdateAchievementResult> resultHolder, String str) throws RemoteException {
        try {
            ((zzac) I()).ea(resultHolder == null ? null : new z(resultHolder), str, this.f8124a0.e(), this.f8124a0.d());
        } catch (SecurityException e10) {
            E0(resultHolder, e10);
        }
    }
}
