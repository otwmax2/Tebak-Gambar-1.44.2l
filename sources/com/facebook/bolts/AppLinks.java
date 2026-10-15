package com.facebook.bolts;

import android.content.Intent;
import android.os.Bundle;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;

/* JADX INFO: compiled from: AppLinks.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AppLinks {
    public static final AppLinks INSTANCE = new AppLinks();
    public static final String KEY_NAME_APPLINK_DATA = "al_applink_data";
    public static final String KEY_NAME_EXTRAS = "extras";

    private AppLinks() {
    }

    public static final Bundle getAppLinkData(Intent intent) {
        t9.m.e(intent, SDKConstants.PARAM_INTENT);
        return intent.getBundleExtra(KEY_NAME_APPLINK_DATA);
    }

    public static final Bundle getAppLinkExtras(Intent intent) {
        t9.m.e(intent, SDKConstants.PARAM_INTENT);
        Bundle appLinkData = getAppLinkData(intent);
        if (appLinkData == null) {
            return null;
        }
        return appLinkData.getBundle("extras");
    }
}
