package com.facebook.gamingservices;

import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.bolts.TaskCompletionSource;
import com.facebook.internal.ServerProtocol;
import org.json.JSONObject;
import t9.m;

/* JADX INFO: compiled from: TournamentUpdater.kt */
/* JADX INFO: loaded from: classes.dex */
public final class TournamentUpdater {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: update$lambda-0, reason: not valid java name */
    public static final void m98update$lambda0(TaskCompletionSource taskCompletionSource, GraphResponse graphResponse) {
        m.e(taskCompletionSource, "$task");
        m.e(graphResponse, "response");
        if (graphResponse.getError() != null) {
            FacebookRequestError error = graphResponse.getError();
            if ((error == null ? null : error.getException()) == null) {
                taskCompletionSource.setError(new GraphAPIException("Graph API Error"));
                return;
            } else {
                FacebookRequestError error2 = graphResponse.getError();
                taskCompletionSource.setError(error2 != null ? error2.getException() : null);
                return;
            }
        }
        JSONObject jSONObject = graphResponse.getJSONObject();
        String strOptString = jSONObject != null ? jSONObject.optString(GraphResponse.SUCCESS_KEY) : null;
        if (strOptString != null) {
            if (!(strOptString.length() == 0)) {
                taskCompletionSource.setResult(Boolean.valueOf(strOptString.equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE)));
                return;
            }
        }
        taskCompletionSource.setError(new GraphAPIException("Graph API Error"));
    }

    public final TaskCompletionSource<Boolean> update(Tournament tournament, Number number) {
        m.e(tournament, "tournament");
        m.e(number, "score");
        return update(tournament.identifier, number);
    }

    public final TaskCompletionSource<Boolean> update(String str, Number number) {
        m.e(str, "identifier");
        m.e(number, "score");
        AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
        if (currentAccessToken == null || currentAccessToken.isExpired()) {
            throw new FacebookException("Attempted to fetch tournament with an invalid access token");
        }
        if (!(currentAccessToken.getGraphDomain() != null && m.a(FacebookSdk.GAMING, currentAccessToken.getGraphDomain()))) {
            throw new FacebookException("User is not using gaming login");
        }
        final TaskCompletionSource<Boolean> taskCompletionSource = new TaskCompletionSource<>();
        String strK = m.k(str, "/update_score");
        Bundle bundle = new Bundle();
        bundle.putInt("score", number.intValue());
        new GraphRequest(currentAccessToken, strK, bundle, HttpMethod.POST, new GraphRequest.Callback() { // from class: com.facebook.gamingservices.j
            @Override // com.facebook.GraphRequest.Callback
            public final void onCompleted(GraphResponse graphResponse) {
                TournamentUpdater.m98update$lambda0(taskCompletionSource, graphResponse);
            }
        }, null, 32, null).executeAsync();
        return taskCompletionSource;
    }
}
