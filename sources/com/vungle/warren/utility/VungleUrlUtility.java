package com.vungle.warren.utility;

import android.util.Log;
import java.net.MalformedURLException;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
public class VungleUrlUtility {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f28593a = "VungleUrlUtility";

    public static boolean isVungleUrl(String str) {
        try {
            return new URL(str).getHost().toLowerCase().contains(".vungle.com");
        } catch (MalformedURLException e10) {
            Log.e(f28593a, e10.getMessage());
            return false;
        }
    }
}
