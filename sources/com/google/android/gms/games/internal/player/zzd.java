package com.google.android.gms.games.internal.player;

import android.text.TextUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzd {
    public final String A;
    public final String B;
    public final String C;
    public final String D;
    public final String E;
    public final String F;

    @Deprecated
    private final String G;

    @Deprecated
    private final String H;

    @Deprecated
    private final String I;
    public final String J;
    public final String K;
    public final String L;
    public final String M;
    private final String N;
    public final String O;
    public final String P;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f8087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f8088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f8089c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f8090d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f8091e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f8092f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f8093g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f8094h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f8095i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f8096j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f8097k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f8098l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f8099m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f8100n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f8101o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f8102p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String f8103q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final String f8104r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final String f8105s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final String f8106t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final String f8107u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final String f8108v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final String f8109w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final String f8110x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final String f8111y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final String f8112z;

    public zzd(String str) {
        String strConcat;
        if (TextUtils.isEmpty(null)) {
            this.f8087a = "external_player_id";
            this.f8088b = "profile_name";
            this.f8089c = "profile_icon_image_uri";
            this.f8090d = "profile_icon_image_url";
            this.f8091e = "profile_hi_res_image_uri";
            this.f8092f = "profile_hi_res_image_url";
            this.f8093g = "last_updated";
            this.f8094h = "is_in_circles";
            this.f8095i = "played_with_timestamp";
            this.f8096j = "current_xp_total";
            this.f8097k = "current_level";
            this.f8098l = "current_level_min_xp";
            this.f8099m = "current_level_max_xp";
            this.f8100n = "next_level";
            this.f8101o = "next_level_max_xp";
            this.f8102p = "last_level_up_timestamp";
            this.f8103q = "player_title";
            this.f8104r = "has_all_public_acls";
            this.f8105s = "is_profile_visible";
            this.f8106t = "most_recent_external_game_id";
            this.f8107u = "most_recent_game_name";
            this.f8108v = "most_recent_activity_timestamp";
            this.f8109w = "most_recent_game_icon_uri";
            this.f8110x = "most_recent_game_hi_res_uri";
            this.f8111y = "most_recent_game_featured_uri";
            this.f8112z = "has_debug_access";
            this.A = "gamer_tag";
            this.B = "real_name";
            this.C = "banner_image_landscape_uri";
            this.D = "banner_image_landscape_url";
            this.E = "banner_image_portrait_uri";
            this.F = "banner_image_portrait_url";
            this.G = "gamer_friend_status";
            this.H = "gamer_friend_update_timestamp";
            this.I = "is_muted";
            this.J = "total_unlocked_achievements";
            this.K = com.google.android.gms.games.internal.zzd.f8118a;
            this.L = com.google.android.gms.games.internal.zzd.f8119b;
            this.M = com.google.android.gms.games.internal.zzd.f8120c;
            this.N = "profile_creation_timestamp";
            this.O = com.google.android.gms.games.internal.zzd.f8121d;
            strConcat = "friends_list_visibility";
        } else {
            this.f8087a = "external_player_id".length() != 0 ? "null".concat("external_player_id") : new String("null");
            this.f8088b = "profile_name".length() != 0 ? "null".concat("profile_name") : new String("null");
            this.f8089c = "profile_icon_image_uri".length() != 0 ? "null".concat("profile_icon_image_uri") : new String("null");
            this.f8090d = "profile_icon_image_url".length() != 0 ? "null".concat("profile_icon_image_url") : new String("null");
            this.f8091e = "profile_hi_res_image_uri".length() != 0 ? "null".concat("profile_hi_res_image_uri") : new String("null");
            this.f8092f = "profile_hi_res_image_url".length() != 0 ? "null".concat("profile_hi_res_image_url") : new String("null");
            this.f8093g = "last_updated".length() != 0 ? "null".concat("last_updated") : new String("null");
            this.f8094h = "is_in_circles".length() != 0 ? "null".concat("is_in_circles") : new String("null");
            this.f8095i = "played_with_timestamp".length() != 0 ? "null".concat("played_with_timestamp") : new String("null");
            this.f8096j = "current_xp_total".length() != 0 ? "null".concat("current_xp_total") : new String("null");
            this.f8097k = "current_level".length() != 0 ? "null".concat("current_level") : new String("null");
            this.f8098l = "current_level_min_xp".length() != 0 ? "null".concat("current_level_min_xp") : new String("null");
            this.f8099m = "current_level_max_xp".length() != 0 ? "null".concat("current_level_max_xp") : new String("null");
            this.f8100n = "next_level".length() != 0 ? "null".concat("next_level") : new String("null");
            this.f8101o = "next_level_max_xp".length() != 0 ? "null".concat("next_level_max_xp") : new String("null");
            this.f8102p = "last_level_up_timestamp".length() != 0 ? "null".concat("last_level_up_timestamp") : new String("null");
            this.f8103q = "player_title".length() != 0 ? "null".concat("player_title") : new String("null");
            this.f8104r = "has_all_public_acls".length() != 0 ? "null".concat("has_all_public_acls") : new String("null");
            this.f8105s = "is_profile_visible".length() != 0 ? "null".concat("is_profile_visible") : new String("null");
            this.f8106t = "most_recent_external_game_id".length() != 0 ? "null".concat("most_recent_external_game_id") : new String("null");
            this.f8107u = "most_recent_game_name".length() != 0 ? "null".concat("most_recent_game_name") : new String("null");
            this.f8108v = "most_recent_activity_timestamp".length() != 0 ? "null".concat("most_recent_activity_timestamp") : new String("null");
            this.f8109w = "most_recent_game_icon_uri".length() != 0 ? "null".concat("most_recent_game_icon_uri") : new String("null");
            this.f8110x = "most_recent_game_hi_res_uri".length() != 0 ? "null".concat("most_recent_game_hi_res_uri") : new String("null");
            this.f8111y = "most_recent_game_featured_uri".length() != 0 ? "null".concat("most_recent_game_featured_uri") : new String("null");
            this.f8112z = "has_debug_access".length() != 0 ? "null".concat("has_debug_access") : new String("null");
            this.A = "gamer_tag".length() != 0 ? "null".concat("gamer_tag") : new String("null");
            this.B = "real_name".length() != 0 ? "null".concat("real_name") : new String("null");
            this.C = "banner_image_landscape_uri".length() != 0 ? "null".concat("banner_image_landscape_uri") : new String("null");
            this.D = "banner_image_landscape_url".length() != 0 ? "null".concat("banner_image_landscape_url") : new String("null");
            this.E = "banner_image_portrait_uri".length() != 0 ? "null".concat("banner_image_portrait_uri") : new String("null");
            this.F = "banner_image_portrait_url".length() != 0 ? "null".concat("banner_image_portrait_url") : new String("null");
            this.G = "gamer_friend_status".length() != 0 ? "null".concat("gamer_friend_status") : new String("null");
            this.H = "gamer_friend_update_timestamp".length() != 0 ? "null".concat("gamer_friend_update_timestamp") : new String("null");
            this.I = "is_muted".length() != 0 ? "null".concat("is_muted") : new String("null");
            this.J = "total_unlocked_achievements".length() != 0 ? "null".concat("total_unlocked_achievements") : new String("null");
            String strValueOf = String.valueOf(com.google.android.gms.games.internal.zzd.f8118a);
            this.K = strValueOf.length() != 0 ? "null".concat(strValueOf) : new String("null");
            String strValueOf2 = String.valueOf(com.google.android.gms.games.internal.zzd.f8119b);
            this.L = strValueOf2.length() != 0 ? "null".concat(strValueOf2) : new String("null");
            String strValueOf3 = String.valueOf(com.google.android.gms.games.internal.zzd.f8120c);
            this.M = strValueOf3.length() != 0 ? "null".concat(strValueOf3) : new String("null");
            this.N = "profile_creation_timestamp".length() != 0 ? "null".concat("profile_creation_timestamp") : new String("null");
            String strValueOf4 = String.valueOf(com.google.android.gms.games.internal.zzd.f8121d);
            this.O = strValueOf4.length() != 0 ? "null".concat(strValueOf4) : new String("null");
            strConcat = "friends_list_visibility".length() != 0 ? "null".concat("friends_list_visibility") : new String("null");
        }
        this.P = strConcat;
    }
}
