package com.facebook.internal;

import android.os.RemoteException;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import com.facebook.FacebookSdk;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;

/* JADX INFO: compiled from: InstallReferrerUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class InstallReferrerUtil {
    public static final InstallReferrerUtil INSTANCE = new InstallReferrerUtil();
    private static final String IS_REFERRER_UPDATED = "is_referrer_updated";

    /* JADX INFO: compiled from: InstallReferrerUtil.kt */
    public interface Callback {
        void onReceiveReferrerUrl(String str);
    }

    private InstallReferrerUtil() {
    }

    private final boolean isUpdated() {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        return FacebookSdk.getApplicationContext().getSharedPreferences(FacebookSdk.APP_EVENT_PREFERENCES, 0).getBoolean(IS_REFERRER_UPDATED, false);
    }

    private final void tryConnectReferrerInfo(final Callback callback) {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        final InstallReferrerClient installReferrerClientA = InstallReferrerClient.b(FacebookSdk.getApplicationContext()).a();
        try {
            installReferrerClientA.c(new InstallReferrerStateListener() { // from class: com.facebook.internal.InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1
                @Override // com.android.installreferrer.api.InstallReferrerStateListener
                public void onInstallReferrerServiceDisconnected() {
                }

                @Override // com.android.installreferrer.api.InstallReferrerStateListener
                public void onInstallReferrerSetupFinished(int i10) {
                    if (CrashShieldHandler.isObjectCrashing(this)) {
                        return;
                    }
                    try {
                        if (i10 != 0) {
                            if (i10 != 2) {
                                return;
                            }
                            InstallReferrerUtil.INSTANCE.updateReferrer();
                            return;
                        }
                        try {
                            ReferrerDetails referrerDetailsA = installReferrerClientA.a();
                            t9.m.d(referrerDetailsA, "{\n                      referrerClient.installReferrer\n                    }");
                            String strA = referrerDetailsA.a();
                            if (strA != null && (ba.q.x(strA, "fb", false, 2, null) || ba.q.x(strA, "facebook", false, 2, null))) {
                                callback.onReceiveReferrerUrl(strA);
                            }
                            InstallReferrerUtil.INSTANCE.updateReferrer();
                        } catch (RemoteException unused) {
                        }
                    } catch (Throwable th) {
                        CrashShieldHandler.handleThrowable(th, this);
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    public static final void tryUpdateReferrerInfo(Callback callback) {
        t9.m.e(callback, "callback");
        InstallReferrerUtil installReferrerUtil = INSTANCE;
        if (installReferrerUtil.isUpdated()) {
            return;
        }
        installReferrerUtil.tryConnectReferrerInfo(callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateReferrer() {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        FacebookSdk.getApplicationContext().getSharedPreferences(FacebookSdk.APP_EVENT_PREFERENCES, 0).edit().putBoolean(IS_REFERRER_UPDATED, true).apply();
    }
}
