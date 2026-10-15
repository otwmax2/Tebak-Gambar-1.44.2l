package com.google.android.gms.internal.games;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzao extends Games.zzb<Result> {
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public Result f(Status status) {
        return new zzar(this, status);
    }
}
