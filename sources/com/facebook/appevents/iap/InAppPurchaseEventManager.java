package com.facebook.appevents.iap;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.IBinder;
import ba.q;
import com.facebook.FacebookSdk;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.vungle.mediation.BuildConfig;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import t9.m;

/* JADX INFO: compiled from: InAppPurchaseEventManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class InAppPurchaseEventManager {
    private static final String AS_INTERFACE = "asInterface";
    private static final int CACHE_CLEAR_TIME_LIMIT_SEC = 604800;
    private static final String DETAILS_LIST = "DETAILS_LIST";
    private static final String GET_PURCHASES = "getPurchases";
    private static final String GET_PURCHASE_HISTORY = "getPurchaseHistory";
    private static final String GET_SKU_DETAILS = "getSkuDetails";
    private static final String INAPP = "inapp";
    private static final String INAPP_CONTINUATION_TOKEN = "INAPP_CONTINUATION_TOKEN";
    private static final String INAPP_PURCHASE_DATA_LIST = "INAPP_PURCHASE_DATA_LIST";
    private static final String IN_APP_BILLING_SERVICE = "com.android.vending.billing.IInAppBillingService";
    private static final String IN_APP_BILLING_SERVICE_STUB = "com.android.vending.billing.IInAppBillingService$Stub";
    private static final String IS_BILLING_SUPPORTED = "isBillingSupported";
    private static final String ITEM_ID_LIST = "ITEM_ID_LIST";
    private static final String LAST_CLEARED_TIME = "LAST_CLEARED_TIME";
    private static final int MAX_QUERY_PURCHASE_NUM = 30;
    private static final String PACKAGE_NAME;
    private static final int PURCHASE_EXPIRE_TIME_SEC = 86400;
    private static final String PURCHASE_INAPP_STORE = "com.facebook.internal.PURCHASE";
    private static final int PURCHASE_STOP_QUERY_TIME_SEC = 1200;
    private static final String RESPONSE_CODE = "RESPONSE_CODE";
    private static final String SKU_DETAILS_STORE = "com.facebook.internal.SKU_DETAILS";
    private static final int SKU_DETAIL_EXPIRE_TIME_SEC = 43200;
    private static final String SUBSCRIPTION = "subs";
    private static final SharedPreferences purchaseInappSharedPrefs;
    private static final SharedPreferences skuDetailSharedPrefs;
    public static final InAppPurchaseEventManager INSTANCE = new InAppPurchaseEventManager();
    private static final HashMap<String, Method> methodMap = new HashMap<>();
    private static final HashMap<String, Class<?>> classMap = new HashMap<>();

    static {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        PACKAGE_NAME = FacebookSdk.getApplicationContext().getPackageName();
        skuDetailSharedPrefs = FacebookSdk.getApplicationContext().getSharedPreferences(SKU_DETAILS_STORE, 0);
        purchaseInappSharedPrefs = FacebookSdk.getApplicationContext().getSharedPreferences(PURCHASE_INAPP_STORE, 0);
    }

    private InAppPurchaseEventManager() {
    }

    public static final Object asInterface(Context context, IBinder iBinder) {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseEventManager.class)) {
            return null;
        }
        try {
            m.e(context, "context");
            return INSTANCE.invokeMethod(context, IN_APP_BILLING_SERVICE_STUB, AS_INTERFACE, null, new Object[]{iBinder});
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseEventManager.class);
            return null;
        }
    }

    public static final void clearSkuDetailsCache() {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseEventManager.class)) {
            return;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            SharedPreferences sharedPreferences = skuDetailSharedPrefs;
            long j10 = sharedPreferences.getLong(LAST_CLEARED_TIME, 0L);
            if (j10 == 0) {
                sharedPreferences.edit().putLong(LAST_CLEARED_TIME, jCurrentTimeMillis).apply();
            } else if (jCurrentTimeMillis - j10 > CACHE_CLEAR_TIME_LIMIT_SEC) {
                sharedPreferences.edit().clear().putLong(LAST_CLEARED_TIME, jCurrentTimeMillis).apply();
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseEventManager.class);
        }
    }

    private final ArrayList<String> filterPurchases(ArrayList<String> arrayList) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            ArrayList<String> arrayList2 = new ArrayList<>();
            SharedPreferences.Editor editorEdit = purchaseInappSharedPrefs.edit();
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            for (String str : arrayList) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    String string = jSONObject.getString("productId");
                    long j10 = jSONObject.getLong("purchaseTime");
                    String string2 = jSONObject.getString(SDKConstants.PARAM_PURCHASE_TOKEN);
                    if (jCurrentTimeMillis - (j10 / 1000) <= 86400 && !m.a(purchaseInappSharedPrefs.getString(string, BuildConfig.FLAVOR), string2)) {
                        editorEdit.putString(string, string2);
                        arrayList2.add(str);
                    }
                } catch (JSONException unused) {
                }
            }
            editorEdit.apply();
            return arrayList2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    private final Class<?> getClass(Context context, String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            HashMap<String, Class<?>> map = classMap;
            Class<?> cls = map.get(str);
            if (cls != null) {
                return cls;
            }
            InAppPurchaseUtils inAppPurchaseUtils = InAppPurchaseUtils.INSTANCE;
            Class<?> classFromContext$facebook_core_release = InAppPurchaseUtils.getClassFromContext$facebook_core_release(context, str);
            if (classFromContext$facebook_core_release != null) {
                map.put(str, classFromContext$facebook_core_release);
            }
            return classFromContext$facebook_core_release;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final Method getMethod(Class<?> cls, String str) {
        Class[] clsArr;
        Method declaredMethod$facebook_core_release;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            HashMap<String, Method> map = methodMap;
            Method method = map.get(str);
            if (method != null) {
                return method;
            }
            switch (str.hashCode()) {
                case -1801122596:
                    if (str.equals(GET_PURCHASES)) {
                        Class cls2 = Integer.TYPE;
                        m.d(cls2, "TYPE");
                        clsArr = new Class[]{cls2, String.class, String.class, String.class};
                    }
                    break;
                case -1450694211:
                    if (str.equals(IS_BILLING_SUPPORTED)) {
                        Class cls3 = Integer.TYPE;
                        m.d(cls3, "TYPE");
                        clsArr = new Class[]{cls3, String.class, String.class};
                    }
                    break;
                case -1123215065:
                    clsArr = !str.equals(AS_INTERFACE) ? null : new Class[]{IBinder.class};
                    break;
                case -594356707:
                    if (str.equals(GET_PURCHASE_HISTORY)) {
                        Class cls4 = Integer.TYPE;
                        m.d(cls4, "TYPE");
                        clsArr = new Class[]{cls4, String.class, String.class, String.class, Bundle.class};
                    }
                    break;
                case -573310373:
                    if (str.equals(GET_SKU_DETAILS)) {
                        Class cls5 = Integer.TYPE;
                        m.d(cls5, "TYPE");
                        clsArr = new Class[]{cls5, String.class, String.class, Bundle.class};
                    }
                    break;
                default:
                    break;
            }
            if (clsArr == null) {
                InAppPurchaseUtils inAppPurchaseUtils = InAppPurchaseUtils.INSTANCE;
                declaredMethod$facebook_core_release = InAppPurchaseUtils.getDeclaredMethod$facebook_core_release(cls, str, null);
            } else {
                InAppPurchaseUtils inAppPurchaseUtils2 = InAppPurchaseUtils.INSTANCE;
                declaredMethod$facebook_core_release = InAppPurchaseUtils.getDeclaredMethod$facebook_core_release(cls, str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
            }
            if (declaredMethod$facebook_core_release != null) {
                map.put(str, declaredMethod$facebook_core_release);
            }
            return declaredMethod$facebook_core_release;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.util.ArrayList<java.lang.String> getPurchaseHistory(android.content.Context r19, java.lang.Object r20, java.lang.String r21) {
        /*
            r18 = this;
            boolean r0 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.isObjectCrashing(r18)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L9b
            r0.<init>()     // Catch: java.lang.Throwable -> L9b
            boolean r2 = r18.isBillingSupported(r19, r20, r21)     // Catch: java.lang.Throwable -> L9b
            if (r2 == 0) goto L9a
            r2 = 0
            r3 = r1
            r4 = 0
            r5 = 0
        L17:
            r6 = 5
            java.lang.Object[] r12 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L9b
            r6 = 6
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Throwable -> L9b
            r12[r2] = r6     // Catch: java.lang.Throwable -> L9b
            java.lang.String r6 = com.facebook.appevents.iap.InAppPurchaseEventManager.PACKAGE_NAME     // Catch: java.lang.Throwable -> L9b
            r13 = 1
            r12[r13] = r6     // Catch: java.lang.Throwable -> L9b
            r6 = 2
            r12[r6] = r21     // Catch: java.lang.Throwable -> L9b
            r6 = 3
            r12[r6] = r3     // Catch: java.lang.Throwable -> L9b
            r3 = 4
            android.os.Bundle r6 = new android.os.Bundle     // Catch: java.lang.Throwable -> L9b
            r6.<init>()     // Catch: java.lang.Throwable -> L9b
            r12[r3] = r6     // Catch: java.lang.Throwable -> L9b
            java.lang.String r9 = "com.android.vending.billing.IInAppBillingService"
            java.lang.String r10 = "getPurchaseHistory"
            r7 = r18
            r8 = r19
            r11 = r20
            java.lang.Object r3 = r7.invokeMethod(r8, r9, r10, r11, r12)     // Catch: java.lang.Throwable -> L9b
            if (r3 == 0) goto L91
            long r6 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L9b
            r8 = 1000(0x3e8, double:4.94E-321)
            long r6 = r6 / r8
            android.os.Bundle r3 = (android.os.Bundle) r3     // Catch: java.lang.Throwable -> L9b
            java.lang.String r10 = "RESPONSE_CODE"
            int r10 = r3.getInt(r10)     // Catch: java.lang.Throwable -> L9b
            if (r10 != 0) goto L91
            java.lang.String r10 = "INAPP_PURCHASE_DATA_LIST"
            java.util.ArrayList r10 = r3.getStringArrayList(r10)     // Catch: java.lang.Throwable -> L9b
            if (r10 != 0) goto L5e
            goto L91
        L5e:
            java.util.Iterator r10 = r10.iterator()     // Catch: java.lang.Throwable -> L9b
        L62:
            boolean r11 = r10.hasNext()     // Catch: java.lang.Throwable -> L9b
            if (r11 == 0) goto L8a
            java.lang.Object r11 = r10.next()     // Catch: java.lang.Throwable -> L9b
            java.lang.String r11 = (java.lang.String) r11     // Catch: java.lang.Throwable -> L9b
            org.json.JSONObject r12 = new org.json.JSONObject     // Catch: org.json.JSONException -> L62 java.lang.Throwable -> L9b
            r12.<init>(r11)     // Catch: org.json.JSONException -> L62 java.lang.Throwable -> L9b
            java.lang.String r14 = "purchaseTime"
            long r14 = r12.getLong(r14)     // Catch: org.json.JSONException -> L62 java.lang.Throwable -> L9b
            long r14 = r14 / r8
            long r14 = r6 - r14
            r16 = 1200(0x4b0, double:5.93E-321)
            int r12 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r12 <= 0) goto L84
            r5 = 1
            goto L8a
        L84:
            r0.add(r11)     // Catch: org.json.JSONException -> L62 java.lang.Throwable -> L9b
            int r4 = r4 + 1
            goto L62
        L8a:
            java.lang.String r6 = "INAPP_CONTINUATION_TOKEN"
            java.lang.String r3 = r3.getString(r6)     // Catch: java.lang.Throwable -> L9b
            goto L92
        L91:
            r3 = r1
        L92:
            r6 = 30
            if (r4 >= r6) goto L9a
            if (r3 == 0) goto L9a
            if (r5 == 0) goto L17
        L9a:
            return r0
        L9b:
            r0 = move-exception
            r2 = r18
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.handleThrowable(r0, r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.iap.InAppPurchaseEventManager.getPurchaseHistory(android.content.Context, java.lang.Object, java.lang.String):java.util.ArrayList");
    }

    public static final ArrayList<String> getPurchaseHistoryInapp(Context context, Object obj) {
        InAppPurchaseEventManager inAppPurchaseEventManager;
        Class<?> cls;
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseEventManager.class)) {
            return null;
        }
        try {
            m.e(context, "context");
            ArrayList<String> arrayList = new ArrayList<>();
            return (obj == null || (cls = (inAppPurchaseEventManager = INSTANCE).getClass(context, IN_APP_BILLING_SERVICE)) == null || inAppPurchaseEventManager.getMethod(cls, GET_PURCHASE_HISTORY) == null) ? arrayList : inAppPurchaseEventManager.filterPurchases(inAppPurchaseEventManager.getPurchaseHistory(context, obj, INAPP));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseEventManager.class);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.util.ArrayList<java.lang.String> getPurchases(android.content.Context r13, java.lang.Object r14, java.lang.String r15) {
        /*
            r12 = this;
            boolean r0 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.isObjectCrashing(r12)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L63
            r0.<init>()     // Catch: java.lang.Throwable -> L63
            if (r14 != 0) goto L10
            return r0
        L10:
            boolean r2 = r12.isBillingSupported(r13, r14, r15)     // Catch: java.lang.Throwable -> L63
            if (r2 == 0) goto L62
            r2 = 0
            r3 = r1
            r4 = 0
        L19:
            r5 = 4
            java.lang.Object[] r11 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> L63
            r5 = 3
            java.lang.Integer r6 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L63
            r11[r2] = r6     // Catch: java.lang.Throwable -> L63
            r6 = 1
            java.lang.String r7 = com.facebook.appevents.iap.InAppPurchaseEventManager.PACKAGE_NAME     // Catch: java.lang.Throwable -> L63
            r11[r6] = r7     // Catch: java.lang.Throwable -> L63
            r6 = 2
            r11[r6] = r15     // Catch: java.lang.Throwable -> L63
            r11[r5] = r3     // Catch: java.lang.Throwable -> L63
            java.lang.String r8 = "com.android.vending.billing.IInAppBillingService"
            java.lang.String r9 = "getPurchases"
            r6 = r12
            r7 = r13
            r10 = r14
            java.lang.Object r3 = r6.invokeMethod(r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L63
            if (r3 == 0) goto L5b
            android.os.Bundle r3 = (android.os.Bundle) r3     // Catch: java.lang.Throwable -> L63
            java.lang.String r5 = "RESPONSE_CODE"
            int r5 = r3.getInt(r5)     // Catch: java.lang.Throwable -> L63
            if (r5 != 0) goto L5b
            java.lang.String r5 = "INAPP_PURCHASE_DATA_LIST"
            java.util.ArrayList r5 = r3.getStringArrayList(r5)     // Catch: java.lang.Throwable -> L63
            if (r5 == 0) goto L62
            int r6 = r5.size()     // Catch: java.lang.Throwable -> L63
            int r4 = r4 + r6
            r0.addAll(r5)     // Catch: java.lang.Throwable -> L63
            java.lang.String r5 = "INAPP_CONTINUATION_TOKEN"
            java.lang.String r3 = r3.getString(r5)     // Catch: java.lang.Throwable -> L63
            goto L5c
        L5b:
            r3 = r1
        L5c:
            r5 = 30
            if (r4 >= r5) goto L62
            if (r3 != 0) goto L19
        L62:
            return r0
        L63:
            r13 = move-exception
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.handleThrowable(r13, r12)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.iap.InAppPurchaseEventManager.getPurchases(android.content.Context, java.lang.Object, java.lang.String):java.util.ArrayList");
    }

    public static final ArrayList<String> getPurchasesInapp(Context context, Object obj) {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseEventManager.class)) {
            return null;
        }
        try {
            m.e(context, "context");
            InAppPurchaseEventManager inAppPurchaseEventManager = INSTANCE;
            return inAppPurchaseEventManager.filterPurchases(inAppPurchaseEventManager.getPurchases(context, obj, INAPP));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseEventManager.class);
            return null;
        }
    }

    public static final ArrayList<String> getPurchasesSubs(Context context, Object obj) {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseEventManager.class)) {
            return null;
        }
        try {
            m.e(context, "context");
            InAppPurchaseEventManager inAppPurchaseEventManager = INSTANCE;
            return inAppPurchaseEventManager.filterPurchases(inAppPurchaseEventManager.getPurchases(context, obj, SUBSCRIPTION));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseEventManager.class);
            return null;
        }
    }

    public static final Map<String, String> getSkuDetails(Context context, ArrayList<String> arrayList, Object obj, boolean z10) {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseEventManager.class)) {
            return null;
        }
        try {
            m.e(context, "context");
            m.e(arrayList, "skuList");
            Map<String, String> skuDetailsFromCache = INSTANCE.readSkuDetailsFromCache(arrayList);
            ArrayList<String> arrayList2 = new ArrayList<>();
            for (String str : arrayList) {
                if (!skuDetailsFromCache.containsKey(str)) {
                    arrayList2.add(str);
                }
            }
            skuDetailsFromCache.putAll(INSTANCE.getSkuDetailsFromGoogle(context, arrayList2, obj, z10));
            return skuDetailsFromCache;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseEventManager.class);
            return null;
        }
    }

    private final Map<String, String> getSkuDetailsFromGoogle(Context context, ArrayList<String> arrayList, Object obj, boolean z10) {
        int size;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            Map<String, String> linkedHashMap = new LinkedHashMap<>();
            if (obj != null && !arrayList.isEmpty()) {
                Bundle bundle = new Bundle();
                bundle.putStringArrayList(ITEM_ID_LIST, arrayList);
                Object[] objArr = new Object[4];
                int i10 = 0;
                objArr[0] = 3;
                objArr[1] = PACKAGE_NAME;
                objArr[2] = z10 ? SUBSCRIPTION : INAPP;
                objArr[3] = bundle;
                Object objInvokeMethod = invokeMethod(context, IN_APP_BILLING_SERVICE, GET_SKU_DETAILS, obj, objArr);
                if (objInvokeMethod != null) {
                    Bundle bundle2 = (Bundle) objInvokeMethod;
                    if (bundle2.getInt(RESPONSE_CODE) == 0) {
                        ArrayList<String> stringArrayList = bundle2.getStringArrayList(DETAILS_LIST);
                        if (stringArrayList != null && arrayList.size() == stringArrayList.size() && arrayList.size() - 1 >= 0) {
                            while (true) {
                                int i11 = i10 + 1;
                                String str = arrayList.get(i10);
                                m.d(str, "skuList[i]");
                                String str2 = stringArrayList.get(i10);
                                m.d(str2, "skuDetailsList[i]");
                                linkedHashMap.put(str, str2);
                                if (i11 > size) {
                                    break;
                                }
                                i10 = i11;
                            }
                        }
                        writeSkuDetailsToCache(linkedHashMap);
                    }
                }
            }
            return linkedHashMap;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    private final Object invokeMethod(Context context, String str, String str2, Object obj, Object[] objArr) {
        Method method;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            Class<?> cls = getClass(context, str);
            if (cls == null || (method = getMethod(cls, str2)) == null) {
                return null;
            }
            InAppPurchaseUtils inAppPurchaseUtils = InAppPurchaseUtils.INSTANCE;
            return InAppPurchaseUtils.invokeMethod(cls, method, obj, Arrays.copyOf(objArr, objArr.length));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    private final boolean isBillingSupported(Context context, Object obj, String str) {
        if (CrashShieldHandler.isObjectCrashing(this) || obj == null) {
            return false;
        }
        try {
            Object objInvokeMethod = invokeMethod(context, IN_APP_BILLING_SERVICE, IS_BILLING_SUPPORTED, obj, new Object[]{3, PACKAGE_NAME, str});
            if (objInvokeMethod != null) {
                return ((Integer) objInvokeMethod).intValue() == 0;
            }
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return false;
        }
    }

    private final Map<String, String> readSkuDetailsFromCache(ArrayList<String> arrayList) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            for (String str : arrayList) {
                String string = skuDetailSharedPrefs.getString(str, null);
                if (string != null) {
                    List listB0 = q.b0(string, new String[]{";"}, false, 2, 2, null);
                    if (jCurrentTimeMillis - Long.parseLong((String) listB0.get(0)) < 43200) {
                        m.d(str, "sku");
                        linkedHashMap.put(str, listB0.get(1));
                    }
                }
            }
            return linkedHashMap;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    private final void writeSkuDetailsToCache(Map<String, String> map) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            SharedPreferences.Editor editorEdit = skuDetailSharedPrefs.edit();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                editorEdit.putString(entry.getKey(), jCurrentTimeMillis + ';' + entry.getValue());
            }
            editorEdit.apply();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final boolean hasFreeTrialPeirod(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            m.e(str, "skuDetail");
            try {
                String strOptString = new JSONObject(str).optString("freeTrialPeriod");
                if (strOptString != null) {
                    return strOptString.length() > 0;
                }
                return false;
            } catch (JSONException unused) {
                return false;
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return false;
        }
    }
}
