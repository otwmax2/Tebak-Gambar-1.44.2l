package com.facebook;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestBatch;
import com.facebook.internal.Utility;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: compiled from: AccessTokenManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AccessTokenManager {
    public static final String ACTION_CURRENT_ACCESS_TOKEN_CHANGED = "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED";
    public static final Companion Companion = new Companion(null);
    public static final String EXTRA_NEW_ACCESS_TOKEN = "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN";
    public static final String EXTRA_OLD_ACCESS_TOKEN = "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN";
    private static final String ME_PERMISSIONS_GRAPH_PATH = "me/permissions";
    public static final String SHARED_PREFERENCES_NAME = "com.facebook.AccessTokenManager.SharedPreferences";
    public static final String TAG = "AccessTokenManager";
    private static final int TOKEN_EXTEND_RETRY_SECONDS = 3600;
    private static final int TOKEN_EXTEND_THRESHOLD_SECONDS = 86400;
    private static AccessTokenManager instanceField;
    private final AccessTokenCache accessTokenCache;
    private AccessToken currentAccessTokenField;
    private Date lastAttemptedTokenExtendDate;
    private final u0.a localBroadcastManager;
    private final AtomicBoolean tokenRefreshInProgress;

    /* JADX INFO: compiled from: AccessTokenManager.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final GraphRequest createExtendAccessTokenRequest(AccessToken accessToken, GraphRequest.Callback callback) {
            RefreshTokenInfo refreshTokenInfoForToken = getRefreshTokenInfoForToken(accessToken);
            Bundle bundle = new Bundle();
            bundle.putString("grant_type", refreshTokenInfoForToken.getGrantType());
            bundle.putString("client_id", accessToken.getApplicationId());
            bundle.putString(GraphRequest.FIELDS_PARAM, "access_token,expires_at,expires_in,data_access_expiration_time,graph_domain");
            GraphRequest graphRequestNewGraphPathRequest = GraphRequest.Companion.newGraphPathRequest(accessToken, refreshTokenInfoForToken.getGraphPath(), callback);
            graphRequestNewGraphPathRequest.setParameters(bundle);
            graphRequestNewGraphPathRequest.setHttpMethod(HttpMethod.GET);
            return graphRequestNewGraphPathRequest;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final GraphRequest createGrantedPermissionsRequest(AccessToken accessToken, GraphRequest.Callback callback) {
            Bundle bundle = new Bundle();
            bundle.putString(GraphRequest.FIELDS_PARAM, "permission,status");
            GraphRequest graphRequestNewGraphPathRequest = GraphRequest.Companion.newGraphPathRequest(accessToken, AccessTokenManager.ME_PERMISSIONS_GRAPH_PATH, callback);
            graphRequestNewGraphPathRequest.setParameters(bundle);
            graphRequestNewGraphPathRequest.setHttpMethod(HttpMethod.GET);
            return graphRequestNewGraphPathRequest;
        }

        private final RefreshTokenInfo getRefreshTokenInfoForToken(AccessToken accessToken) {
            String graphDomain = accessToken.getGraphDomain();
            if (graphDomain == null) {
                graphDomain = "facebook";
            }
            return t9.m.a(graphDomain, FacebookSdk.INSTAGRAM) ? new InstagramRefreshTokenInfo() : new FacebookRefreshTokenInfo();
        }

        public final AccessTokenManager getInstance() {
            AccessTokenManager accessTokenManager;
            AccessTokenManager accessTokenManager2 = AccessTokenManager.instanceField;
            if (accessTokenManager2 != null) {
                return accessTokenManager2;
            }
            synchronized (this) {
                accessTokenManager = AccessTokenManager.instanceField;
                if (accessTokenManager == null) {
                    FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                    u0.a aVarB = u0.a.b(FacebookSdk.getApplicationContext());
                    t9.m.d(aVarB, "getInstance(applicationContext)");
                    AccessTokenManager accessTokenManager3 = new AccessTokenManager(aVarB, new AccessTokenCache());
                    Companion companion = AccessTokenManager.Companion;
                    AccessTokenManager.instanceField = accessTokenManager3;
                    accessTokenManager = accessTokenManager3;
                }
            }
            return accessTokenManager;
        }
    }

    /* JADX INFO: compiled from: AccessTokenManager.kt */
    public static final class FacebookRefreshTokenInfo implements RefreshTokenInfo {
        private final String graphPath = "oauth/access_token";
        private final String grantType = "fb_extend_sso_token";

        @Override // com.facebook.AccessTokenManager.RefreshTokenInfo
        public String getGrantType() {
            return this.grantType;
        }

        @Override // com.facebook.AccessTokenManager.RefreshTokenInfo
        public String getGraphPath() {
            return this.graphPath;
        }
    }

    /* JADX INFO: compiled from: AccessTokenManager.kt */
    public static final class InstagramRefreshTokenInfo implements RefreshTokenInfo {
        private final String graphPath = "refresh_access_token";
        private final String grantType = "ig_refresh_token";

        @Override // com.facebook.AccessTokenManager.RefreshTokenInfo
        public String getGrantType() {
            return this.grantType;
        }

        @Override // com.facebook.AccessTokenManager.RefreshTokenInfo
        public String getGraphPath() {
            return this.graphPath;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: AccessTokenManager.kt */
    static final class RefreshResult {
        private String accessToken;
        private Long dataAccessExpirationTime;
        private int expiresAt;
        private int expiresIn;
        private String graphDomain;

        public final String getAccessToken() {
            return this.accessToken;
        }

        public final Long getDataAccessExpirationTime() {
            return this.dataAccessExpirationTime;
        }

        public final int getExpiresAt() {
            return this.expiresAt;
        }

        public final int getExpiresIn() {
            return this.expiresIn;
        }

        public final String getGraphDomain() {
            return this.graphDomain;
        }

        public final void setAccessToken(String str) {
            this.accessToken = str;
        }

        public final void setDataAccessExpirationTime(Long l10) {
            this.dataAccessExpirationTime = l10;
        }

        public final void setExpiresAt(int i10) {
            this.expiresAt = i10;
        }

        public final void setExpiresIn(int i10) {
            this.expiresIn = i10;
        }

        public final void setGraphDomain(String str) {
            this.graphDomain = str;
        }
    }

    /* JADX INFO: compiled from: AccessTokenManager.kt */
    public interface RefreshTokenInfo {
        String getGrantType();

        String getGraphPath();
    }

    public AccessTokenManager(u0.a aVar, AccessTokenCache accessTokenCache) {
        t9.m.e(aVar, "localBroadcastManager");
        t9.m.e(accessTokenCache, "accessTokenCache");
        this.localBroadcastManager = aVar;
        this.accessTokenCache = accessTokenCache;
        this.tokenRefreshInProgress = new AtomicBoolean(false);
        this.lastAttemptedTokenExtendDate = new Date(0L);
    }

    public static final AccessTokenManager getInstance() {
        return Companion.getInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: refreshCurrentAccessToken$lambda-0, reason: not valid java name */
    public static final void m0refreshCurrentAccessToken$lambda0(AccessTokenManager accessTokenManager, AccessToken.AccessTokenRefreshCallback accessTokenRefreshCallback) {
        t9.m.e(accessTokenManager, "this$0");
        accessTokenManager.refreshCurrentAccessTokenImpl(accessTokenRefreshCallback);
    }

    private final void refreshCurrentAccessTokenImpl(final AccessToken.AccessTokenRefreshCallback accessTokenRefreshCallback) {
        final AccessToken currentAccessToken = getCurrentAccessToken();
        if (currentAccessToken == null) {
            if (accessTokenRefreshCallback == null) {
                return;
            }
            accessTokenRefreshCallback.OnTokenRefreshFailed(new FacebookException("No current access token to refresh"));
            return;
        }
        if (!this.tokenRefreshInProgress.compareAndSet(false, true)) {
            if (accessTokenRefreshCallback == null) {
                return;
            }
            accessTokenRefreshCallback.OnTokenRefreshFailed(new FacebookException("Refresh already in progress"));
            return;
        }
        this.lastAttemptedTokenExtendDate = new Date();
        final HashSet hashSet = new HashSet();
        final HashSet hashSet2 = new HashSet();
        final HashSet hashSet3 = new HashSet();
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        final RefreshResult refreshResult = new RefreshResult();
        Companion companion = Companion;
        GraphRequestBatch graphRequestBatch = new GraphRequestBatch(companion.createGrantedPermissionsRequest(currentAccessToken, new GraphRequest.Callback() { // from class: com.facebook.b
            @Override // com.facebook.GraphRequest.Callback
            public final void onCompleted(GraphResponse graphResponse) {
                AccessTokenManager.m1refreshCurrentAccessTokenImpl$lambda1(atomicBoolean, hashSet, hashSet2, hashSet3, graphResponse);
            }
        }), companion.createExtendAccessTokenRequest(currentAccessToken, new GraphRequest.Callback() { // from class: com.facebook.a
            @Override // com.facebook.GraphRequest.Callback
            public final void onCompleted(GraphResponse graphResponse) {
                AccessTokenManager.m2refreshCurrentAccessTokenImpl$lambda2(refreshResult, graphResponse);
            }
        }));
        graphRequestBatch.addCallback(new GraphRequestBatch.Callback() { // from class: com.facebook.c
            @Override // com.facebook.GraphRequestBatch.Callback
            public final void onBatchCompleted(GraphRequestBatch graphRequestBatch2) throws Throwable {
                AccessTokenManager.m3refreshCurrentAccessTokenImpl$lambda3(refreshResult, currentAccessToken, accessTokenRefreshCallback, atomicBoolean, hashSet, hashSet2, hashSet3, this, graphRequestBatch2);
            }
        });
        graphRequestBatch.executeAsync();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a4  */
    /* JADX INFO: renamed from: refreshCurrentAccessTokenImpl$lambda-1, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void m1refreshCurrentAccessTokenImpl$lambda1(java.util.concurrent.atomic.AtomicBoolean r6, java.util.Set r7, java.util.Set r8, java.util.Set r9, com.facebook.GraphResponse r10) {
        /*
            java.lang.String r0 = "$permissionsCallSucceeded"
            t9.m.e(r6, r0)
            java.lang.String r0 = "$permissions"
            t9.m.e(r7, r0)
            java.lang.String r0 = "$declinedPermissions"
            t9.m.e(r8, r0)
            java.lang.String r0 = "$expiredPermissions"
            t9.m.e(r9, r0)
            java.lang.String r0 = "response"
            t9.m.e(r10, r0)
            org.json.JSONObject r10 = r10.getJsonObject()
            if (r10 != 0) goto L20
            return
        L20:
            java.lang.String r0 = "data"
            org.json.JSONArray r10 = r10.optJSONArray(r0)
            if (r10 != 0) goto L29
            return
        L29:
            r0 = 1
            r6.set(r0)
            r6 = 0
            int r0 = r10.length()
            if (r0 <= 0) goto Lb9
        L34:
            int r1 = r6 + 1
            org.json.JSONObject r6 = r10.optJSONObject(r6)
            if (r6 != 0) goto L3e
            goto Lb3
        L3e:
            java.lang.String r2 = "permission"
            java.lang.String r2 = r6.optString(r2)
            java.lang.String r3 = "status"
            java.lang.String r6 = r6.optString(r3)
            com.facebook.internal.Utility r4 = com.facebook.internal.Utility.INSTANCE
            boolean r4 = com.facebook.internal.Utility.isNullOrEmpty(r2)
            if (r4 != 0) goto Lb3
            boolean r4 = com.facebook.internal.Utility.isNullOrEmpty(r6)
            if (r4 != 0) goto Lb3
            t9.m.d(r6, r3)
            java.util.Locale r4 = java.util.Locale.US
            java.lang.String r5 = "US"
            t9.m.d(r4, r5)
            java.lang.String r6 = r6.toLowerCase(r4)
            java.lang.String r4 = "(this as java.lang.String).toLowerCase(locale)"
            t9.m.d(r6, r4)
            t9.m.d(r6, r3)
            int r3 = r6.hashCode()
            r4 = -1309235419(0xffffffffb1f6a725, float:-7.1785444E-9)
            if (r3 == r4) goto L9c
            r4 = 280295099(0x10b4f6bb, float:7.137763E-29)
            if (r3 == r4) goto L8f
            r4 = 568196142(0x21ddfc2e, float:1.5042294E-18)
            if (r3 == r4) goto L82
            goto La4
        L82:
            java.lang.String r3 = "declined"
            boolean r3 = r6.equals(r3)
            if (r3 != 0) goto L8b
            goto La4
        L8b:
            r8.add(r2)
            goto Lb3
        L8f:
            java.lang.String r3 = "granted"
            boolean r3 = r6.equals(r3)
            if (r3 != 0) goto L98
            goto La4
        L98:
            r7.add(r2)
            goto Lb3
        L9c:
            java.lang.String r3 = "expired"
            boolean r3 = r6.equals(r3)
            if (r3 != 0) goto Lb0
        La4:
            java.lang.String r2 = "Unexpected status: "
            java.lang.String r6 = t9.m.k(r2, r6)
            java.lang.String r2 = "AccessTokenManager"
            android.util.Log.w(r2, r6)
            goto Lb3
        Lb0:
            r9.add(r2)
        Lb3:
            if (r1 < r0) goto Lb6
            goto Lb9
        Lb6:
            r6 = r1
            goto L34
        Lb9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.AccessTokenManager.m1refreshCurrentAccessTokenImpl$lambda1(java.util.concurrent.atomic.AtomicBoolean, java.util.Set, java.util.Set, java.util.Set, com.facebook.GraphResponse):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: refreshCurrentAccessTokenImpl$lambda-2, reason: not valid java name */
    public static final void m2refreshCurrentAccessTokenImpl$lambda2(RefreshResult refreshResult, GraphResponse graphResponse) {
        t9.m.e(refreshResult, "$refreshResult");
        t9.m.e(graphResponse, "response");
        JSONObject jsonObject = graphResponse.getJsonObject();
        if (jsonObject == null) {
            return;
        }
        refreshResult.setAccessToken(jsonObject.optString("access_token"));
        refreshResult.setExpiresAt(jsonObject.optInt("expires_at"));
        refreshResult.setExpiresIn(jsonObject.optInt(AccessToken.EXPIRES_IN_KEY));
        refreshResult.setDataAccessExpirationTime(Long.valueOf(jsonObject.optLong(AccessToken.DATA_ACCESS_EXPIRATION_TIME)));
        refreshResult.setGraphDomain(jsonObject.optString("graph_domain", null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: refreshCurrentAccessTokenImpl$lambda-3, reason: not valid java name */
    public static final void m3refreshCurrentAccessTokenImpl$lambda3(RefreshResult refreshResult, AccessToken accessToken, AccessToken.AccessTokenRefreshCallback accessTokenRefreshCallback, AtomicBoolean atomicBoolean, Set set, Set set2, Set set3, AccessTokenManager accessTokenManager, GraphRequestBatch graphRequestBatch) throws Throwable {
        AccessToken accessToken2;
        t9.m.e(refreshResult, "$refreshResult");
        t9.m.e(atomicBoolean, "$permissionsCallSucceeded");
        t9.m.e(set, "$permissions");
        t9.m.e(set2, "$declinedPermissions");
        t9.m.e(set3, "$expiredPermissions");
        t9.m.e(accessTokenManager, "this$0");
        t9.m.e(graphRequestBatch, "it");
        String accessToken3 = refreshResult.getAccessToken();
        int expiresAt = refreshResult.getExpiresAt();
        Long dataAccessExpirationTime = refreshResult.getDataAccessExpirationTime();
        String graphDomain = refreshResult.getGraphDomain();
        try {
            Companion companion = Companion;
            if (companion.getInstance().getCurrentAccessToken() != null) {
                AccessToken currentAccessToken = companion.getInstance().getCurrentAccessToken();
                if ((currentAccessToken == null ? null : currentAccessToken.getUserId()) == accessToken.getUserId()) {
                    if (!atomicBoolean.get() && accessToken3 == null && expiresAt == 0) {
                        if (accessTokenRefreshCallback != null) {
                            accessTokenRefreshCallback.OnTokenRefreshFailed(new FacebookException("Failed to refresh access token"));
                        }
                        accessTokenManager.tokenRefreshInProgress.set(false);
                        return;
                    }
                    Date expires = accessToken.getExpires();
                    if (refreshResult.getExpiresAt() != 0) {
                        expires = new Date(((long) refreshResult.getExpiresAt()) * 1000);
                    } else if (refreshResult.getExpiresIn() != 0) {
                        expires = new Date((((long) refreshResult.getExpiresIn()) * 1000) + new Date().getTime());
                    }
                    Date date = expires;
                    if (accessToken3 == null) {
                        accessToken3 = accessToken.getToken();
                    }
                    String str = accessToken3;
                    String applicationId = accessToken.getApplicationId();
                    String userId = accessToken.getUserId();
                    Set permissions = atomicBoolean.get() ? set : accessToken.getPermissions();
                    Set declinedPermissions = atomicBoolean.get() ? set2 : accessToken.getDeclinedPermissions();
                    Set expiredPermissions = atomicBoolean.get() ? set3 : accessToken.getExpiredPermissions();
                    AccessTokenSource source = accessToken.getSource();
                    Date date2 = new Date();
                    Date date3 = dataAccessExpirationTime != null ? new Date(dataAccessExpirationTime.longValue() * 1000) : accessToken.getDataAccessExpirationTime();
                    if (graphDomain == null) {
                        graphDomain = accessToken.getGraphDomain();
                    }
                    AccessToken accessToken4 = new AccessToken(str, applicationId, userId, permissions, declinedPermissions, expiredPermissions, source, date, date2, date3, graphDomain);
                    try {
                        companion.getInstance().setCurrentAccessToken(accessToken4);
                        accessTokenManager.tokenRefreshInProgress.set(false);
                        if (accessTokenRefreshCallback != null) {
                            accessTokenRefreshCallback.OnTokenRefreshed(accessToken4);
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        th = th;
                        accessToken2 = accessToken4;
                        accessTokenManager.tokenRefreshInProgress.set(false);
                        if (accessTokenRefreshCallback != null && accessToken2 != null) {
                            accessTokenRefreshCallback.OnTokenRefreshed(accessToken2);
                        }
                        throw th;
                    }
                }
            }
            if (accessTokenRefreshCallback != null) {
                accessTokenRefreshCallback.OnTokenRefreshFailed(new FacebookException("No current access token to refresh"));
            }
            accessTokenManager.tokenRefreshInProgress.set(false);
        } catch (Throwable th2) {
            th = th2;
            accessToken2 = null;
        }
    }

    private final void sendCurrentAccessTokenChangedBroadcastIntent(AccessToken accessToken, AccessToken accessToken2) {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        Intent intent = new Intent(FacebookSdk.getApplicationContext(), (Class<?>) CurrentAccessTokenExpirationBroadcastReceiver.class);
        intent.setAction(ACTION_CURRENT_ACCESS_TOKEN_CHANGED);
        intent.putExtra(EXTRA_OLD_ACCESS_TOKEN, accessToken);
        intent.putExtra(EXTRA_NEW_ACCESS_TOKEN, accessToken2);
        this.localBroadcastManager.d(intent);
    }

    private final void setTokenExpirationBroadcastAlarm() {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        Context applicationContext = FacebookSdk.getApplicationContext();
        AccessToken.Companion companion = AccessToken.Companion;
        AccessToken currentAccessToken = companion.getCurrentAccessToken();
        AlarmManager alarmManager = (AlarmManager) applicationContext.getSystemService("alarm");
        if (companion.isCurrentAccessTokenActive()) {
            if ((currentAccessToken == null ? null : currentAccessToken.getExpires()) == null || alarmManager == null) {
                return;
            }
            Intent intent = new Intent(applicationContext, (Class<?>) CurrentAccessTokenExpirationBroadcastReceiver.class);
            intent.setAction(ACTION_CURRENT_ACCESS_TOKEN_CHANGED);
            try {
                alarmManager.set(1, currentAccessToken.getExpires().getTime(), Build.VERSION.SDK_INT >= 23 ? PendingIntent.getBroadcast(applicationContext, 0, intent, 67108864) : PendingIntent.getBroadcast(applicationContext, 0, intent, 0));
            } catch (Exception unused) {
            }
        }
    }

    private final boolean shouldExtendAccessToken() {
        AccessToken currentAccessToken = getCurrentAccessToken();
        if (currentAccessToken == null) {
            return false;
        }
        long time = new Date().getTime();
        return currentAccessToken.getSource().canExtendToken() && time - this.lastAttemptedTokenExtendDate.getTime() > 3600000 && time - currentAccessToken.getLastRefresh().getTime() > 86400000;
    }

    public final void currentAccessTokenChanged() {
        sendCurrentAccessTokenChangedBroadcastIntent(getCurrentAccessToken(), getCurrentAccessToken());
    }

    public final void extendAccessTokenIfNeeded() {
        if (shouldExtendAccessToken()) {
            refreshCurrentAccessToken(null);
        }
    }

    public final AccessToken getCurrentAccessToken() {
        return this.currentAccessTokenField;
    }

    public final boolean loadCurrentAccessToken() {
        AccessToken accessTokenLoad = this.accessTokenCache.load();
        if (accessTokenLoad == null) {
            return false;
        }
        setCurrentAccessToken(accessTokenLoad, false);
        return true;
    }

    public final void refreshCurrentAccessToken(final AccessToken.AccessTokenRefreshCallback accessTokenRefreshCallback) {
        if (t9.m.a(Looper.getMainLooper(), Looper.myLooper())) {
            refreshCurrentAccessTokenImpl(accessTokenRefreshCallback);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.facebook.d
                @Override // java.lang.Runnable
                public final void run() {
                    AccessTokenManager.m0refreshCurrentAccessToken$lambda0(this.f5359o, accessTokenRefreshCallback);
                }
            });
        }
    }

    public final void setCurrentAccessToken(AccessToken accessToken) {
        setCurrentAccessToken(accessToken, true);
    }

    private final void setCurrentAccessToken(AccessToken accessToken, boolean z10) {
        AccessToken accessToken2 = this.currentAccessTokenField;
        this.currentAccessTokenField = accessToken;
        this.tokenRefreshInProgress.set(false);
        this.lastAttemptedTokenExtendDate = new Date(0L);
        if (z10) {
            if (accessToken != null) {
                this.accessTokenCache.save(accessToken);
            } else {
                this.accessTokenCache.clear();
                Utility utility = Utility.INSTANCE;
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                Utility.clearFacebookCookies(FacebookSdk.getApplicationContext());
            }
        }
        Utility utility2 = Utility.INSTANCE;
        if (Utility.areObjectsEqual(accessToken2, accessToken)) {
            return;
        }
        sendCurrentAccessTokenChangedBroadcastIntent(accessToken2, accessToken);
        setTokenExpirationBroadcastAlarm();
    }
}
