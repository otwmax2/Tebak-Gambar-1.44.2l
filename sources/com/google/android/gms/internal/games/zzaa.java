package com.google.android.gms.internal.games;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.achievement.Achievements;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzaa extends Games.zzb<Achievements.UpdateAchievementResult> {
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public /* synthetic */ Result f(Status status) {
        return new zzad(this, status);
    }
}
