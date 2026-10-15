package com.facebook.appevents.iap;

import android.content.SharedPreferences;
import ba.q;
import com.facebook.FacebookSdk;
import com.facebook.appevents.internal.AutomaticAnalyticsLogger;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import i9.d0;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONObject;
import t9.m;

/* JADX INFO: compiled from: InAppPurchaseLoggerManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class InAppPurchaseLoggerManager {
    private static final int CACHE_CLEAR_TIME_LIMIT_SEC = 604800;
    private static final String LAST_CLEARED_TIME = "LAST_CLEARED_TIME";
    private static final String LAST_QUERY_PURCHASE_HISTORY_TIME = "LAST_QUERY_PURCHASE_HISTORY_TIME";
    private static final String PRODUCT_DETAILS_STORE = "com.facebook.internal.iap.PRODUCT_DETAILS";
    private static final String PURCHASE_DETAILS_SET = "PURCHASE_DETAILS_SET";
    private static final int PURCHASE_IN_CACHE_INTERVAL = 86400;
    private static final String PURCHASE_TIME = "purchaseTime";
    private static SharedPreferences sharedPreferences;
    public static final InAppPurchaseLoggerManager INSTANCE = new InAppPurchaseLoggerManager();
    private static final Set<String> cachedPurchaseSet = new CopyOnWriteArraySet();
    private static final Map<String, Long> cachedPurchaseMap = new ConcurrentHashMap();

    private InAppPurchaseLoggerManager() {
    }

    public static final boolean eligibleQueryPurchaseHistory() {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseLoggerManager.class)) {
            return false;
        }
        try {
            INSTANCE.readPurchaseCache();
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            SharedPreferences sharedPreferences2 = sharedPreferences;
            if (sharedPreferences2 == null) {
                m.p("sharedPreferences");
                throw null;
            }
            long j10 = sharedPreferences2.getLong(LAST_QUERY_PURCHASE_HISTORY_TIME, 0L);
            if (j10 != 0 && jCurrentTimeMillis - j10 < PURCHASE_IN_CACHE_INTERVAL) {
                return false;
            }
            SharedPreferences sharedPreferences3 = sharedPreferences;
            if (sharedPreferences3 != null) {
                sharedPreferences3.edit().putLong(LAST_QUERY_PURCHASE_HISTORY_TIME, jCurrentTimeMillis).apply();
                return true;
            }
            m.p("sharedPreferences");
            throw null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseLoggerManager.class);
            return false;
        }
    }

    public static final void filterPurchaseLogging(Map<String, JSONObject> map, Map<String, ? extends JSONObject> map2) {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseLoggerManager.class)) {
            return;
        }
        try {
            m.e(map, "purchaseDetailsMap");
            m.e(map2, "skuDetailsMap");
            InAppPurchaseLoggerManager inAppPurchaseLoggerManager = INSTANCE;
            inAppPurchaseLoggerManager.readPurchaseCache();
            inAppPurchaseLoggerManager.logPurchases(inAppPurchaseLoggerManager.constructLoggingReadyMap$facebook_core_release(inAppPurchaseLoggerManager.cacheDeDupPurchase$facebook_core_release(map), map2));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseLoggerManager.class);
        }
    }

    private final void logPurchases(Map<String, String> map) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (key != null && value != null) {
                    AutomaticAnalyticsLogger automaticAnalyticsLogger = AutomaticAnalyticsLogger.INSTANCE;
                    AutomaticAnalyticsLogger.logPurchase(key, value, false);
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private final void readPurchaseCache() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            SharedPreferences sharedPreferences2 = FacebookSdk.getApplicationContext().getSharedPreferences("com.facebook.internal.SKU_DETAILS", 0);
            SharedPreferences sharedPreferences3 = FacebookSdk.getApplicationContext().getSharedPreferences("com.facebook.internal.PURCHASE", 0);
            if (sharedPreferences2.contains(LAST_CLEARED_TIME)) {
                sharedPreferences2.edit().clear().apply();
                sharedPreferences3.edit().clear().apply();
            }
            SharedPreferences sharedPreferences4 = FacebookSdk.getApplicationContext().getSharedPreferences(PRODUCT_DETAILS_STORE, 0);
            m.d(sharedPreferences4, "getApplicationContext().getSharedPreferences(PRODUCT_DETAILS_STORE, Context.MODE_PRIVATE)");
            sharedPreferences = sharedPreferences4;
            Set<String> set = cachedPurchaseSet;
            if (sharedPreferences4 == null) {
                m.p("sharedPreferences");
                throw null;
            }
            Set<String> stringSet = sharedPreferences4.getStringSet(PURCHASE_DETAILS_SET, new HashSet());
            if (stringSet == null) {
                stringSet = new HashSet<>();
            }
            set.addAll(stringSet);
            Iterator<String> it = set.iterator();
            while (it.hasNext()) {
                List listB0 = q.b0(it.next(), new String[]{";"}, false, 2, 2, null);
                cachedPurchaseMap.put((String) listB0.get(0), Long.valueOf(Long.parseLong((String) listB0.get(1))));
            }
            clearOutdatedProductInfoInCache$facebook_core_release();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final Map<String, JSONObject> cacheDeDupPurchase$facebook_core_release(Map<String, JSONObject> map) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            m.e(map, "purchaseDetailsMap");
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            for (Map.Entry entry : d0.l(map).entrySet()) {
                String str = (String) entry.getKey();
                JSONObject jSONObject = (JSONObject) entry.getValue();
                try {
                    if (jSONObject.has(SDKConstants.PARAM_PURCHASE_TOKEN)) {
                        String string = jSONObject.getString(SDKConstants.PARAM_PURCHASE_TOKEN);
                        if (cachedPurchaseMap.containsKey(string)) {
                            map.remove(str);
                        } else {
                            Set<String> set = cachedPurchaseSet;
                            StringBuilder sb = new StringBuilder();
                            sb.append((Object) string);
                            sb.append(';');
                            sb.append(jCurrentTimeMillis);
                            set.add(sb.toString());
                        }
                    }
                } catch (Exception unused) {
                }
            }
            SharedPreferences sharedPreferences2 = sharedPreferences;
            if (sharedPreferences2 != null) {
                sharedPreferences2.edit().putStringSet(PURCHASE_DETAILS_SET, cachedPurchaseSet).apply();
                return new HashMap(map);
            }
            m.p("sharedPreferences");
            throw null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public final void clearOutdatedProductInfoInCache$facebook_core_release() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            SharedPreferences sharedPreferences2 = sharedPreferences;
            if (sharedPreferences2 == null) {
                m.p("sharedPreferences");
                throw null;
            }
            long j10 = sharedPreferences2.getLong(LAST_CLEARED_TIME, 0L);
            if (j10 == 0) {
                SharedPreferences sharedPreferences3 = sharedPreferences;
                if (sharedPreferences3 != null) {
                    sharedPreferences3.edit().putLong(LAST_CLEARED_TIME, jCurrentTimeMillis).apply();
                    return;
                } else {
                    m.p("sharedPreferences");
                    throw null;
                }
            }
            if (jCurrentTimeMillis - j10 > 604800) {
                for (Map.Entry entry : d0.l(cachedPurchaseMap).entrySet()) {
                    String str = (String) entry.getKey();
                    long jLongValue = ((Number) entry.getValue()).longValue();
                    if (jCurrentTimeMillis - jLongValue > 86400) {
                        cachedPurchaseSet.remove(str + ';' + jLongValue);
                        cachedPurchaseMap.remove(str);
                    }
                }
                SharedPreferences sharedPreferences4 = sharedPreferences;
                if (sharedPreferences4 == null) {
                    m.p("sharedPreferences");
                    throw null;
                }
                sharedPreferences4.edit().putStringSet(PURCHASE_DETAILS_SET, cachedPurchaseSet).putLong(LAST_CLEARED_TIME, jCurrentTimeMillis).apply();
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final Map<String, String> constructLoggingReadyMap$facebook_core_release(Map<String, ? extends JSONObject> map, Map<String, ? extends JSONObject> map2) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            m.e(map, "purchaseDetailsMap");
            m.e(map2, "skuDetailsMap");
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, ? extends JSONObject> entry : map.entrySet()) {
                String key = entry.getKey();
                JSONObject value = entry.getValue();
                JSONObject jSONObject = map2.get(key);
                if (value != null && value.has(PURCHASE_TIME)) {
                    try {
                        if (jCurrentTimeMillis - (value.getLong(PURCHASE_TIME) / 1000) <= 86400 && jSONObject != null) {
                            String string = value.toString();
                            m.d(string, "purchaseDetail.toString()");
                            String string2 = jSONObject.toString();
                            m.d(string2, "skuDetail.toString()");
                            linkedHashMap.put(string, string2);
                        }
                    } catch (Exception unused) {
                    }
                }
            }
            return linkedHashMap;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }
}
