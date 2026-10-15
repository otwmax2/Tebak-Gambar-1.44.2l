package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataBufferRef;
import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class GameRef extends DataBufferRef implements Game {
    public GameRef(DataHolder dataHolder, int i10) {
        super(dataHolder, i10);
    }

    @Override // com.google.android.gms.games.Game
    public final boolean C0() {
        return h("muted");
    }

    @Override // com.google.android.gms.games.Game
    public final String I0() {
        return x("primary_category");
    }

    @Override // com.google.android.gms.games.Game
    public final String J1() {
        return x("theme_color");
    }

    @Override // com.google.android.gms.games.Game
    public final Uri O() {
        return A("game_hi_res_image_uri");
    }

    @Override // com.google.android.gms.games.Game
    public final Uri Q3() {
        return A("featured_image_uri");
    }

    @Override // com.google.android.gms.games.Game
    public final boolean U1() {
        return v("snapshots_enabled") > 0;
    }

    @Override // com.google.android.gms.games.Game
    public final boolean a() {
        return h("play_enabled_game");
    }

    @Override // com.google.android.gms.games.Game
    public final String a1() {
        return x("developer_name");
    }

    @Override // com.google.android.gms.games.Game
    public final boolean b() {
        return v("installed") > 0;
    }

    @Override // com.google.android.gms.games.Game
    public final String c() {
        return x("package_name");
    }

    @Override // com.google.android.gms.games.Game
    public final boolean d() {
        return h("identity_sharing_confirmed");
    }

    @Override // com.google.android.gms.games.Game
    public final int d1() {
        return v("leaderboard_count");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.games.Game
    public final boolean e() {
        return v("real_time_support") > 0;
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final boolean equals(Object obj) {
        return GameEntity.b4(this, obj);
    }

    @Override // com.google.android.gms.games.Game
    public final boolean f() {
        return v("turn_based_support") > 0;
    }

    @Override // com.google.android.gms.games.Game
    public final Uri g() {
        return A("game_icon_image_uri");
    }

    @Override // com.google.android.gms.games.Game
    public final String getApplicationId() {
        return x("external_game_id");
    }

    @Override // com.google.android.gms.games.Game
    public final String getDescription() {
        return x("game_description");
    }

    @Override // com.google.android.gms.games.Game
    public final String getFeaturedImageUrl() {
        return x("featured_image_url");
    }

    @Override // com.google.android.gms.games.Game
    public final String getHiResImageUrl() {
        return x("game_hi_res_image_url");
    }

    @Override // com.google.android.gms.games.Game
    public final String getIconImageUrl() {
        return x("game_icon_image_url");
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final int hashCode() {
        return GameEntity.a4(this);
    }

    @Override // com.google.android.gms.games.Game
    public final int m2() {
        return v("achievement_total_count");
    }

    @Override // com.google.android.gms.games.Game
    public final String n2() {
        return x("secondary_category");
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* synthetic */ Game p3() {
        return new GameEntity(this);
    }

    @Override // com.google.android.gms.games.Game
    public final String s() {
        return x("display_name");
    }

    @Override // com.google.android.gms.games.Game
    public final boolean t3() {
        return v("gamepad_support") > 0;
    }

    public final String toString() {
        return GameEntity.e4(this);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        ((GameEntity) ((Game) p3())).writeToParcel(parcel, i10);
    }
}
