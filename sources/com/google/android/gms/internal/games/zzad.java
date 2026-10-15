package com.google.android.gms.internal.games;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.achievement.Achievements;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzad implements Achievements.UpdateAchievementResult {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final /* synthetic */ Status f23019o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final /* synthetic */ zzaa f23020p;

    zzad(zzaa zzaaVar, Status status) {
        this.f23020p = zzaaVar;
        this.f23019o = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status V2() {
        return this.f23019o;
    }
}
