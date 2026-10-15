package com.facebook.internal;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;

/* JADX INFO: compiled from: InternalSettings.kt */
/* JADX INFO: loaded from: classes.dex */
public final class InternalSettings {
    public static final InternalSettings INSTANCE = new InternalSettings();
    private static final String UNITY_PREFIX = "Unity.";
    private static volatile String customUserAgent;

    private InternalSettings() {
    }

    public static final String getCustomUserAgent() {
        return customUserAgent;
    }

    public static final boolean isUnityApp() {
        String str = customUserAgent;
        return t9.m.a(str != null ? Boolean.valueOf(ba.p.u(str, UNITY_PREFIX, false, 2, null)) : null, Boolean.TRUE);
    }

    public static /* synthetic */ void isUnityApp$annotations() {
    }

    public static final void setCustomUserAgent(String str) {
        t9.m.e(str, SDKConstants.PARAM_VALUE);
        customUserAgent = str;
    }
}
