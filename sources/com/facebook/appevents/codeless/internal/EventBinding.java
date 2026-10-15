package com.facebook.appevents.codeless.internal;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import t9.g;
import t9.m;

/* JADX INFO: compiled from: EventBinding.kt */
/* JADX INFO: loaded from: classes.dex */
public final class EventBinding {
    public static final Companion Companion = new Companion(null);
    private final String activityName;
    private final String appVersion;
    private final String componentId;
    private final String eventName;
    private final MappingMethod method;
    private final List<ParameterComponent> parameters;
    private final List<PathComponent> path;
    private final String pathType;
    private final ActionType type;

    /* JADX INFO: compiled from: EventBinding.kt */
    public enum ActionType {
        CLICK,
        SELECTED,
        TEXT_CHANGED;

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static ActionType[] valuesCustom() {
            ActionType[] actionTypeArrValuesCustom = values();
            return (ActionType[]) Arrays.copyOf(actionTypeArrValuesCustom, actionTypeArrValuesCustom.length);
        }
    }

    /* JADX INFO: compiled from: EventBinding.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final EventBinding getInstanceFromJson(JSONObject jSONObject) throws JSONException, IllegalArgumentException {
            int length;
            m.e(jSONObject, "mapping");
            String string = jSONObject.getString("event_name");
            String string2 = jSONObject.getString("method");
            m.d(string2, "mapping.getString(\"method\")");
            Locale locale = Locale.ENGLISH;
            m.d(locale, ViewHierarchyConstants.ENGLISH);
            String upperCase = string2.toUpperCase(locale);
            m.d(upperCase, "(this as java.lang.String).toUpperCase(locale)");
            MappingMethod mappingMethodValueOf = MappingMethod.valueOf(upperCase);
            String string3 = jSONObject.getString("event_type");
            m.d(string3, "mapping.getString(\"event_type\")");
            m.d(locale, ViewHierarchyConstants.ENGLISH);
            String upperCase2 = string3.toUpperCase(locale);
            m.d(upperCase2, "(this as java.lang.String).toUpperCase(locale)");
            ActionType actionTypeValueOf = ActionType.valueOf(upperCase2);
            String string4 = jSONObject.getString("app_version");
            JSONArray jSONArray = jSONObject.getJSONArray("path");
            ArrayList arrayList = new ArrayList();
            int length2 = jSONArray.length();
            int i10 = 0;
            if (length2 > 0) {
                int i11 = 0;
                while (true) {
                    int i12 = i11 + 1;
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i11);
                    m.d(jSONObject2, "jsonPath");
                    arrayList.add(new PathComponent(jSONObject2));
                    if (i12 >= length2) {
                        break;
                    }
                    i11 = i12;
                }
            }
            String strOptString = jSONObject.optString(Constants.EVENT_MAPPING_PATH_TYPE_KEY, Constants.PATH_TYPE_ABSOLUTE);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("parameters");
            ArrayList arrayList2 = new ArrayList();
            if (jSONArrayOptJSONArray != null && (length = jSONArrayOptJSONArray.length()) > 0) {
                while (true) {
                    int i13 = i10 + 1;
                    JSONObject jSONObject3 = jSONArrayOptJSONArray.getJSONObject(i10);
                    m.d(jSONObject3, "jsonParameter");
                    arrayList2.add(new ParameterComponent(jSONObject3));
                    if (i13 >= length) {
                        break;
                    }
                    i10 = i13;
                }
            }
            String strOptString2 = jSONObject.optString("component_id");
            String strOptString3 = jSONObject.optString("activity_name");
            m.d(string, "eventName");
            m.d(string4, "appVersion");
            m.d(strOptString2, "componentId");
            m.d(strOptString, "pathType");
            m.d(strOptString3, "activityName");
            return new EventBinding(string, mappingMethodValueOf, actionTypeValueOf, string4, arrayList, arrayList2, strOptString2, strOptString, strOptString3);
        }

        public final List<EventBinding> parseArray(JSONArray jSONArray) {
            ArrayList arrayList = new ArrayList();
            if (jSONArray != null) {
                int i10 = 0;
                try {
                    int length = jSONArray.length();
                    if (length > 0) {
                        while (true) {
                            int i11 = i10 + 1;
                            JSONObject jSONObject = jSONArray.getJSONObject(i10);
                            m.d(jSONObject, "array.getJSONObject(i)");
                            arrayList.add(getInstanceFromJson(jSONObject));
                            if (i11 >= length) {
                                break;
                            }
                            i10 = i11;
                        }
                    }
                } catch (IllegalArgumentException | JSONException unused) {
                }
            }
            return arrayList;
        }
    }

    /* JADX INFO: compiled from: EventBinding.kt */
    public enum MappingMethod {
        MANUAL,
        INFERENCE;

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static MappingMethod[] valuesCustom() {
            MappingMethod[] mappingMethodArrValuesCustom = values();
            return (MappingMethod[]) Arrays.copyOf(mappingMethodArrValuesCustom, mappingMethodArrValuesCustom.length);
        }
    }

    public EventBinding(String str, MappingMethod mappingMethod, ActionType actionType, String str2, List<PathComponent> list, List<ParameterComponent> list2, String str3, String str4, String str5) {
        m.e(str, "eventName");
        m.e(mappingMethod, "method");
        m.e(actionType, "type");
        m.e(str2, "appVersion");
        m.e(list, "path");
        m.e(list2, "parameters");
        m.e(str3, "componentId");
        m.e(str4, "pathType");
        m.e(str5, "activityName");
        this.eventName = str;
        this.method = mappingMethod;
        this.type = actionType;
        this.appVersion = str2;
        this.path = list;
        this.parameters = list2;
        this.componentId = str3;
        this.pathType = str4;
        this.activityName = str5;
    }

    public static final EventBinding getInstanceFromJson(JSONObject jSONObject) throws JSONException, IllegalArgumentException {
        return Companion.getInstanceFromJson(jSONObject);
    }

    public static final List<EventBinding> parseArray(JSONArray jSONArray) {
        return Companion.parseArray(jSONArray);
    }

    public final String getActivityName() {
        return this.activityName;
    }

    public final String getAppVersion() {
        return this.appVersion;
    }

    public final String getComponentId() {
        return this.componentId;
    }

    public final String getEventName() {
        return this.eventName;
    }

    public final MappingMethod getMethod() {
        return this.method;
    }

    public final String getPathType() {
        return this.pathType;
    }

    public final ActionType getType() {
        return this.type;
    }

    public final List<ParameterComponent> getViewParameters() {
        List<ParameterComponent> listUnmodifiableList = Collections.unmodifiableList(this.parameters);
        m.d(listUnmodifiableList, "unmodifiableList(parameters)");
        return listUnmodifiableList;
    }

    public final List<PathComponent> getViewPath() {
        List<PathComponent> listUnmodifiableList = Collections.unmodifiableList(this.path);
        m.d(listUnmodifiableList, "unmodifiableList(path)");
        return listUnmodifiableList;
    }
}
