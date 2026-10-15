package com.facebook.appevents.codeless.internal;

import android.util.Log;
import com.vungle.mediation.BuildConfig;
import java.lang.reflect.Method;
import t9.m;

/* JADX INFO: compiled from: UnityReflection.kt */
/* JADX INFO: loaded from: classes.dex */
public final class UnityReflection {
    private static final String CAPTURE_VIEW_HIERARCHY_METHOD = "CaptureViewHierarchy";
    private static final String EVENT_MAPPING_METHOD = "OnReceiveMapping";
    private static final String FB_UNITY_GAME_OBJECT = "UnityFacebookSDKPlugin";
    public static final UnityReflection INSTANCE = new UnityReflection();
    private static final String TAG = UnityReflection.class.getCanonicalName();
    private static final String UNITY_PLAYER_CLASS = "com.unity3d.player.UnityPlayer";
    private static final String UNITY_SEND_MESSAGE_METHOD = "UnitySendMessage";
    private static Class<?> unityPlayer;

    private UnityReflection() {
    }

    public static final void captureViewHierarchy() {
        sendMessage(FB_UNITY_GAME_OBJECT, CAPTURE_VIEW_HIERARCHY_METHOD, BuildConfig.FLAVOR);
    }

    private final Class<?> getUnityPlayerClass() throws ClassNotFoundException {
        Class<?> cls = Class.forName(UNITY_PLAYER_CLASS);
        m.d(cls, "forName(UNITY_PLAYER_CLASS)");
        return cls;
    }

    public static final void sendEventMapping(String str) {
        sendMessage(FB_UNITY_GAME_OBJECT, EVENT_MAPPING_METHOD, str);
    }

    public static final void sendMessage(String str, String str2, String str3) {
        try {
            if (unityPlayer == null) {
                unityPlayer = INSTANCE.getUnityPlayerClass();
            }
            Class<?> cls = unityPlayer;
            if (cls == null) {
                m.p("unityPlayer");
                throw null;
            }
            Method method = cls.getMethod(UNITY_SEND_MESSAGE_METHOD, String.class, String.class, String.class);
            Class<?> cls2 = unityPlayer;
            if (cls2 != null) {
                method.invoke(cls2, str, str2, str3);
            } else {
                m.p("unityPlayer");
                throw null;
            }
        } catch (Exception e10) {
            Log.e(TAG, "Failed to send message to Unity", e10);
        }
    }
}
