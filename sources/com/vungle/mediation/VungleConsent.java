package com.vungle.mediation;

import com.vungle.warren.Vungle;

/* JADX INFO: loaded from: classes2.dex */
public class VungleConsent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Vungle.Consent f27602a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f27603b = "";

    public static Vungle.Consent getCurrentVungleConsent() {
        return f27602a;
    }

    public static String getCurrentVungleConsentMessageVersion() {
        return f27603b;
    }

    public static void updateConsentStatus(Vungle.Consent consent, String str) {
        Vungle.Consent consent2;
        String str2;
        f27602a = consent;
        f27603b = str;
        if (!Vungle.isInitialized() || (consent2 = f27602a) == null || (str2 = f27603b) == null) {
            return;
        }
        Vungle.updateConsentStatus(consent2, str2);
    }
}
