package com.facebook.internal;

import android.os.Bundle;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: BundleJSONConverter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class BundleJSONConverter {
    public static final BundleJSONConverter INSTANCE = new BundleJSONConverter();
    private static final Map<Class<?>, Setter> SETTERS;

    /* JADX INFO: compiled from: BundleJSONConverter.kt */
    public interface Setter {
        void setOnBundle(Bundle bundle, String str, Object obj) throws JSONException;

        void setOnJSON(JSONObject jSONObject, String str, Object obj) throws JSONException;
    }

    static {
        HashMap map = new HashMap();
        SETTERS = map;
        map.put(Boolean.class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.1
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void setOnBundle(Bundle bundle, String str, Object obj) throws JSONException {
                t9.m.e(bundle, "bundle");
                t9.m.e(str, SDKConstants.PARAM_KEY);
                t9.m.e(obj, SDKConstants.PARAM_VALUE);
                bundle.putBoolean(str, ((Boolean) obj).booleanValue());
            }

            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void setOnJSON(JSONObject jSONObject, String str, Object obj) throws JSONException {
                t9.m.e(jSONObject, "json");
                t9.m.e(str, SDKConstants.PARAM_KEY);
                t9.m.e(obj, SDKConstants.PARAM_VALUE);
                jSONObject.put(str, obj);
            }
        });
        map.put(Integer.class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.2
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void setOnBundle(Bundle bundle, String str, Object obj) throws JSONException {
                t9.m.e(bundle, "bundle");
                t9.m.e(str, SDKConstants.PARAM_KEY);
                t9.m.e(obj, SDKConstants.PARAM_VALUE);
                bundle.putInt(str, ((Integer) obj).intValue());
            }

            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void setOnJSON(JSONObject jSONObject, String str, Object obj) throws JSONException {
                t9.m.e(jSONObject, "json");
                t9.m.e(str, SDKConstants.PARAM_KEY);
                t9.m.e(obj, SDKConstants.PARAM_VALUE);
                jSONObject.put(str, obj);
            }
        });
        map.put(Long.class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.3
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void setOnBundle(Bundle bundle, String str, Object obj) throws JSONException {
                t9.m.e(bundle, "bundle");
                t9.m.e(str, SDKConstants.PARAM_KEY);
                t9.m.e(obj, SDKConstants.PARAM_VALUE);
                bundle.putLong(str, ((Long) obj).longValue());
            }

            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void setOnJSON(JSONObject jSONObject, String str, Object obj) throws JSONException {
                t9.m.e(jSONObject, "json");
                t9.m.e(str, SDKConstants.PARAM_KEY);
                t9.m.e(obj, SDKConstants.PARAM_VALUE);
                jSONObject.put(str, obj);
            }
        });
        map.put(Double.class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.4
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void setOnBundle(Bundle bundle, String str, Object obj) throws JSONException {
                t9.m.e(bundle, "bundle");
                t9.m.e(str, SDKConstants.PARAM_KEY);
                t9.m.e(obj, SDKConstants.PARAM_VALUE);
                bundle.putDouble(str, ((Double) obj).doubleValue());
            }

            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void setOnJSON(JSONObject jSONObject, String str, Object obj) throws JSONException {
                t9.m.e(jSONObject, "json");
                t9.m.e(str, SDKConstants.PARAM_KEY);
                t9.m.e(obj, SDKConstants.PARAM_VALUE);
                jSONObject.put(str, obj);
            }
        });
        map.put(String.class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.5
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void setOnBundle(Bundle bundle, String str, Object obj) throws JSONException {
                t9.m.e(bundle, "bundle");
                t9.m.e(str, SDKConstants.PARAM_KEY);
                t9.m.e(obj, SDKConstants.PARAM_VALUE);
                bundle.putString(str, (String) obj);
            }

            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void setOnJSON(JSONObject jSONObject, String str, Object obj) throws JSONException {
                t9.m.e(jSONObject, "json");
                t9.m.e(str, SDKConstants.PARAM_KEY);
                t9.m.e(obj, SDKConstants.PARAM_VALUE);
                jSONObject.put(str, obj);
            }
        });
        map.put(String[].class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.6
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void setOnBundle(Bundle bundle, String str, Object obj) throws JSONException {
                t9.m.e(bundle, "bundle");
                t9.m.e(str, SDKConstants.PARAM_KEY);
                t9.m.e(obj, SDKConstants.PARAM_VALUE);
                throw new IllegalArgumentException("Unexpected type from JSON");
            }

            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void setOnJSON(JSONObject jSONObject, String str, Object obj) throws JSONException {
                t9.m.e(jSONObject, "json");
                t9.m.e(str, SDKConstants.PARAM_KEY);
                t9.m.e(obj, SDKConstants.PARAM_VALUE);
                JSONArray jSONArray = new JSONArray();
                String[] strArr = (String[]) obj;
                int length = strArr.length;
                int i10 = 0;
                while (i10 < length) {
                    String str2 = strArr[i10];
                    i10++;
                    jSONArray.put(str2);
                }
                jSONObject.put(str, jSONArray);
            }
        });
        map.put(JSONArray.class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.7
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void setOnBundle(Bundle bundle, String str, Object obj) throws JSONException {
                t9.m.e(bundle, "bundle");
                t9.m.e(str, SDKConstants.PARAM_KEY);
                t9.m.e(obj, SDKConstants.PARAM_VALUE);
                JSONArray jSONArray = (JSONArray) obj;
                ArrayList arrayList = new ArrayList();
                if (jSONArray.length() == 0) {
                    bundle.putStringArrayList(str, arrayList);
                    return;
                }
                int i10 = 0;
                int length = jSONArray.length();
                if (length > 0) {
                    while (true) {
                        int i11 = i10 + 1;
                        Object obj2 = jSONArray.get(i10);
                        if (!(obj2 instanceof String)) {
                            throw new IllegalArgumentException(t9.m.k("Unexpected type in an array: ", obj2.getClass()));
                        }
                        arrayList.add(obj2);
                        if (i11 >= length) {
                            break;
                        } else {
                            i10 = i11;
                        }
                    }
                }
                bundle.putStringArrayList(str, arrayList);
            }

            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void setOnJSON(JSONObject jSONObject, String str, Object obj) throws JSONException {
                t9.m.e(jSONObject, "json");
                t9.m.e(str, SDKConstants.PARAM_KEY);
                t9.m.e(obj, SDKConstants.PARAM_VALUE);
                throw new IllegalArgumentException("JSONArray's are not supported in bundles.");
            }
        });
    }

    private BundleJSONConverter() {
    }

    public static final Bundle convertToBundle(JSONObject jSONObject) throws JSONException {
        t9.m.e(jSONObject, "jsonObject");
        Bundle bundle = new Bundle();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object obj = jSONObject.get(next);
            if (obj != JSONObject.NULL) {
                if (obj instanceof JSONObject) {
                    bundle.putBundle(next, convertToBundle((JSONObject) obj));
                } else {
                    Setter setter = SETTERS.get(obj.getClass());
                    if (setter == null) {
                        throw new IllegalArgumentException(t9.m.k("Unsupported type: ", obj.getClass()));
                    }
                    t9.m.d(next, SDKConstants.PARAM_KEY);
                    t9.m.d(obj, SDKConstants.PARAM_VALUE);
                    setter.setOnBundle(bundle, next, obj);
                }
            }
        }
        return bundle;
    }

    public static final JSONObject convertToJSON(Bundle bundle) throws JSONException {
        t9.m.e(bundle, "bundle");
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null) {
                if (obj instanceof List) {
                    JSONArray jSONArray = new JSONArray();
                    Iterator it = ((List) obj).iterator();
                    while (it.hasNext()) {
                        jSONArray.put((String) it.next());
                    }
                    jSONObject.put(str, jSONArray);
                } else if (obj instanceof Bundle) {
                    jSONObject.put(str, convertToJSON((Bundle) obj));
                } else {
                    Setter setter = SETTERS.get(obj.getClass());
                    if (setter == null) {
                        throw new IllegalArgumentException(t9.m.k("Unsupported type: ", obj.getClass()));
                    }
                    t9.m.d(str, SDKConstants.PARAM_KEY);
                    setter.setOnJSON(jSONObject, str, obj);
                }
            }
        }
        return jSONObject;
    }
}
