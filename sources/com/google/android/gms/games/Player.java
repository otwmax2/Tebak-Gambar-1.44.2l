package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
public interface Player extends Parcelable, Freezable<Player> {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface FriendsListVisibilityStatus {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface PlayerFriendStatus {
    }

    PlayerLevelInfo F1();

    PlayerRelationshipInfo H2();

    long J0();

    String J3();

    Uri N0();

    Uri O();

    Uri a0();

    CurrentPlayerInfo b1();

    Uri g();

    @KeepName
    @Deprecated
    String getBannerImageLandscapeUrl();

    @KeepName
    @Deprecated
    String getBannerImagePortraitUrl();

    @KeepName
    @Deprecated
    String getHiResImageUrl();

    @KeepName
    @Deprecated
    String getIconImageUrl();

    String getName();

    String getTitle();

    String i();

    boolean j();

    boolean k();

    @Deprecated
    int l();

    com.google.android.gms.games.internal.player.zza m();

    long n();

    String s();

    @Deprecated
    long v1();
}
