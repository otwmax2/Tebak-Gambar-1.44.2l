package com.google.android.gms.games.internal;

import com.google.android.gms.internal.games.zzfx;
import com.google.android.gms.internal.games.zzfy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f8118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f8119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f8120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f8121d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String[] f8122e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String[] f8123f;

    static {
        char[] cArr = {175, 171, 160, 184, 158, 179, 174, 166, 164, 179, 167, 164, 177, 158, 165, 177, 168, 164, 173, 163, 158, 178, 179, 160, 179, 180, 178};
        for (int i10 = 0; i10 < 27; i10++) {
            cArr[i10] = (char) (cArr[i10] - '?');
        }
        f8118a = new String(cArr);
        char[] cArr2 = {175, 171, 160, 184, 158, 179, 174, 166, 164, 179, 167, 164, 177, 158, 173, 168, 162, 170, 173, 160, 172, 164};
        for (int i11 = 0; i11 < 22; i11++) {
            cArr2[i11] = (char) (cArr2[i11] - '?');
        }
        f8119b = new String(cArr2);
        char[] cArr3 = {175, 171, 160, 184, 158, 179, 174, 166, 164, 179, 167, 164, 177, 158, 168, 173, 181, 168, 179, 160, 179, 168, 174, 173, 158, 173, 168, 162, 170, 173, 160, 172, 164};
        for (int i12 = 0; i12 < 33; i12++) {
            cArr3[i12] = (char) (cArr3[i12] - '?');
        }
        f8120c = new String(cArr3);
        char[] cArr4 = {173, 168, 162, 170, 173, 160, 172, 164, 158, 160, 161, 180, 178, 164, 158, 177, 164, 175, 174, 177, 179, 158, 179, 174, 170, 164, 173};
        for (int i13 = 0; i13 < 27; i13++) {
            cArr4[i13] = (char) (cArr4[i13] - '?');
        }
        String str = new String(cArr4);
        f8121d = str;
        zzfy zzfyVarO = zzfy.o("external_player_id", "profile_icon_image_id", "profile_hi_res_image_id", "profile_icon_image_uri", "profile_icon_image_url", "profile_hi_res_image_uri", "profile_hi_res_image_url", "profile_name", "last_updated", "is_in_circles", "has_all_public_acls", "has_debug_access", "is_profile_visible", "current_xp_total", "current_level", "current_level_min_xp", "current_level_max_xp", "next_level", "next_level_max_xp", "last_level_up_timestamp", "player_title", "most_recent_external_game_id", "most_recent_game_name", "most_recent_activity_timestamp", "most_recent_game_icon_id", "most_recent_game_icon_uri", "most_recent_game_hi_res_id", "most_recent_game_hi_res_uri", "most_recent_game_featured_id", "most_recent_game_featured_uri", "gamer_tag", "real_name", "banner_image_landscape_id", "banner_image_landscape_uri", "banner_image_landscape_url", "banner_image_portrait_id", "banner_image_portrait_uri", "banner_image_portrait_url", "total_unlocked_achievements", f8118a, f8119b, f8120c, "profile_creation_timestamp", str, "friends_list_visibility");
        zzfy zzfyVarN = zzfy.n("gamer_friend_status", "gamer_friend_update_timestamp", "is_muted");
        f8122e = (String[]) zzfyVarO.toArray(new String[0]);
        f8123f = (String[]) ((zzfx) ((zzfx) new zzfx().a(zzfyVarN)).a(zzfyVarO)).e().toArray(new String[0]);
    }
}
