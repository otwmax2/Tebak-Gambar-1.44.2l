package com.facebook.gamingservices.internal;

import android.net.Uri;
import android.os.Bundle;
import com.facebook.FacebookSdk;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import t9.m;

/* JADX INFO: compiled from: TournamentJoinDialogURIBuilder.kt */
/* JADX INFO: loaded from: classes.dex */
public final class TournamentJoinDialogURIBuilder {
    public static final TournamentJoinDialogURIBuilder INSTANCE = new TournamentJoinDialogURIBuilder();

    private TournamentJoinDialogURIBuilder() {
    }

    private final Uri.Builder baseUriBuilder() {
        Uri.Builder builderScheme = new Uri.Builder().scheme(TournamentShareDialogURIBuilder.scheme);
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        Uri.Builder builderAppendPath = builderScheme.authority(FacebookSdk.getFacebookGamingDomain()).appendPath("dialog").appendPath("join_tournament");
        m.d(builderAppendPath, "Builder()\n                .scheme(\"https\")\n                .authority(FacebookSdk.getFacebookGamingDomain())\n                .appendPath(\"dialog\")\n                .appendPath(\"join_tournament\")");
        return builderAppendPath;
    }

    public static /* synthetic */ Bundle bundle$facebook_gamingservices_release$default(TournamentJoinDialogURIBuilder tournamentJoinDialogURIBuilder, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        if ((i10 & 4) != 0) {
            str3 = null;
        }
        return tournamentJoinDialogURIBuilder.bundle$facebook_gamingservices_release(str, str2, str3);
    }

    public static /* synthetic */ Uri uri$facebook_gamingservices_release$default(TournamentJoinDialogURIBuilder tournamentJoinDialogURIBuilder, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        return tournamentJoinDialogURIBuilder.uri$facebook_gamingservices_release(str, str2);
    }

    public final Bundle bundle$facebook_gamingservices_release(String str, String str2, String str3) {
        m.e(str, SDKConstants.PARAM_APP_ID);
        Bundle bundle = new Bundle();
        bundle.putString(SDKConstants.PARAM_TOURNAMENTS_DEEPLINK, SDKConstants.PARAM_TOURNAMENTS);
        bundle.putString("app_id", str);
        if (str2 != null) {
            bundle.putString(SDKConstants.PARAM_TOURNAMENTS_ID, str2);
        }
        if (str3 != null) {
            bundle.putString("payload", str3);
        }
        return bundle;
    }

    public final Uri uri$facebook_gamingservices_release(String str, String str2) {
        Uri.Builder builderBaseUriBuilder = baseUriBuilder();
        if (str != null) {
            builderBaseUriBuilder.appendQueryParameter(SDKConstants.PARAM_TOURNAMENTS_ID, str);
        }
        if (str2 != null) {
            builderBaseUriBuilder.appendQueryParameter("payload", str2);
        }
        Uri uriBuild = builderBaseUriBuilder.build();
        m.d(uriBuild, "builder.build()");
        return uriBuild;
    }
}
