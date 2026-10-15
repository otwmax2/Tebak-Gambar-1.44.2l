package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
public interface LeaderboardVariant extends Freezable<LeaderboardVariant> {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface Collection {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface TimeSpan {
    }

    int G3();

    long J2();

    String N3();

    String R2();

    long S1();

    int U2();

    String U3();

    String Z();

    boolean g0();

    long g3();

    String i3();

    String u2();
}
