package com.facebook.appevents.aam;

import android.app.Activity;
import com.facebook.FacebookSdk;
import com.facebook.appevents.aam.MetadataIndexer;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import t9.m;

/* JADX INFO: compiled from: MetadataIndexer.kt */
/* JADX INFO: loaded from: classes.dex */
public final class MetadataIndexer {
    public static final MetadataIndexer INSTANCE = new MetadataIndexer();
    private static final String TAG = MetadataIndexer.class.getCanonicalName();
    private static boolean enabled;

    private MetadataIndexer() {
    }

    public static final void enable() {
        try {
            if (CrashShieldHandler.isObjectCrashing(MetadataIndexer.class)) {
                return;
            }
            try {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                FacebookSdk.getExecutor().execute(new Runnable() { // from class: a3.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        MetadataIndexer.m42enable$lambda0();
                    }
                });
            } catch (Exception e10) {
                Utility utility = Utility.INSTANCE;
                Utility.logd(TAG, e10);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataIndexer.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: enable$lambda-0, reason: not valid java name */
    public static final void m42enable$lambda0() {
        if (CrashShieldHandler.isObjectCrashing(MetadataIndexer.class)) {
            return;
        }
        try {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            if (AttributionIdentifiers.Companion.isTrackingLimited(FacebookSdk.getApplicationContext())) {
                return;
            }
            INSTANCE.updateRules();
            enabled = true;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataIndexer.class);
        }
    }

    public static final void onActivityResumed(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(MetadataIndexer.class)) {
            return;
        }
        try {
            m.e(activity, "activity");
            try {
                if (enabled && !MetadataRule.Companion.getRules().isEmpty()) {
                    MetadataViewObserver.Companion.startTrackingActivity(activity);
                }
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataIndexer.class);
        }
    }

    private final void updateRules() {
        String rawAamRules;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            FetchedAppSettings fetchedAppSettingsQueryAppSettings = FetchedAppSettingsManager.queryAppSettings(FacebookSdk.getApplicationId(), false);
            if (fetchedAppSettingsQueryAppSettings == null || (rawAamRules = fetchedAppSettingsQueryAppSettings.getRawAamRules()) == null) {
                return;
            }
            MetadataRule.Companion.updateRules(rawAamRules);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
