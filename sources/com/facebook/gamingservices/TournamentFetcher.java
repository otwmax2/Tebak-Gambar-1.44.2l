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
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import t9.b0;
import t9.m;

/* JADX INFO: compiled from: TournamentFetcher.kt */
/* JADX INFO: loaded from: classes.dex */
public final class TournamentFetcher {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: fetchTournaments$lambda-1, reason: not valid java name */
    public static final void m95fetchTournaments$lambda1(TaskCompletionSource taskCompletionSource, GraphResponse graphResponse) {
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
        try {
            JSONObject jSONObject = graphResponse.getJSONObject();
            if (jSONObject == null) {
                taskCompletionSource.setError(new GraphAPIException("Failed to get response"));
                return;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("data");
            if (jSONArray != null && jSONArray.length() >= 1) {
                com.google.gson.f fVarB = new com.google.gson.g().b();
                String string = jSONArray.toString();
                m.d(string, "data.toString()");
                Object objK = fVarB.k(string, Tournament[].class);
                m.d(objK, "gson.fromJson(dataString, Array<Tournament>::class.java)");
                taskCompletionSource.setResult(i9.g.s((Object[]) objK));
                return;
            }
            b0 b0Var = b0.f35528a;
            String str = String.format(Locale.ROOT, "No tournament found", Arrays.copyOf(new Object[]{Integer.valueOf(jSONArray.length()), 1}, 2));
            m.d(str, "java.lang.String.format(locale, format, *args)");
            taskCompletionSource.setError(new GraphAPIException(str));
        } catch (JSONException e10) {
            taskCompletionSource.setError(e10);
        }
    }

    public final TaskCompletionSource<List<Tournament>> fetchTournaments() {
        final TaskCompletionSource<List<Tournament>> taskCompletionSource = new TaskCompletionSource<>();
        Bundle bundle = new Bundle();
        AccessToken.Companion companion = AccessToken.Companion;
        AccessToken currentAccessToken = companion.getCurrentAccessToken();
        if (currentAccessToken == null || currentAccessToken.isExpired()) {
            throw new FacebookException("Attempted to fetch tournament with an invalid access token");
        }
        if (!(currentAccessToken.getGraphDomain() != null && m.a(FacebookSdk.GAMING, currentAccessToken.getGraphDomain()))) {
            throw new FacebookException("User is not using gaming login");
        }
        GraphRequest graphRequest = new GraphRequest(companion.getCurrentAccessToken(), "me/tournaments", bundle, HttpMethod.GET, new GraphRequest.Callback() { // from class: com.facebook.gamingservices.g
            @Override // com.facebook.GraphRequest.Callback
            public final void onCompleted(GraphResponse graphResponse) {
                TournamentFetcher.m95fetchTournaments$lambda1(taskCompletionSource, graphResponse);
            }
        }, null, 32, null);
        graphRequest.setParameters(bundle);
        graphRequest.executeAsync();
        return taskCompletionSource;
    }
}
