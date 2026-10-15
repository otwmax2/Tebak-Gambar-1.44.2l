package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.internal.zzf;
import com.google.android.gms.games.leaderboard.Leaderboards;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class m extends zzf.r<Leaderboards.LoadPlayerScoreResult> {
    m(BaseImplementation.ResultHolder resultHolder) {
        super(resultHolder);
    }

    @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
    public final void Z8(DataHolder dataHolder) {
        X0(new zzf.e(dataHolder));
    }
}
