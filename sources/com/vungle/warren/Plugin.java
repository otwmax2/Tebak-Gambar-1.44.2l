package com.vungle.warren;

import android.util.Log;
import com.vungle.warren.VungleApiClient;

/* JADX INFO: loaded from: classes2.dex */
public class Plugin {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f27845a = "Plugin";

    public static void addWrapperInfo(VungleApiClient.WrapperFramework wrapperFramework, String str) {
        if (wrapperFramework == null || wrapperFramework == VungleApiClient.WrapperFramework.none) {
            Log.e(f27845a, "Wrapper is null or is not none");
        } else {
            VungleApiClient.D = wrapperFramework;
            VungleApiClient.setHeaderUa(VungleApiClient.getHeaderUa() + ";" + wrapperFramework);
            if (str == null || str.isEmpty()) {
                Log.e(f27845a, "Wrapper framework version is empty");
            } else {
                VungleApiClient.setHeaderUa(VungleApiClient.getHeaderUa() + "/" + str);
            }
        }
        if (Vungle.isInitialized()) {
            Log.w(f27845a, "VUNGLE WARNING: SDK already initialized, you should've set wrapper info before");
        }
    }
}
