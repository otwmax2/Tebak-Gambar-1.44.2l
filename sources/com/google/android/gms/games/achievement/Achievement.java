package com.google.android.gms.games.achievement;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.games.Player;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
public interface Achievement extends Parcelable, Freezable<Achievement> {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface AchievementState {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface AchievementType {
    }

    String D0();

    float P();

    Player R();

    long W2();

    Uri Y();

    String Y1();

    String f0();

    Uri g2();

    String getApplicationId();

    String getDescription();

    String getName();

    @KeepName
    @Deprecated
    String getRevealedImageUrl();

    int getState();

    @KeepName
    @Deprecated
    String getUnlockedImageUrl();

    int j3();

    int o();

    int r2();

    long t1();
}
