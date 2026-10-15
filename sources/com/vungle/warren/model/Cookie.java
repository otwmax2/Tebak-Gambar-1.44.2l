package com.vungle.warren.model;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class Cookie {
    public static final String APP_ID = "appId";
    public static final String CACHE_BUST_COOKIE = "cacheBustSettings";
    public static final String CCPA_CONSENT_STATUS = "ccpa_status";
    public static final String CCPA_COOKIE = "ccpaIsImportantToVungle";
    public static final String CONFIG_COOKIE = "configSettings";
    public static final String CONSENT_COOKIE = "consentIsImportantToVungle";
    public static final String CONSENT_STATUS_OPTED_IN = "opted_in";
    public static final String CONSENT_STATUS_OPTED_OUT = "opted_out";
    public static final String INCENTIVIZED_TEXT_COOKIE = "incentivizedTextSetByPub";
    public static final String IS_PLAY_SERVICE_AVAILABLE = "isPlaySvcAvailable";
    public static final String LAST_CACHE_BUST = "last_cache_bust";
    public static final String USER_AGENT_ID_COOKIE = "userAgent";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Map<String, String> f28148a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Map<String, Boolean> f28149b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Map<String, Integer> f28150c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Map<String, Long> f28151d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f28152e;

    public Cookie(String str) {
        this.f28152e = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Cookie cookie = (Cookie) obj;
        Map<String, String> map = this.f28148a;
        if (map == null ? cookie.f28148a != null : !map.equals(cookie.f28148a)) {
            return false;
        }
        Map<String, Boolean> map2 = this.f28149b;
        if (map2 == null ? cookie.f28149b != null : !map2.equals(cookie.f28149b)) {
            return false;
        }
        Map<String, Integer> map3 = this.f28150c;
        if (map3 == null ? cookie.f28150c != null : !map3.equals(cookie.f28150c)) {
            return false;
        }
        Map<String, Long> map4 = this.f28151d;
        if (map4 == null ? cookie.f28151d != null : !map4.equals(cookie.f28151d)) {
            return false;
        }
        String str = this.f28152e;
        String str2 = cookie.f28152e;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public Boolean getBoolean(String str) {
        return Boolean.valueOf(this.f28149b.get(str) != null && this.f28149b.get(str).booleanValue());
    }

    public String getId() {
        return this.f28152e;
    }

    public Integer getInt(String str) {
        return this.f28150c.get(str);
    }

    public Long getLong(String str) {
        return Long.valueOf(this.f28151d.get(str) != null ? this.f28151d.get(str).longValue() : 0L);
    }

    public String getString(String str) {
        return this.f28148a.get(str);
    }

    public int hashCode() {
        Map<String, String> map = this.f28148a;
        int iHashCode = (map != null ? map.hashCode() : 0) * 31;
        Map<String, Boolean> map2 = this.f28149b;
        int iHashCode2 = (iHashCode + (map2 != null ? map2.hashCode() : 0)) * 31;
        Map<String, Integer> map3 = this.f28150c;
        int iHashCode3 = (iHashCode2 + (map3 != null ? map3.hashCode() : 0)) * 31;
        Map<String, Long> map4 = this.f28151d;
        int iHashCode4 = (iHashCode3 + (map4 != null ? map4.hashCode() : 0)) * 31;
        String str = this.f28152e;
        return iHashCode4 + (str != null ? str.hashCode() : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> void putValue(String str, T t10) {
        if (t10 instanceof String) {
            this.f28148a.put(str, (String) t10);
            return;
        }
        if (t10 instanceof Boolean) {
            this.f28149b.put(str, (Boolean) t10);
        } else if (t10 instanceof Integer) {
            this.f28150c.put(str, (Integer) t10);
        } else {
            if (!(t10 instanceof Long)) {
                throw new IllegalArgumentException("Value type is not supported!");
            }
            this.f28151d.put(str, (Long) t10);
        }
    }
}
