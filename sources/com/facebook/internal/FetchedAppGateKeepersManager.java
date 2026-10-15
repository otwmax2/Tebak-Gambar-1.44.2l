package com.facebook.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.gatekeeper.GateKeeper;
import com.facebook.internal.gatekeeper.GateKeeperRuntimeCache;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import t9.b0;
import t9.z;

/* JADX INFO: compiled from: FetchedAppGateKeepersManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FetchedAppGateKeepersManager {
    private static final String APPLICATION_FIELDS = "fields";
    private static final long APPLICATION_GATEKEEPER_CACHE_TIMEOUT = 3600000;
    private static final String APPLICATION_GATEKEEPER_EDGE = "mobile_sdk_gk";
    private static final String APPLICATION_GATEKEEPER_FIELD = "gatekeepers";
    private static final String APPLICATION_GRAPH_DATA = "data";
    private static final String APPLICATION_PLATFORM = "platform";
    private static final String APPLICATION_SDK_VERSION = "sdk_version";
    private static final String APP_GATEKEEPERS_PREFS_KEY_FORMAT = "com.facebook.internal.APP_GATEKEEPERS.%s";
    private static final String APP_GATEKEEPERS_PREFS_STORE = "com.facebook.internal.preferences.APP_GATEKEEPERS";
    private static final String APP_PLATFORM = "android";
    private static GateKeeperRuntimeCache gateKeeperRuntimeCache;
    private static Long timestamp;
    public static final FetchedAppGateKeepersManager INSTANCE = new FetchedAppGateKeepersManager();
    private static final String TAG = z.b(FetchedAppGateKeepersManager.class).a();
    private static final AtomicBoolean isLoading = new AtomicBoolean(false);
    private static final ConcurrentLinkedQueue<Callback> callbacks = new ConcurrentLinkedQueue<>();
    private static final Map<String, JSONObject> fetchedAppGateKeepers = new ConcurrentHashMap();

    /* JADX INFO: compiled from: FetchedAppGateKeepersManager.kt */
    public interface Callback {
        void onCompleted();
    }

    private FetchedAppGateKeepersManager() {
    }

    private final JSONObject getAppGateKeepersQueryResponse(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(APPLICATION_PLATFORM, "android");
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        bundle.putString(APPLICATION_SDK_VERSION, FacebookSdk.getSdkVersion());
        bundle.putString("fields", APPLICATION_GATEKEEPER_FIELD);
        GraphRequest.Companion companion = GraphRequest.Companion;
        b0 b0Var = b0.f35528a;
        String str2 = String.format("app/%s", Arrays.copyOf(new Object[]{APPLICATION_GATEKEEPER_EDGE}, 1));
        t9.m.d(str2, "java.lang.String.format(format, *args)");
        GraphRequest graphRequestNewGraphPathRequest = companion.newGraphPathRequest(null, str2, null);
        graphRequestNewGraphPathRequest.setParameters(bundle);
        JSONObject jsonObject = graphRequestNewGraphPathRequest.executeAndWait().getJsonObject();
        return jsonObject == null ? new JSONObject() : jsonObject;
    }

    public static final boolean getGateKeeperForKey(String str, String str2, boolean z10) {
        Boolean bool;
        t9.m.e(str, "name");
        Map<String, Boolean> gateKeepersForApplication = INSTANCE.getGateKeepersForApplication(str2);
        return (gateKeepersForApplication.containsKey(str) && (bool = gateKeepersForApplication.get(str)) != null) ? bool.booleanValue() : z10;
    }

    private final boolean isTimestampValid(Long l10) {
        return l10 != null && System.currentTimeMillis() - l10.longValue() < APPLICATION_GATEKEEPER_CACHE_TIMEOUT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: loadAppGateKeepersAsync$lambda-0, reason: not valid java name */
    public static final void m103loadAppGateKeepersAsync$lambda0(String str, Context context, String str2) {
        t9.m.e(str, "$applicationId");
        t9.m.e(context, "$context");
        t9.m.e(str2, "$gateKeepersKey");
        FetchedAppGateKeepersManager fetchedAppGateKeepersManager = INSTANCE;
        JSONObject appGateKeepersQueryResponse = fetchedAppGateKeepersManager.getAppGateKeepersQueryResponse(str);
        if (appGateKeepersQueryResponse.length() != 0) {
            parseAppGateKeepersFromJSON$facebook_core_release(str, appGateKeepersQueryResponse);
            context.getSharedPreferences(APP_GATEKEEPERS_PREFS_STORE, 0).edit().putString(str2, appGateKeepersQueryResponse.toString()).apply();
            timestamp = Long.valueOf(System.currentTimeMillis());
        }
        fetchedAppGateKeepersManager.pollCallbacks();
        isLoading.set(false);
    }

    public static final synchronized JSONObject parseAppGateKeepersFromJSON$facebook_core_release(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        JSONArray jSONArrayOptJSONArray;
        t9.m.e(str, "applicationId");
        jSONObject2 = fetchedAppGateKeepers.get(str);
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        int i10 = 0;
        JSONObject jSONObjectOptJSONObject = null;
        if (jSONObject != null && (jSONArrayOptJSONArray = jSONObject.optJSONArray("data")) != null) {
            jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(0);
        }
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray(APPLICATION_GATEKEEPER_FIELD);
        if (jSONArrayOptJSONArray2 == null) {
            jSONArrayOptJSONArray2 = new JSONArray();
        }
        int length = jSONArrayOptJSONArray2.length();
        if (length > 0) {
            while (true) {
                int i11 = i10 + 1;
                try {
                    JSONObject jSONObject3 = jSONArrayOptJSONArray2.getJSONObject(i10);
                    jSONObject2.put(jSONObject3.getString(SDKConstants.PARAM_KEY), jSONObject3.getBoolean(SDKConstants.PARAM_VALUE));
                } catch (JSONException e10) {
                    Utility utility = Utility.INSTANCE;
                    Utility.logd(Utility.LOG_TAG, e10);
                }
                if (i11 >= length) {
                    break;
                }
                i10 = i11;
            }
            fetchedAppGateKeepers.put(str, jSONObject2);
        } else {
            fetchedAppGateKeepers.put(str, jSONObject2);
        }
        return jSONObject2;
    }

    private final void pollCallbacks() {
        Handler handler = new Handler(Looper.getMainLooper());
        while (true) {
            ConcurrentLinkedQueue<Callback> concurrentLinkedQueue = callbacks;
            if (concurrentLinkedQueue.isEmpty()) {
                return;
            }
            final Callback callbackPoll = concurrentLinkedQueue.poll();
            if (callbackPoll != null) {
                handler.post(new Runnable() { // from class: com.facebook.internal.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        callbackPoll.onCompleted();
                    }
                });
            }
        }
    }

    public static final JSONObject queryAppGateKeepers(String str, boolean z10) {
        t9.m.e(str, "applicationId");
        if (!z10) {
            Map<String, JSONObject> map = fetchedAppGateKeepers;
            if (map.containsKey(str)) {
                JSONObject jSONObject = map.get(str);
                return jSONObject == null ? new JSONObject() : jSONObject;
            }
        }
        JSONObject appGateKeepersQueryResponse = INSTANCE.getAppGateKeepersQueryResponse(str);
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        Context applicationContext = FacebookSdk.getApplicationContext();
        b0 b0Var = b0.f35528a;
        String str2 = String.format(APP_GATEKEEPERS_PREFS_KEY_FORMAT, Arrays.copyOf(new Object[]{str}, 1));
        t9.m.d(str2, "java.lang.String.format(format, *args)");
        applicationContext.getSharedPreferences(APP_GATEKEEPERS_PREFS_STORE, 0).edit().putString(str2, appGateKeepersQueryResponse.toString()).apply();
        return parseAppGateKeepersFromJSON$facebook_core_release(str, appGateKeepersQueryResponse);
    }

    public static final void resetRuntimeGateKeeperCache() {
        GateKeeperRuntimeCache gateKeeperRuntimeCache2 = gateKeeperRuntimeCache;
        if (gateKeeperRuntimeCache2 == null) {
            return;
        }
        GateKeeperRuntimeCache.resetCache$default(gateKeeperRuntimeCache2, null, 1, null);
    }

    public static final void setRuntimeGateKeeper(String str, GateKeeper gateKeeper) {
        t9.m.e(str, "applicationId");
        t9.m.e(gateKeeper, "gateKeeper");
        GateKeeperRuntimeCache gateKeeperRuntimeCache2 = gateKeeperRuntimeCache;
        if ((gateKeeperRuntimeCache2 == null ? null : gateKeeperRuntimeCache2.getGateKeeper(str, gateKeeper.getName())) == null) {
            Log.w(TAG, "Missing gatekeeper runtime cache");
            return;
        }
        GateKeeperRuntimeCache gateKeeperRuntimeCache3 = gateKeeperRuntimeCache;
        if (gateKeeperRuntimeCache3 == null) {
            return;
        }
        gateKeeperRuntimeCache3.setGateKeeper(str, gateKeeper);
    }

    public static /* synthetic */ void setRuntimeGateKeeper$default(String str, GateKeeper gateKeeper, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            str = FacebookSdk.getApplicationId();
        }
        setRuntimeGateKeeper(str, gateKeeper);
    }

    public final Map<String, Boolean> getGateKeepersForApplication(String str) {
        loadAppGateKeepersAsync();
        if (str != null) {
            Map<String, JSONObject> map = fetchedAppGateKeepers;
            if (map.containsKey(str)) {
                GateKeeperRuntimeCache gateKeeperRuntimeCache2 = gateKeeperRuntimeCache;
                List<GateKeeper> listDumpGateKeepers = gateKeeperRuntimeCache2 == null ? null : gateKeeperRuntimeCache2.dumpGateKeepers(str);
                if (listDumpGateKeepers != null) {
                    HashMap map2 = new HashMap();
                    for (GateKeeper gateKeeper : listDumpGateKeepers) {
                        map2.put(gateKeeper.getName(), Boolean.valueOf(gateKeeper.getValue()));
                    }
                    return map2;
                }
                HashMap map3 = new HashMap();
                JSONObject jSONObject = map.get(str);
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    t9.m.d(next, SDKConstants.PARAM_KEY);
                    map3.put(next, Boolean.valueOf(jSONObject.optBoolean(next)));
                }
                GateKeeperRuntimeCache gateKeeperRuntimeCache3 = gateKeeperRuntimeCache;
                if (gateKeeperRuntimeCache3 == null) {
                    gateKeeperRuntimeCache3 = new GateKeeperRuntimeCache();
                }
                ArrayList arrayList = new ArrayList(map3.size());
                for (Map.Entry entry : map3.entrySet()) {
                    arrayList.add(new GateKeeper((String) entry.getKey(), ((Boolean) entry.getValue()).booleanValue()));
                }
                gateKeeperRuntimeCache3.setGateKeepers(str, arrayList);
                gateKeeperRuntimeCache = gateKeeperRuntimeCache3;
                return map3;
            }
        }
        return new HashMap();
    }

    public final void loadAppGateKeepersAsync() {
        loadAppGateKeepersAsync(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0044 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0046 A[Catch: all -> 0x008b, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0005, B:6:0x000a, B:8:0x001a, B:10:0x0022, B:13:0x0027, B:17:0x0046, B:19:0x0059, B:24:0x006a, B:25:0x006d, B:29:0x0077, B:33:0x0081, B:22:0x0061), top: B:39:0x0005, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final synchronized void loadAppGateKeepersAsync(com.facebook.internal.FetchedAppGateKeepersManager.Callback r8) {
        /*
            java.lang.Class<com.facebook.internal.FetchedAppGateKeepersManager> r0 = com.facebook.internal.FetchedAppGateKeepersManager.class
            monitor-enter(r0)
            if (r8 == 0) goto La
            java.util.concurrent.ConcurrentLinkedQueue<com.facebook.internal.FetchedAppGateKeepersManager$Callback> r1 = com.facebook.internal.FetchedAppGateKeepersManager.callbacks     // Catch: java.lang.Throwable -> L8b
            r1.add(r8)     // Catch: java.lang.Throwable -> L8b
        La:
            com.facebook.FacebookSdk r8 = com.facebook.FacebookSdk.INSTANCE     // Catch: java.lang.Throwable -> L8b
            java.lang.String r8 = com.facebook.FacebookSdk.getApplicationId()     // Catch: java.lang.Throwable -> L8b
            com.facebook.internal.FetchedAppGateKeepersManager r1 = com.facebook.internal.FetchedAppGateKeepersManager.INSTANCE     // Catch: java.lang.Throwable -> L8b
            java.lang.Long r2 = com.facebook.internal.FetchedAppGateKeepersManager.timestamp     // Catch: java.lang.Throwable -> L8b
            boolean r2 = r1.isTimestampValid(r2)     // Catch: java.lang.Throwable -> L8b
            if (r2 == 0) goto L27
            java.util.Map<java.lang.String, org.json.JSONObject> r2 = com.facebook.internal.FetchedAppGateKeepersManager.fetchedAppGateKeepers     // Catch: java.lang.Throwable -> L8b
            boolean r2 = r2.containsKey(r8)     // Catch: java.lang.Throwable -> L8b
            if (r2 == 0) goto L27
            r1.pollCallbacks()     // Catch: java.lang.Throwable -> L8b
            monitor-exit(r0)
            return
        L27:
            android.content.Context r1 = com.facebook.FacebookSdk.getApplicationContext()     // Catch: java.lang.Throwable -> L8b
            t9.b0 r2 = t9.b0.f35528a     // Catch: java.lang.Throwable -> L8b
            java.lang.String r2 = "com.facebook.internal.APP_GATEKEEPERS.%s"
            r3 = 1
            java.lang.Object[] r4 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L8b
            r5 = 0
            r4[r5] = r8     // Catch: java.lang.Throwable -> L8b
            java.lang.Object[] r4 = java.util.Arrays.copyOf(r4, r3)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r2 = java.lang.String.format(r2, r4)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r4 = "java.lang.String.format(format, *args)"
            t9.m.d(r2, r4)     // Catch: java.lang.Throwable -> L8b
            if (r1 != 0) goto L46
            monitor-exit(r0)
            return
        L46:
            java.lang.String r4 = "com.facebook.internal.preferences.APP_GATEKEEPERS"
            android.content.SharedPreferences r4 = r1.getSharedPreferences(r4, r5)     // Catch: java.lang.Throwable -> L8b
            r6 = 0
            java.lang.String r4 = r4.getString(r2, r6)     // Catch: java.lang.Throwable -> L8b
            com.facebook.internal.Utility r7 = com.facebook.internal.Utility.INSTANCE     // Catch: java.lang.Throwable -> L8b
            boolean r7 = com.facebook.internal.Utility.isNullOrEmpty(r4)     // Catch: java.lang.Throwable -> L8b
            if (r7 != 0) goto L6d
            org.json.JSONObject r7 = new org.json.JSONObject     // Catch: org.json.JSONException -> L60 java.lang.Throwable -> L8b
            r7.<init>(r4)     // Catch: org.json.JSONException -> L60 java.lang.Throwable -> L8b
            r6 = r7
            goto L68
        L60:
            r4 = move-exception
            com.facebook.internal.Utility r7 = com.facebook.internal.Utility.INSTANCE     // Catch: java.lang.Throwable -> L8b
            java.lang.String r7 = "FacebookSDK"
            com.facebook.internal.Utility.logd(r7, r4)     // Catch: java.lang.Throwable -> L8b
        L68:
            if (r6 == 0) goto L6d
            parseAppGateKeepersFromJSON$facebook_core_release(r8, r6)     // Catch: java.lang.Throwable -> L8b
        L6d:
            com.facebook.FacebookSdk r4 = com.facebook.FacebookSdk.INSTANCE     // Catch: java.lang.Throwable -> L8b
            java.util.concurrent.Executor r4 = com.facebook.FacebookSdk.getExecutor()     // Catch: java.lang.Throwable -> L8b
            if (r4 != 0) goto L77
            monitor-exit(r0)
            return
        L77:
            java.util.concurrent.atomic.AtomicBoolean r6 = com.facebook.internal.FetchedAppGateKeepersManager.isLoading     // Catch: java.lang.Throwable -> L8b
            boolean r3 = r6.compareAndSet(r5, r3)     // Catch: java.lang.Throwable -> L8b
            if (r3 != 0) goto L81
            monitor-exit(r0)
            return
        L81:
            com.facebook.internal.f r3 = new com.facebook.internal.f     // Catch: java.lang.Throwable -> L8b
            r3.<init>()     // Catch: java.lang.Throwable -> L8b
            r4.execute(r3)     // Catch: java.lang.Throwable -> L8b
            monitor-exit(r0)
            return
        L8b:
            r8 = move-exception
            monitor-exit(r0)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.FetchedAppGateKeepersManager.loadAppGateKeepersAsync(com.facebook.internal.FetchedAppGateKeepersManager$Callback):void");
    }
}
