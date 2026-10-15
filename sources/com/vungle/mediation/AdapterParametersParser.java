package com.vungle.mediation;

import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
class AdapterParametersParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f27577a = VungleManager.class.getSimpleName();

    static class Config {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f27578a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f27579b;

        Config() {
        }

        public String getAppId() {
            return this.f27578a;
        }

        public String getRequestUniqueId() {
            return this.f27579b;
        }
    }

    AdapterParametersParser() {
    }

    public static Config parse(String str, Bundle bundle) {
        String string = (bundle == null || !bundle.containsKey("uniqueVungleRequestKey")) ? null : bundle.getString("uniqueVungleRequestKey");
        Config config = new Config();
        config.f27578a = str;
        config.f27579b = string;
        return config;
    }
}
