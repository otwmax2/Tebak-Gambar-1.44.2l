package com.tebakgambar.model;

import android.os.Build;
import com.tebakgambar.TGApplication;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class RequestHeader {
    public static Map<String, String> create(String str) {
        HashMap map = new HashMap();
        map.put("authorization", "Bearer " + str);
        map.put("x-app", "com.tebakgambar-v1.44.2l");
        map.put("x-os", "android-" + Build.VERSION.RELEASE);
        map.put("x-device", Build.MODEL);
        Locale locale = TGApplication.d().getResources().getConfiguration().locale;
        if (locale != null) {
            map.put("x-lang", locale.getLanguage());
        }
        return map;
    }
}
