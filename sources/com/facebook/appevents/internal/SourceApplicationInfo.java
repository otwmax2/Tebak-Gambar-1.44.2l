package com.facebook.appevents.internal;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import com.facebook.FacebookSdk;
import com.facebook.bolts.AppLinks;
import com.vungle.mediation.BuildConfig;
import t9.g;
import t9.m;

/* JADX INFO: compiled from: SourceApplicationInfo.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SourceApplicationInfo {
    private static final String CALL_APPLICATION_PACKAGE_KEY = "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage";
    public static final Companion Companion = new Companion(null);
    private static final String OPENED_BY_APP_LINK_KEY = "com.facebook.appevents.SourceApplicationInfo.openedByApplink";
    private static final String SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT = "_fbSourceApplicationHasBeenSet";
    private final String callingApplicationPackage;
    private final boolean isOpenedByAppLink;

    /* JADX INFO: compiled from: SourceApplicationInfo.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final void clearSavedSourceApplicationInfoFromDisk() {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.getApplicationContext()).edit();
            editorEdit.remove(SourceApplicationInfo.CALL_APPLICATION_PACKAGE_KEY);
            editorEdit.remove(SourceApplicationInfo.OPENED_BY_APP_LINK_KEY);
            editorEdit.apply();
        }

        public final SourceApplicationInfo getStoredSourceApplicatioInfo() {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.getApplicationContext());
            g gVar = null;
            if (defaultSharedPreferences.contains(SourceApplicationInfo.CALL_APPLICATION_PACKAGE_KEY)) {
                return new SourceApplicationInfo(defaultSharedPreferences.getString(SourceApplicationInfo.CALL_APPLICATION_PACKAGE_KEY, null), defaultSharedPreferences.getBoolean(SourceApplicationInfo.OPENED_BY_APP_LINK_KEY, false), gVar);
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: SourceApplicationInfo.kt */
    public static final class Factory {
        public static final Factory INSTANCE = new Factory();

        private Factory() {
        }

        public static final SourceApplicationInfo create(Activity activity) {
            String string;
            m.e(activity, "activity");
            ComponentName callingActivity = activity.getCallingActivity();
            g gVar = null;
            if (callingActivity != null) {
                string = callingActivity.getPackageName();
                if (m.a(string, activity.getPackageName())) {
                    return null;
                }
            } else {
                string = BuildConfig.FLAVOR;
            }
            Intent intent = activity.getIntent();
            boolean z10 = false;
            if (intent != null && !intent.getBooleanExtra(SourceApplicationInfo.SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT, false)) {
                intent.putExtra(SourceApplicationInfo.SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT, true);
                AppLinks appLinks = AppLinks.INSTANCE;
                Bundle appLinkData = AppLinks.getAppLinkData(intent);
                if (appLinkData != null) {
                    Bundle bundle = appLinkData.getBundle("referer_app_link");
                    if (bundle != null) {
                        string = bundle.getString("package");
                    }
                    z10 = true;
                }
            }
            if (intent != null) {
                intent.putExtra(SourceApplicationInfo.SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT, true);
            }
            return new SourceApplicationInfo(string, z10, gVar);
        }
    }

    private SourceApplicationInfo(String str, boolean z10) {
        this.callingApplicationPackage = str;
        this.isOpenedByAppLink = z10;
    }

    public /* synthetic */ SourceApplicationInfo(String str, boolean z10, g gVar) {
        this(str, z10);
    }

    public static final void clearSavedSourceApplicationInfoFromDisk() {
        Companion.clearSavedSourceApplicationInfoFromDisk();
    }

    public static final SourceApplicationInfo getStoredSourceApplicatioInfo() {
        return Companion.getStoredSourceApplicatioInfo();
    }

    public final String getCallingApplicationPackage() {
        return this.callingApplicationPackage;
    }

    public final boolean isOpenedByAppLink() {
        return this.isOpenedByAppLink;
    }

    public String toString() {
        String str = this.isOpenedByAppLink ? "Applink" : "Unclassified";
        if (this.callingApplicationPackage == null) {
            return str;
        }
        return str + '(' + ((Object) this.callingApplicationPackage) + ')';
    }

    public final void writeSourceApplicationInfoToDisk() {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.getApplicationContext()).edit();
        editorEdit.putString(CALL_APPLICATION_PACKAGE_KEY, this.callingApplicationPackage);
        editorEdit.putBoolean(OPENED_BY_APP_LINK_KEY, this.isOpenedByAppLink);
        editorEdit.apply();
    }
}
