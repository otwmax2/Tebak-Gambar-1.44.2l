package com.google.android.gms.internal.games;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.achievement.Achievements;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzab implements Achievements.LoadAchievementsResult {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final /* synthetic */ Status f23018o;

    zzab(zzy zzyVar, Status status) {
        this.f23018o = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status V2() {
        return this.f23018o;
    }

    @Override // com.google.android.gms.common.api.Releasable
    public final void c() {
    }
}
