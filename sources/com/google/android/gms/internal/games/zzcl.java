package com.google.android.gms.internal.games;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.leaderboard.Leaderboards;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcl implements Leaderboards.SubmitScoreResult {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final /* synthetic */ Status f23103o;

    zzcl(zzci zzciVar, Status status) {
        this.f23103o = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status V2() {
        return this.f23103o;
    }

    @Override // com.google.android.gms.common.api.Releasable
    public final void c() {
    }
}
