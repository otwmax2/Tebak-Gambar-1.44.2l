package com.facebook.gamingservices.internal;

import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import com.facebook.gamingservices.TournamentConfig;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.time.Instant;
import t9.m;

/* JADX INFO: compiled from: TournamentShareDialogURIBuilder.kt */
/* JADX INFO: loaded from: classes.dex */
public final class TournamentShareDialogURIBuilder {
    public static final TournamentShareDialogURIBuilder INSTANCE = new TournamentShareDialogURIBuilder();
    public static final String authority = "fb.gg";
    public static final String me = "me";
    public static final String scheme = "https";
    public static final String tournament = "instant_tournament";

    private TournamentShareDialogURIBuilder() {
    }

    public final Bundle bundleForCreating$facebook_gamingservices_release(TournamentConfig tournamentConfig, Number number, String str) {
        Instant endTime;
        m.e(tournamentConfig, "config");
        m.e(number, "score");
        m.e(str, SDKConstants.PARAM_APP_ID);
        Bundle bundle = new Bundle();
        bundle.putString(SDKConstants.PARAM_TOURNAMENTS_DEEPLINK, SDKConstants.PARAM_TOURNAMENTS);
        bundle.putString("app_id", str);
        bundle.putString("score", number.toString());
        TournamentSortOrder sortOrder = tournamentConfig.getSortOrder();
        if (sortOrder != null) {
            bundle.putString(SDKConstants.PARAM_TOURNAMENTS_SORT_ORDER, sortOrder.toString());
        }
        TournamentScoreType scoreType = tournamentConfig.getScoreType();
        if (scoreType != null) {
            bundle.putString(SDKConstants.PARAM_TOURNAMENTS_SCORE_FORMAT, scoreType.toString());
        }
        String title = tournamentConfig.getTitle();
        if (title != null) {
            bundle.putString(SDKConstants.PARAM_TOURNAMENTS_TITLE, title);
        }
        String payload = tournamentConfig.getPayload();
        if (payload != null) {
            bundle.putString(SDKConstants.PARAM_TOURNAMENTS_PAYLOAD, payload);
        }
        if (Build.VERSION.SDK_INT >= 26 && (endTime = tournamentConfig.getEndTime()) != null) {
            bundle.putString(SDKConstants.PARAM_TOURNAMENTS_END_TIME, String.valueOf((int) endTime.getEpochSecond()));
        }
        return bundle;
    }

    public final Bundle bundleForUpdating$facebook_gamingservices_release(String str, Number number, String str2) {
        m.e(str, "tournamentID");
        m.e(number, "score");
        m.e(str2, SDKConstants.PARAM_APP_ID);
        Bundle bundle = new Bundle();
        bundle.putString(SDKConstants.PARAM_TOURNAMENTS_DEEPLINK, SDKConstants.PARAM_TOURNAMENTS);
        bundle.putString("app_id", str2);
        bundle.putString("score", number.toString());
        bundle.putString(SDKConstants.PARAM_TOURNAMENTS_ID, str);
        return bundle;
    }

    public final Uri uriForCreating$facebook_gamingservices_release(TournamentConfig tournamentConfig, Number number, String str) {
        m.e(tournamentConfig, "config");
        m.e(number, "score");
        m.e(str, SDKConstants.PARAM_APP_ID);
        Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme(scheme).authority("fb.gg").appendPath(me).appendPath(tournament).appendPath(str).appendQueryParameter("score", number.toString());
        Instant endTime = tournamentConfig.getEndTime();
        if (endTime != null) {
            builderAppendQueryParameter.appendQueryParameter(SDKConstants.PARAM_TOURNAMENTS_END_TIME, endTime.toString());
        }
        TournamentSortOrder sortOrder = tournamentConfig.getSortOrder();
        if (sortOrder != null) {
            builderAppendQueryParameter.appendQueryParameter(SDKConstants.PARAM_TOURNAMENTS_SORT_ORDER, sortOrder.toString());
        }
        TournamentScoreType scoreType = tournamentConfig.getScoreType();
        if (scoreType != null) {
            builderAppendQueryParameter.appendQueryParameter(SDKConstants.PARAM_TOURNAMENTS_SCORE_FORMAT, scoreType.toString());
        }
        String title = tournamentConfig.getTitle();
        if (title != null) {
            builderAppendQueryParameter.appendQueryParameter(SDKConstants.PARAM_TOURNAMENTS_TITLE, title);
        }
        String payload = tournamentConfig.getPayload();
        if (payload != null) {
            builderAppendQueryParameter.appendQueryParameter(SDKConstants.PARAM_TOURNAMENTS_PAYLOAD, payload);
        }
        Uri uriBuild = builderAppendQueryParameter.build();
        m.d(uriBuild, "builder.build()");
        return uriBuild;
    }

    public final Uri uriForUpdating$facebook_gamingservices_release(String str, Number number, String str2) {
        m.e(str, "tournamentID");
        m.e(number, "score");
        m.e(str2, SDKConstants.PARAM_APP_ID);
        Uri uriBuild = new Uri.Builder().scheme(scheme).authority("fb.gg").appendPath(me).appendPath(tournament).appendPath(str2).appendQueryParameter(SDKConstants.PARAM_TOURNAMENTS_ID, str).appendQueryParameter("score", number.toString()).build();
        m.d(uriBuild, "Builder()\n        .scheme(scheme)\n        .authority(authority)\n        .appendPath(me)\n        .appendPath(tournament)\n        .appendPath(appID)\n        .appendQueryParameter(SDKConstants.PARAM_TOURNAMENTS_ID, tournamentID)\n        .appendQueryParameter(SDKConstants.PARAM_TOURNAMENTS_SCORE, score.toString())\n        .build()");
        return uriBuild;
    }
}
