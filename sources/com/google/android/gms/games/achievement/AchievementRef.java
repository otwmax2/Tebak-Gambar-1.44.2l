package com.google.android.gms.games.achievement;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataBufferRef;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class AchievementRef extends DataBufferRef implements Achievement {
    AchievementRef(DataHolder dataHolder, int i10) {
        super(dataHolder, i10);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final String D0() {
        Asserts.b(o() == 1);
        return x("formatted_current_steps");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final float P() {
        if (!y("rarity_percent") || z("rarity_percent")) {
            return -1.0f;
        }
        return t("rarity_percent");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final Player R() {
        if (z("external_player_id")) {
            return null;
        }
        return new PlayerRef(this.f7310o, this.f7311p);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final long W2() {
        return w("last_updated_timestamp");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final Uri Y() {
        return A("unlocked_icon_image_uri");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final String Y1() {
        return x("external_achievement_id");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final boolean equals(Object obj) {
        return AchievementEntity.W3(this, obj);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final String f0() {
        Asserts.b(o() == 1);
        return x("formatted_total_steps");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final Uri g2() {
        return A("revealed_icon_image_uri");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final String getApplicationId() {
        return x("external_game_id");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final String getDescription() {
        return x("description");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final String getName() {
        return x("name");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final String getRevealedImageUrl() {
        return x("revealed_icon_image_url");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final int getState() {
        return v("state");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final String getUnlockedImageUrl() {
        return x("unlocked_icon_image_url");
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final int hashCode() {
        return AchievementEntity.V3(this);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final int j3() {
        Asserts.b(o() == 1);
        return v("total_steps");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final int o() {
        return v("type");
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* synthetic */ Achievement p3() {
        return new AchievementEntity(this);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final int r2() {
        Asserts.b(o() == 1);
        return v("current_steps");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final long t1() {
        return (!y("instance_xp_value") || z("instance_xp_value")) ? w("definition_xp_value") : w("instance_xp_value");
    }

    public final String toString() {
        return AchievementEntity.X3(this);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        ((AchievementEntity) ((Achievement) p3())).writeToParcel(parcel, i10);
    }
}
