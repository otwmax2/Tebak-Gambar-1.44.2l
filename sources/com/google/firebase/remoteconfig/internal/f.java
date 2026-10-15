package com.google.firebase.remoteconfig.internal;

import java.util.Date;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: ConfigContainer.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Date f26617f = new Date(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JSONObject f26618a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JSONObject f26619b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Date f26620c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private JSONArray f26621d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private JSONObject f26622e;

    /* JADX INFO: compiled from: ConfigContainer.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private JSONObject f26623a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Date f26624b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private JSONArray f26625c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private JSONObject f26626d;

        public f a() throws JSONException {
            return new f(this.f26623a, this.f26624b, this.f26625c, this.f26626d);
        }

        public b b(Map<String, String> map) {
            this.f26623a = new JSONObject(map);
            return this;
        }

        public b c(JSONObject jSONObject) {
            try {
                this.f26623a = new JSONObject(jSONObject.toString());
            } catch (JSONException unused) {
            }
            return this;
        }

        public b d(JSONArray jSONArray) {
            try {
                this.f26625c = new JSONArray(jSONArray.toString());
            } catch (JSONException unused) {
            }
            return this;
        }

        public b e(Date date) {
            this.f26624b = date;
            return this;
        }

        public b f(JSONObject jSONObject) {
            try {
                this.f26626d = new JSONObject(jSONObject.toString());
            } catch (JSONException unused) {
            }
            return this;
        }

        private b() {
            this.f26623a = new JSONObject();
            this.f26624b = f.f26617f;
            this.f26625c = new JSONArray();
            this.f26626d = new JSONObject();
        }
    }

    static f b(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("personalization_metadata_key");
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
        }
        return new f(jSONObject.getJSONObject("configs_key"), new Date(jSONObject.getLong("fetch_time_key")), jSONObject.getJSONArray("abt_experiments_key"), jSONObjectOptJSONObject);
    }

    public static b g() {
        return new b();
    }

    public JSONArray c() {
        return this.f26621d;
    }

    public JSONObject d() {
        return this.f26619b;
    }

    public Date e() {
        return this.f26620c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            return this.f26618a.toString().equals(((f) obj).toString());
        }
        return false;
    }

    public JSONObject f() {
        return this.f26622e;
    }

    public int hashCode() {
        return this.f26618a.hashCode();
    }

    public String toString() {
        return this.f26618a.toString();
    }

    private f(JSONObject jSONObject, Date date, JSONArray jSONArray, JSONObject jSONObject2) throws JSONException {
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("configs_key", jSONObject);
        jSONObject3.put("fetch_time_key", date.getTime());
        jSONObject3.put("abt_experiments_key", jSONArray);
        jSONObject3.put("personalization_metadata_key", jSONObject2);
        this.f26619b = jSONObject;
        this.f26620c = date;
        this.f26621d = jSONArray;
        this.f26622e = jSONObject2;
        this.f26618a = jSONObject3;
    }
}
