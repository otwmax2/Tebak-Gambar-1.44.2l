package com.facebook.share.internal;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.share.model.CameraEffectArguments;
import h9.q;
import i9.d0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import t9.m;

/* JADX INFO: compiled from: CameraEffectJSONUtility.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CameraEffectJSONUtility {
    public static final CameraEffectJSONUtility INSTANCE = new CameraEffectJSONUtility();
    private static final HashMap<Class<?>, Setter> SETTERS = d0.e(q.a(String.class, new Setter() { // from class: com.facebook.share.internal.CameraEffectJSONUtility$SETTERS$1
        @Override // com.facebook.share.internal.CameraEffectJSONUtility.Setter
        public void setOnArgumentsBuilder(CameraEffectArguments.Builder builder, String str, Object obj) throws JSONException {
            m.e(builder, "builder");
            m.e(str, SDKConstants.PARAM_KEY);
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.String");
            builder.putArgument(str, (String) obj);
        }

        @Override // com.facebook.share.internal.CameraEffectJSONUtility.Setter
        public void setOnJSON(JSONObject jSONObject, String str, Object obj) throws JSONException {
            m.e(jSONObject, "json");
            m.e(str, SDKConstants.PARAM_KEY);
            jSONObject.put(str, obj);
        }
    }), q.a(String[].class, new Setter() { // from class: com.facebook.share.internal.CameraEffectJSONUtility$SETTERS$2
        @Override // com.facebook.share.internal.CameraEffectJSONUtility.Setter
        public void setOnArgumentsBuilder(CameraEffectArguments.Builder builder, String str, Object obj) throws JSONException {
            m.e(builder, "builder");
            m.e(str, SDKConstants.PARAM_KEY);
            throw new IllegalArgumentException("Unexpected type from JSON");
        }

        @Override // com.facebook.share.internal.CameraEffectJSONUtility.Setter
        public void setOnJSON(JSONObject jSONObject, String str, Object obj) throws JSONException {
            m.e(jSONObject, "json");
            m.e(str, SDKConstants.PARAM_KEY);
            JSONArray jSONArray = new JSONArray();
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.String?>");
            String[] strArr = (String[]) obj;
            int i10 = 0;
            int length = strArr.length;
            while (i10 < length) {
                String str2 = strArr[i10];
                i10++;
                jSONArray.put(str2);
            }
            jSONObject.put(str, jSONArray);
        }
    }), q.a(JSONArray.class, new Setter() { // from class: com.facebook.share.internal.CameraEffectJSONUtility$SETTERS$3
        @Override // com.facebook.share.internal.CameraEffectJSONUtility.Setter
        public void setOnArgumentsBuilder(CameraEffectArguments.Builder builder, String str, Object obj) throws JSONException {
            m.e(builder, "builder");
            m.e(str, SDKConstants.PARAM_KEY);
            Objects.requireNonNull(obj, "null cannot be cast to non-null type org.json.JSONArray");
            JSONArray jSONArray = (JSONArray) obj;
            ArrayList arrayList = new ArrayList();
            int length = jSONArray.length();
            if (length > 0) {
                int i10 = 0;
                while (true) {
                    int i11 = i10 + 1;
                    Object obj2 = jSONArray.get(i10);
                    if (!(obj2 instanceof String)) {
                        throw new IllegalArgumentException(m.k("Unexpected type in an array: ", obj2.getClass()));
                    }
                    arrayList.add(obj2);
                    if (i11 >= length) {
                        break;
                    } else {
                        i10 = i11;
                    }
                }
            }
            Object[] array = arrayList.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            builder.putArgument(str, (String[]) array);
        }

        @Override // com.facebook.share.internal.CameraEffectJSONUtility.Setter
        public void setOnJSON(JSONObject jSONObject, String str, Object obj) throws JSONException {
            m.e(jSONObject, "json");
            m.e(str, SDKConstants.PARAM_KEY);
            throw new IllegalArgumentException("JSONArray's are not supported in bundles.");
        }
    }));

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: CameraEffectJSONUtility.kt */
    interface Setter {
        void setOnArgumentsBuilder(CameraEffectArguments.Builder builder, String str, Object obj) throws JSONException;

        void setOnJSON(JSONObject jSONObject, String str, Object obj) throws JSONException;
    }

    private CameraEffectJSONUtility() {
    }

    public static final CameraEffectArguments convertToCameraEffectArguments(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        CameraEffectArguments.Builder builder = new CameraEffectArguments.Builder();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object obj = jSONObject.get(next);
            if (obj != JSONObject.NULL) {
                Setter setter = SETTERS.get(obj.getClass());
                if (setter == null) {
                    throw new IllegalArgumentException(m.k("Unsupported type: ", obj.getClass()));
                }
                m.d(next, SDKConstants.PARAM_KEY);
                setter.setOnArgumentsBuilder(builder, next, obj);
            }
        }
        return builder.build();
    }

    public static final JSONObject convertToJSON(CameraEffectArguments cameraEffectArguments) throws JSONException {
        if (cameraEffectArguments == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        for (String str : cameraEffectArguments.keySet()) {
            Object obj = cameraEffectArguments.get(str);
            if (obj != null) {
                Setter setter = SETTERS.get(obj.getClass());
                if (setter == null) {
                    throw new IllegalArgumentException(m.k("Unsupported type: ", obj.getClass()));
                }
                setter.setOnJSON(jSONObject, str, obj);
            }
        }
        return jSONObject;
    }
}
