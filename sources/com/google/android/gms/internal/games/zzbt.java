package com.google.android.gms.internal.games;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzbt implements RemoteCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LeaderboardScoreBuffer f23072a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f23073b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f23074c;

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void a(Object obj, Object obj2) throws RemoteException {
        ((com.google.android.gms.games.internal.zzf) obj).V0((TaskCompletionSource) obj2, this.f23072a, this.f23073b, this.f23074c);
    }
}
