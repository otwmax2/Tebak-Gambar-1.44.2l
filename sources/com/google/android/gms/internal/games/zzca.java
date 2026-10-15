package com.google.android.gms.internal.games;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzca extends zzcg {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ LeaderboardScoreBuffer f23089t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final /* synthetic */ int f23090u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final /* synthetic */ int f23091v;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        ((com.google.android.gms.games.internal.zzf) anyClient).C0(this, this.f23089t, this.f23090u, this.f23091v);
    }
}
