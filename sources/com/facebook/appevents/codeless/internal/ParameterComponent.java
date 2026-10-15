package com.facebook.appevents.codeless.internal;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import t9.g;
import t9.m;

/* JADX INFO: compiled from: ParameterComponent.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ParameterComponent {
    public static final Companion Companion = new Companion(null);
    private static final String PARAMETER_NAME_KEY = "name";
    private static final String PARAMETER_PATH_KEY = "path";
    private static final String PARAMETER_VALUE_KEY = "value";
    private final String name;
    private final List<PathComponent> path;
    private final String pathType;
    private final String value;

    /* JADX INFO: compiled from: ParameterComponent.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }
    }

    public ParameterComponent(JSONObject jSONObject) throws JSONException {
        m.e(jSONObject, "component");
        String string = jSONObject.getString("name");
        m.d(string, "component.getString(PARAMETER_NAME_KEY)");
        this.name = string;
        String strOptString = jSONObject.optString("value");
        m.d(strOptString, "component.optString(PARAMETER_VALUE_KEY)");
        this.value = strOptString;
        String strOptString2 = jSONObject.optString(Constants.EVENT_MAPPING_PATH_TYPE_KEY, Constants.PATH_TYPE_ABSOLUTE);
        m.d(strOptString2, "component.optString(Constants.EVENT_MAPPING_PATH_TYPE_KEY, Constants.PATH_TYPE_ABSOLUTE)");
        this.pathType = strOptString2;
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(PARAMETER_PATH_KEY);
        if (jSONArrayOptJSONArray != null) {
            int i10 = 0;
            int length = jSONArrayOptJSONArray.length();
            if (length > 0) {
                while (true) {
                    int i11 = i10 + 1;
                    JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i10);
                    m.d(jSONObject2, "jsonPathArray.getJSONObject(i)");
                    arrayList.add(new PathComponent(jSONObject2));
                    if (i11 >= length) {
                        break;
                    } else {
                        i10 = i11;
                    }
                }
            }
        }
        this.path = arrayList;
    }

    public final String getName() {
        return this.name;
    }

    public final List<PathComponent> getPath() {
        return this.path;
    }

    public final String getPathType() {
        return this.pathType;
    }

    public final String getValue() {
        return this.value;
    }
}
