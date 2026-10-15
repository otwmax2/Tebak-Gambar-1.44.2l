package com.facebook.internal;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: compiled from: ProfileInformationCache.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ProfileInformationCache {
    public static final ProfileInformationCache INSTANCE = new ProfileInformationCache();
    private static final ConcurrentHashMap<String, JSONObject> infoCache = new ConcurrentHashMap<>();

    private ProfileInformationCache() {
    }

    public static final JSONObject getProfileInformation(String str) {
        t9.m.e(str, SDKConstants.PARAM_ACCESS_TOKEN);
        return infoCache.get(str);
    }

    public static final void putProfileInformation(String str, JSONObject jSONObject) {
        t9.m.e(str, SDKConstants.PARAM_KEY);
        t9.m.e(jSONObject, SDKConstants.PARAM_VALUE);
        infoCache.put(str, jSONObject);
    }
}
