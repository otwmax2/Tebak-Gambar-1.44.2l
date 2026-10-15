package com.google.android.gms.games;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.games.internal.player.StockProfileImage;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
@Deprecated
public interface Players {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    @Deprecated
    public interface LoadPlayersResult extends Releasable, Result {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    @ShowFirstParty
    public interface zza extends Result {
        int A();

        boolean C();

        int C3();

        boolean E();

        boolean N();

        int Q();

        String i();

        boolean k();

        boolean t();

        StockProfileImage v();

        boolean x();

        boolean y();
    }
}
