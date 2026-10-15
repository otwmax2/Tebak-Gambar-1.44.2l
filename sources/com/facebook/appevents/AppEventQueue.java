package com.facebook.appevents;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.cloudbridge.AppEventsCAPIManager;
import com.facebook.appevents.cloudbridge.AppEventsConversionsAPITransformerWebRequests;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Logger;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import t9.b0;

/* JADX INFO: compiled from: AppEventQueue.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AppEventQueue {
    private static final int FLUSH_PERIOD_IN_SECONDS = 15;
    private static final int NO_CONNECTIVITY_ERROR_CODE = -1;
    private static ScheduledFuture<?> scheduledFuture;
    public static final AppEventQueue INSTANCE = new AppEventQueue();
    private static final String TAG = AppEventQueue.class.getName();
    private static final int NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER = 100;
    private static volatile AppEventCollection appEventCollection = new AppEventCollection();
    private static final ScheduledExecutorService singleThreadExecutor = Executors.newSingleThreadScheduledExecutor();
    private static final Runnable flushRunnable = new Runnable() { // from class: com.facebook.appevents.h
        @Override // java.lang.Runnable
        public final void run() {
            AppEventQueue.m28flushRunnable$lambda0();
        }
    };

    private AppEventQueue() {
    }

    public static final void add(final AccessTokenAppIdPair accessTokenAppIdPair, final AppEvent appEvent) {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            t9.m.e(accessTokenAppIdPair, "accessTokenAppId");
            t9.m.e(appEvent, "appEvent");
            singleThreadExecutor.execute(new Runnable() { // from class: com.facebook.appevents.d
                @Override // java.lang.Runnable
                public final void run() {
                    AppEventQueue.m25add$lambda3(accessTokenAppIdPair, appEvent);
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: add$lambda-3, reason: not valid java name */
    public static final void m25add$lambda3(AccessTokenAppIdPair accessTokenAppIdPair, AppEvent appEvent) {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            t9.m.e(accessTokenAppIdPair, "$accessTokenAppId");
            t9.m.e(appEvent, "$appEvent");
            appEventCollection.addEvent(accessTokenAppIdPair, appEvent);
            if (AppEventsLogger.Companion.getFlushBehavior() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY && appEventCollection.getEventCount() > NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER) {
                flushAndWait(FlushReason.EVENT_THRESHOLD);
            } else if (scheduledFuture == null) {
                scheduledFuture = singleThreadExecutor.schedule(flushRunnable, 15L, TimeUnit.SECONDS);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    public static final GraphRequest buildRequestForSession(final AccessTokenAppIdPair accessTokenAppIdPair, final SessionEventsState sessionEventsState, boolean z10, final FlushStatistics flushStatistics) {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return null;
        }
        try {
            t9.m.e(accessTokenAppIdPair, "accessTokenAppId");
            t9.m.e(sessionEventsState, "appEvents");
            t9.m.e(flushStatistics, "flushState");
            String applicationId = accessTokenAppIdPair.getApplicationId();
            FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
            FetchedAppSettings fetchedAppSettingsQueryAppSettings = FetchedAppSettingsManager.queryAppSettings(applicationId, false);
            GraphRequest.Companion companion = GraphRequest.Companion;
            b0 b0Var = b0.f35528a;
            String str = String.format("%s/activities", Arrays.copyOf(new Object[]{applicationId}, 1));
            t9.m.d(str, "java.lang.String.format(format, *args)");
            final GraphRequest graphRequestNewPostRequest = companion.newPostRequest(null, str, null, null);
            graphRequestNewPostRequest.setForceApplicationRequest(true);
            Bundle parameters = graphRequestNewPostRequest.getParameters();
            if (parameters == null) {
                parameters = new Bundle();
            }
            parameters.putString("access_token", accessTokenAppIdPair.getAccessTokenString());
            String pushNotificationsRegistrationId = InternalAppEventsLogger.Companion.getPushNotificationsRegistrationId();
            if (pushNotificationsRegistrationId != null) {
                parameters.putString("device_token", pushNotificationsRegistrationId);
            }
            String installReferrer = AppEventsLoggerImpl.Companion.getInstallReferrer();
            if (installReferrer != null) {
                parameters.putString("install_referrer", installReferrer);
            }
            graphRequestNewPostRequest.setParameters(parameters);
            boolean zSupportsImplicitLogging = fetchedAppSettingsQueryAppSettings != null ? fetchedAppSettingsQueryAppSettings.supportsImplicitLogging() : false;
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            int iPopulateRequest = sessionEventsState.populateRequest(graphRequestNewPostRequest, FacebookSdk.getApplicationContext(), zSupportsImplicitLogging, z10);
            if (iPopulateRequest == 0) {
                return null;
            }
            flushStatistics.setNumEvents(flushStatistics.getNumEvents() + iPopulateRequest);
            graphRequestNewPostRequest.setCallback(new GraphRequest.Callback() { // from class: com.facebook.appevents.c
                @Override // com.facebook.GraphRequest.Callback
                public final void onCompleted(GraphResponse graphResponse) {
                    AppEventQueue.m26buildRequestForSession$lambda4(accessTokenAppIdPair, graphRequestNewPostRequest, sessionEventsState, flushStatistics, graphResponse);
                }
            });
            return graphRequestNewPostRequest;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: buildRequestForSession$lambda-4, reason: not valid java name */
    public static final void m26buildRequestForSession$lambda4(AccessTokenAppIdPair accessTokenAppIdPair, GraphRequest graphRequest, SessionEventsState sessionEventsState, FlushStatistics flushStatistics, GraphResponse graphResponse) {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            t9.m.e(accessTokenAppIdPair, "$accessTokenAppId");
            t9.m.e(graphRequest, "$postRequest");
            t9.m.e(sessionEventsState, "$appEvents");
            t9.m.e(flushStatistics, "$flushState");
            t9.m.e(graphResponse, "response");
            handleResponse(accessTokenAppIdPair, graphRequest, graphResponse, sessionEventsState, flushStatistics);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    public static final List<GraphRequest> buildRequests(AppEventCollection appEventCollection2, FlushStatistics flushStatistics) {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return null;
        }
        try {
            t9.m.e(appEventCollection2, "appEventCollection");
            t9.m.e(flushStatistics, "flushResults");
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            boolean limitEventAndDataUsage = FacebookSdk.getLimitEventAndDataUsage(FacebookSdk.getApplicationContext());
            ArrayList arrayList = new ArrayList();
            for (AccessTokenAppIdPair accessTokenAppIdPair : appEventCollection2.keySet()) {
                SessionEventsState sessionEventsState = appEventCollection2.get(accessTokenAppIdPair);
                if (sessionEventsState == null) {
                    throw new IllegalStateException("Required value was null.".toString());
                }
                GraphRequest graphRequestBuildRequestForSession = buildRequestForSession(accessTokenAppIdPair, sessionEventsState, limitEventAndDataUsage, flushStatistics);
                if (graphRequestBuildRequestForSession != null) {
                    arrayList.add(graphRequestBuildRequestForSession);
                    if (AppEventsCAPIManager.INSTANCE.isEnabled$facebook_core_release()) {
                        AppEventsConversionsAPITransformerWebRequests appEventsConversionsAPITransformerWebRequests = AppEventsConversionsAPITransformerWebRequests.INSTANCE;
                        AppEventsConversionsAPITransformerWebRequests.transformGraphRequestAndSendToCAPIGEndPoint(graphRequestBuildRequestForSession);
                    }
                }
            }
            return arrayList;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
            return null;
        }
    }

    public static final void flush(final FlushReason flushReason) {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            t9.m.e(flushReason, "reason");
            singleThreadExecutor.execute(new Runnable() { // from class: com.facebook.appevents.f
                @Override // java.lang.Runnable
                public final void run() {
                    AppEventQueue.m27flush$lambda2(flushReason);
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: flush$lambda-2, reason: not valid java name */
    public static final void m27flush$lambda2(FlushReason flushReason) {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            t9.m.e(flushReason, "$reason");
            flushAndWait(flushReason);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    public static final void flushAndWait(FlushReason flushReason) {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            t9.m.e(flushReason, "reason");
            AppEventDiskStore appEventDiskStore = AppEventDiskStore.INSTANCE;
            appEventCollection.addPersistedEvents(AppEventDiskStore.readAndClearStore());
            try {
                FlushStatistics flushStatisticsSendEventsToServer = sendEventsToServer(flushReason, appEventCollection);
                if (flushStatisticsSendEventsToServer != null) {
                    Intent intent = new Intent(AppEventsLogger.ACTION_APP_EVENTS_FLUSHED);
                    intent.putExtra(AppEventsLogger.APP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED, flushStatisticsSendEventsToServer.getNumEvents());
                    intent.putExtra(AppEventsLogger.APP_EVENTS_EXTRA_FLUSH_RESULT, flushStatisticsSendEventsToServer.getResult());
                    FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                    u0.a.b(FacebookSdk.getApplicationContext()).d(intent);
                }
            } catch (Exception e10) {
                Log.w(TAG, "Caught unexpected exception while flushing app events: ", e10);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: flushRunnable$lambda-0, reason: not valid java name */
    public static final void m28flushRunnable$lambda0() {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            scheduledFuture = null;
            if (AppEventsLogger.Companion.getFlushBehavior() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY) {
                flushAndWait(FlushReason.TIMER);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    public static final Set<AccessTokenAppIdPair> getKeySet() {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return null;
        }
        try {
            return appEventCollection.keySet();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
            return null;
        }
    }

    public static final void handleResponse(final AccessTokenAppIdPair accessTokenAppIdPair, GraphRequest graphRequest, GraphResponse graphResponse, final SessionEventsState sessionEventsState, FlushStatistics flushStatistics) {
        String string;
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            t9.m.e(accessTokenAppIdPair, "accessTokenAppId");
            t9.m.e(graphRequest, "request");
            t9.m.e(graphResponse, "response");
            t9.m.e(sessionEventsState, "appEvents");
            t9.m.e(flushStatistics, "flushState");
            FacebookRequestError error = graphResponse.getError();
            String str = "Success";
            FlushResult flushResult = FlushResult.SUCCESS;
            boolean z10 = true;
            if (error != null) {
                if (error.getErrorCode() == -1) {
                    str = "Failed: No Connectivity";
                    flushResult = FlushResult.NO_CONNECTIVITY;
                } else {
                    b0 b0Var = b0.f35528a;
                    str = String.format("Failed:\n  Response: %s\n  Error %s", Arrays.copyOf(new Object[]{graphResponse.toString(), error.toString()}, 2));
                    t9.m.d(str, "java.lang.String.format(format, *args)");
                    flushResult = FlushResult.SERVER_ERROR;
                }
            }
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            if (FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.APP_EVENTS)) {
                try {
                    string = new JSONArray((String) graphRequest.getTag()).toString(2);
                    t9.m.d(string, "{\n            val jsonArray = JSONArray(eventsJsonString)\n            jsonArray.toString(2)\n          }");
                } catch (JSONException unused) {
                    string = "<Can't encode events for debug logging>";
                }
                Logger.Companion companion = Logger.Companion;
                LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
                String str2 = TAG;
                t9.m.d(str2, "TAG");
                companion.log(loggingBehavior, str2, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s", String.valueOf(graphRequest.getGraphObject()), str, string);
            }
            if (error == null) {
                z10 = false;
            }
            sessionEventsState.clearInFlightAndStats(z10);
            FlushResult flushResult2 = FlushResult.NO_CONNECTIVITY;
            if (flushResult == flushResult2) {
                FacebookSdk facebookSdk2 = FacebookSdk.INSTANCE;
                FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.appevents.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        AppEventQueue.m29handleResponse$lambda5(accessTokenAppIdPair, sessionEventsState);
                    }
                });
            }
            if (flushResult == FlushResult.SUCCESS || flushStatistics.getResult() == flushResult2) {
                return;
            }
            flushStatistics.setResult(flushResult);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: handleResponse$lambda-5, reason: not valid java name */
    public static final void m29handleResponse$lambda5(AccessTokenAppIdPair accessTokenAppIdPair, SessionEventsState sessionEventsState) {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            t9.m.e(accessTokenAppIdPair, "$accessTokenAppId");
            t9.m.e(sessionEventsState, "$appEvents");
            AppEventStore appEventStore = AppEventStore.INSTANCE;
            AppEventStore.persistEvents(accessTokenAppIdPair, sessionEventsState);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    public static final void persistToDisk() {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            singleThreadExecutor.execute(new Runnable() { // from class: com.facebook.appevents.g
                @Override // java.lang.Runnable
                public final void run() {
                    AppEventQueue.m30persistToDisk$lambda1();
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: persistToDisk$lambda-1, reason: not valid java name */
    public static final void m30persistToDisk$lambda1() {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            AppEventStore appEventStore = AppEventStore.INSTANCE;
            AppEventStore.persistEvents(appEventCollection);
            appEventCollection = new AppEventCollection();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    public static final FlushStatistics sendEventsToServer(FlushReason flushReason, AppEventCollection appEventCollection2) {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return null;
        }
        try {
            t9.m.e(flushReason, "reason");
            t9.m.e(appEventCollection2, "appEventCollection");
            FlushStatistics flushStatistics = new FlushStatistics();
            List<GraphRequest> listBuildRequests = buildRequests(appEventCollection2, flushStatistics);
            if (!(!listBuildRequests.isEmpty())) {
                return null;
            }
            Logger.Companion companion = Logger.Companion;
            LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
            String str = TAG;
            t9.m.d(str, "TAG");
            companion.log(loggingBehavior, str, "Flushing %d events due to %s.", Integer.valueOf(flushStatistics.getNumEvents()), flushReason.toString());
            Iterator<GraphRequest> it = listBuildRequests.iterator();
            while (it.hasNext()) {
                it.next().executeAndWait();
            }
            return flushStatistics;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
            return null;
        }
    }
}
