package com.facebook.appevents.integrity;

import com.facebook.FacebookSdk;
import com.facebook.appevents.ml.ModelManager;
import com.facebook.internal.FetchedAppGateKeepersManager;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.vungle.mediation.BuildConfig;
import i9.t;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
import t9.m;

/* JADX INFO: compiled from: IntegrityManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class IntegrityManager {
    public static final IntegrityManager INSTANCE = new IntegrityManager();
    public static final String INTEGRITY_TYPE_ADDRESS = "address";
    public static final String INTEGRITY_TYPE_HEALTH = "health";
    public static final String INTEGRITY_TYPE_NONE = "none";
    private static final String RESTRICTIVE_ON_DEVICE_PARAMS_KEY = "_onDeviceParams";
    private static boolean enabled;
    private static boolean isSampleEnabled;

    private IntegrityManager() {
    }

    public static final void enable() {
        if (CrashShieldHandler.isObjectCrashing(IntegrityManager.class)) {
            return;
        }
        try {
            enabled = true;
            FetchedAppGateKeepersManager fetchedAppGateKeepersManager = FetchedAppGateKeepersManager.INSTANCE;
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            isSampleEnabled = FetchedAppGateKeepersManager.getGateKeeperForKey("FBSDKFeatureIntegritySample", FacebookSdk.getApplicationId(), false);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, IntegrityManager.class);
        }
    }

    private final String getIntegrityPredictionResult(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            float[] fArr = new float[30];
            for (int i10 = 0; i10 < 30; i10++) {
                fArr[i10] = 0.0f;
            }
            ModelManager modelManager = ModelManager.INSTANCE;
            String[] strArrPredict = ModelManager.predict(ModelManager.Task.MTML_INTEGRITY_DETECT, new float[][]{fArr}, new String[]{str});
            if (strArrPredict == null) {
                return INTEGRITY_TYPE_NONE;
            }
            String str2 = strArrPredict[0];
            return str2 == null ? INTEGRITY_TYPE_NONE : str2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public static final void processParameters(Map<String, String> map) {
        if (CrashShieldHandler.isObjectCrashing(IntegrityManager.class)) {
            return;
        }
        try {
            m.e(map, "parameters");
            if (!enabled || map.isEmpty()) {
                return;
            }
            try {
                List<String> listO = t.O(map.keySet());
                JSONObject jSONObject = new JSONObject();
                for (String str : listO) {
                    String str2 = map.get(str);
                    if (str2 == null) {
                        throw new IllegalStateException("Required value was null.".toString());
                    }
                    String str3 = str2;
                    IntegrityManager integrityManager = INSTANCE;
                    if (integrityManager.shouldFilter(str) || integrityManager.shouldFilter(str3)) {
                        map.remove(str);
                        if (!isSampleEnabled) {
                            str3 = BuildConfig.FLAVOR;
                        }
                        jSONObject.put(str, str3);
                    }
                }
                if (jSONObject.length() != 0) {
                    String string = jSONObject.toString();
                    m.d(string, "restrictiveParamJson.toString()");
                    map.put(RESTRICTIVE_ON_DEVICE_PARAMS_KEY, string);
                }
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, IntegrityManager.class);
        }
    }

    private final boolean shouldFilter(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            return !m.a(INTEGRITY_TYPE_NONE, getIntegrityPredictionResult(str));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return false;
        }
    }
}
