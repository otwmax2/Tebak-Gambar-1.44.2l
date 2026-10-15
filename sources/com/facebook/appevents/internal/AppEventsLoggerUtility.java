package com.facebook.appevents.internal;

import android.content.Context;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import h9.q;
import i9.d0;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import t9.m;

/* JADX INFO: compiled from: AppEventsLoggerUtility.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AppEventsLoggerUtility {
    public static final AppEventsLoggerUtility INSTANCE = new AppEventsLoggerUtility();
    private static final Map<GraphAPIActivityType, String> API_ACTIVITY_TYPE_TO_STRING = d0.e(q.a(GraphAPIActivityType.MOBILE_INSTALL_EVENT, "MOBILE_APP_INSTALL"), q.a(GraphAPIActivityType.CUSTOM_APP_EVENTS, "CUSTOM_APP_EVENTS"));

    /* JADX INFO: compiled from: AppEventsLoggerUtility.kt */
    public enum GraphAPIActivityType {
        MOBILE_INSTALL_EVENT,
        CUSTOM_APP_EVENTS;

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static GraphAPIActivityType[] valuesCustom() {
            GraphAPIActivityType[] graphAPIActivityTypeArrValuesCustom = values();
            return (GraphAPIActivityType[]) Arrays.copyOf(graphAPIActivityTypeArrValuesCustom, graphAPIActivityTypeArrValuesCustom.length);
        }
    }

    private AppEventsLoggerUtility() {
    }

    public static final JSONObject getJSONObjectForGraphAPICall(GraphAPIActivityType graphAPIActivityType, AttributionIdentifiers attributionIdentifiers, String str, boolean z10, Context context) throws JSONException {
        m.e(graphAPIActivityType, "activityType");
        m.e(context, "context");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("event", API_ACTIVITY_TYPE_TO_STRING.get(graphAPIActivityType));
        String userID = AppEventsLogger.Companion.getUserID();
        if (userID != null) {
            jSONObject.put("app_user_id", userID);
        }
        Utility utility = Utility.INSTANCE;
        Utility.setAppEventAttributionParameters(jSONObject, attributionIdentifiers, str, z10, context);
        try {
            Utility.setAppEventExtendedDeviceInfoParameters(jSONObject, context);
        } catch (Exception e10) {
            Logger.Companion.log(LoggingBehavior.APP_EVENTS, "AppEvents", "Fetching extended device info parameters failed: '%s'", e10.toString());
        }
        Utility utility2 = Utility.INSTANCE;
        JSONObject dataProcessingOptions = Utility.getDataProcessingOptions();
        if (dataProcessingOptions != null) {
            Iterator<String> itKeys = dataProcessingOptions.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObject.put(next, dataProcessingOptions.get(next));
            }
        }
        jSONObject.put("application_package_name", context.getPackageName());
        return jSONObject;
    }
}
