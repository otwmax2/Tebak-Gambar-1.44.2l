package com.facebook.appevents.cloudbridge;

import android.content.SharedPreferences;
import ba.p;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import i9.t;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import t9.m;

/* JADX INFO: compiled from: AppEventsCAPIManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AppEventsCAPIManager {
    private static final String SETTINGS_PATH = "/cloudbridge_settings";
    private static boolean isEnabled;
    public static final AppEventsCAPIManager INSTANCE = new AppEventsCAPIManager();
    private static final String TAG = AppEventsCAPIManager.class.getCanonicalName();

    private AppEventsCAPIManager() {
    }

    public static final void enable() {
        try {
            a aVar = new GraphRequest.Callback() { // from class: com.facebook.appevents.cloudbridge.a
                @Override // com.facebook.GraphRequest.Callback
                public final void onCompleted(GraphResponse graphResponse) {
                    AppEventsCAPIManager.m44enable$lambda0(graphResponse);
                }
            };
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            GraphRequest graphRequest = new GraphRequest(null, m.k(FacebookSdk.getApplicationId(), SETTINGS_PATH), null, HttpMethod.GET, aVar, null, 32, null);
            Logger.Companion companion = Logger.Companion;
            LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
            String str = TAG;
            if (str == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
            }
            companion.log(loggingBehavior, str, " \n\nCreating Graph Request: \n=============\n%s\n\n ", graphRequest);
            graphRequest.executeAsync();
        } catch (JSONException e10) {
            Logger.Companion companion2 = Logger.Companion;
            LoggingBehavior loggingBehavior2 = LoggingBehavior.APP_EVENTS;
            String str2 = TAG;
            Objects.requireNonNull(str2, "null cannot be cast to non-null type kotlin.String");
            companion2.log(loggingBehavior2, str2, " \n\nGraph Request Exception: \n=============\n%s\n\n ", h9.b.b(e10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: enable$lambda-0, reason: not valid java name */
    public static final void m44enable$lambda0(GraphResponse graphResponse) {
        m.e(graphResponse, "response");
        INSTANCE.getCAPIGSettingsFromGraphResponse$facebook_core_release(graphResponse);
    }

    public static final Map<String, Object> getSavedCloudBridgeCredentials$facebook_core_release() {
        if (CrashShieldHandler.isObjectCrashing(AppEventsCAPIManager.class)) {
            return null;
        }
        try {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            SharedPreferences sharedPreferences = FacebookSdk.getApplicationContext().getSharedPreferences(FacebookSdk.CLOUDBRIDGE_SAVED_CREDENTIALS, 0);
            if (sharedPreferences == null) {
                return null;
            }
            SettingsAPIFields settingsAPIFields = SettingsAPIFields.DATASETID;
            String string = sharedPreferences.getString(settingsAPIFields.getRawValue(), null);
            SettingsAPIFields settingsAPIFields2 = SettingsAPIFields.URL;
            String string2 = sharedPreferences.getString(settingsAPIFields2.getRawValue(), null);
            SettingsAPIFields settingsAPIFields3 = SettingsAPIFields.ACCESSKEY;
            String string3 = sharedPreferences.getString(settingsAPIFields3.getRawValue(), null);
            if (!(string == null || p.n(string))) {
                if (!(string2 == null || p.n(string2))) {
                    if (!(string3 == null || p.n(string3))) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        linkedHashMap.put(settingsAPIFields2.getRawValue(), string2);
                        linkedHashMap.put(settingsAPIFields.getRawValue(), string);
                        linkedHashMap.put(settingsAPIFields3.getRawValue(), string3);
                        Logger.Companion.log(LoggingBehavior.APP_EVENTS, TAG.toString(), " \n\nLoading Cloudbridge settings from saved Prefs: \n================\n DATASETID: %s\n URL: %s \n ACCESSKEY: %s \n\n ", string, string2, string3);
                        return linkedHashMap;
                    }
                }
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventsCAPIManager.class);
            return null;
        }
    }

    public final void getCAPIGSettingsFromGraphResponse$facebook_core_release(GraphResponse graphResponse) {
        m.e(graphResponse, "response");
        boolean zBooleanValue = false;
        if (graphResponse.getError() != null) {
            Logger.Companion companion = Logger.Companion;
            LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
            String str = TAG;
            Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.String");
            companion.log(loggingBehavior, str, " \n\nGraph Response Error: \n================\nResponse Error: %s\nResponse Error Exception: %s\n\n ", graphResponse.getError().toString(), String.valueOf(graphResponse.getError().getException()));
            Map<String, Object> savedCloudBridgeCredentials$facebook_core_release = getSavedCloudBridgeCredentials$facebook_core_release();
            if (savedCloudBridgeCredentials$facebook_core_release != null) {
                URL url = new URL(String.valueOf(savedCloudBridgeCredentials$facebook_core_release.get(SettingsAPIFields.URL.getRawValue())));
                AppEventsConversionsAPITransformerWebRequests appEventsConversionsAPITransformerWebRequests = AppEventsConversionsAPITransformerWebRequests.INSTANCE;
                AppEventsConversionsAPITransformerWebRequests.configure(String.valueOf(savedCloudBridgeCredentials$facebook_core_release.get(SettingsAPIFields.DATASETID.getRawValue())), url.getProtocol() + "://" + ((Object) url.getHost()), String.valueOf(savedCloudBridgeCredentials$facebook_core_release.get(SettingsAPIFields.ACCESSKEY.getRawValue())));
                isEnabled = true;
                return;
            }
            return;
        }
        Logger.Companion companion2 = Logger.Companion;
        LoggingBehavior loggingBehavior2 = LoggingBehavior.APP_EVENTS;
        String str2 = TAG;
        Objects.requireNonNull(str2, "null cannot be cast to non-null type kotlin.String");
        companion2.log(loggingBehavior2, str2, " \n\nGraph Response Received: \n================\n%s\n\n ", graphResponse);
        JSONObject jSONObject = graphResponse.getJSONObject();
        try {
            Utility utility = Utility.INSTANCE;
            Object obj = jSONObject == null ? null : jSONObject.get("data");
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type org.json.JSONArray");
            }
            Map<String, ? extends Object> mapConvertJSONObjectToHashMap = Utility.convertJSONObjectToHashMap(new JSONObject((String) t.w(Utility.convertJSONArrayToList((JSONArray) obj))));
            String str3 = (String) mapConvertJSONObjectToHashMap.get(SettingsAPIFields.URL.getRawValue());
            String str4 = (String) mapConvertJSONObjectToHashMap.get(SettingsAPIFields.DATASETID.getRawValue());
            String str5 = (String) mapConvertJSONObjectToHashMap.get(SettingsAPIFields.ACCESSKEY.getRawValue());
            if (str3 == null || str4 == null || str5 == null) {
                m.d(str2, "TAG");
                companion2.log(loggingBehavior2, str2, "CloudBridge Settings API response doesn't have valid data");
                return;
            }
            try {
                AppEventsConversionsAPITransformerWebRequests appEventsConversionsAPITransformerWebRequests2 = AppEventsConversionsAPITransformerWebRequests.INSTANCE;
                AppEventsConversionsAPITransformerWebRequests.configure(str4, str3, str5);
                setSavedCloudBridgeCredentials$facebook_core_release(mapConvertJSONObjectToHashMap);
                SettingsAPIFields settingsAPIFields = SettingsAPIFields.ENABLED;
                if (mapConvertJSONObjectToHashMap.get(settingsAPIFields.getRawValue()) != null) {
                    Object obj2 = mapConvertJSONObjectToHashMap.get(settingsAPIFields.getRawValue());
                    Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.Boolean");
                    zBooleanValue = ((Boolean) obj2).booleanValue();
                }
                isEnabled = zBooleanValue;
            } catch (MalformedURLException e10) {
                Logger.Companion companion3 = Logger.Companion;
                LoggingBehavior loggingBehavior3 = LoggingBehavior.APP_EVENTS;
                String str6 = TAG;
                m.d(str6, "TAG");
                companion3.log(loggingBehavior3, str6, "CloudBridge Settings API response doesn't have valid url\n %s ", h9.b.b(e10));
            }
        } catch (NullPointerException e11) {
            Logger.Companion companion4 = Logger.Companion;
            LoggingBehavior loggingBehavior4 = LoggingBehavior.APP_EVENTS;
            String str7 = TAG;
            m.d(str7, "TAG");
            companion4.log(loggingBehavior4, str7, "CloudBridge Settings API response is not a valid json: \n%s ", h9.b.b(e11));
        } catch (JSONException e12) {
            Logger.Companion companion5 = Logger.Companion;
            LoggingBehavior loggingBehavior5 = LoggingBehavior.APP_EVENTS;
            String str8 = TAG;
            m.d(str8, "TAG");
            companion5.log(loggingBehavior5, str8, "CloudBridge Settings API response is not a valid json: \n%s ", h9.b.b(e12));
        }
    }

    public final boolean isEnabled$facebook_core_release() {
        return isEnabled;
    }

    public final void setEnabled$facebook_core_release(boolean z10) {
        isEnabled = z10;
    }

    public final void setSavedCloudBridgeCredentials$facebook_core_release(Map<String, ? extends Object> map) {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        SharedPreferences sharedPreferences = FacebookSdk.getApplicationContext().getSharedPreferences(FacebookSdk.CLOUDBRIDGE_SAVED_CREDENTIALS, 0);
        if (sharedPreferences == null) {
            return;
        }
        if (map == null) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.clear();
            editorEdit.apply();
            return;
        }
        SettingsAPIFields settingsAPIFields = SettingsAPIFields.DATASETID;
        Object obj = map.get(settingsAPIFields.getRawValue());
        SettingsAPIFields settingsAPIFields2 = SettingsAPIFields.URL;
        Object obj2 = map.get(settingsAPIFields2.getRawValue());
        SettingsAPIFields settingsAPIFields3 = SettingsAPIFields.ACCESSKEY;
        Object obj3 = map.get(settingsAPIFields3.getRawValue());
        if (obj == null || obj2 == null || obj3 == null) {
            return;
        }
        SharedPreferences.Editor editorEdit2 = sharedPreferences.edit();
        editorEdit2.putString(settingsAPIFields.getRawValue(), obj.toString());
        editorEdit2.putString(settingsAPIFields2.getRawValue(), obj2.toString());
        editorEdit2.putString(settingsAPIFields3.getRawValue(), obj3.toString());
        editorEdit2.apply();
        Logger.Companion.log(LoggingBehavior.APP_EVENTS, TAG.toString(), " \n\nSaving Cloudbridge settings from saved Prefs: \n================\n DATASETID: %s\n URL: %s \n ACCESSKEY: %s \n\n ", obj, obj2, obj3);
    }
}
