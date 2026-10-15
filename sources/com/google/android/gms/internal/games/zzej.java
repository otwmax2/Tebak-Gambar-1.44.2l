package com.google.android.gms.internal.games;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.stats.Stats;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzej implements Stats.LoadPlayerStatsResult {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final /* synthetic */ Status f23167o;

    zzej(zzeg zzegVar, Status status) {
        this.f23167o = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status V2() {
        return this.f23167o;
    }

    @Override // com.google.android.gms.common.api.Releasable
    public final void c() {
    }
}
