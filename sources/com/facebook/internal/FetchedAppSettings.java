package com.facebook.internal;

import android.net.Uri;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: FetchedAppSettings.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FetchedAppSettings {
    public static final Companion Companion = new Companion(null);
    private final boolean automaticLoggingEnabled;
    private final boolean codelessEventsEnabled;
    private final Map<String, Map<String, DialogFeatureConfig>> dialogConfigurations;
    private final FacebookRequestErrorClassification errorClassification;
    private final JSONArray eventBindings;
    private final boolean iAPAutomaticLoggingEnabled;
    private final boolean monitorViaDialogEnabled;
    private final String nuxContent;
    private final boolean nuxEnabled;
    private final String rawAamRules;
    private final String restrictiveDataSetting;
    private final String sdkUpdateMessage;
    private final int sessionTimeoutInSeconds;
    private final String smartLoginBookmarkIconURL;
    private final String smartLoginMenuIconURL;
    private final EnumSet<SmartLoginOption> smartLoginOptions;
    private final String suggestedEventsSetting;
    private final boolean supportsImplicitLogging;
    private final boolean trackUninstallEnabled;

    /* JADX INFO: compiled from: FetchedAppSettings.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        public final DialogFeatureConfig getDialogFeatureConfig(String str, String str2, String str3) {
            t9.m.e(str, "applicationId");
            t9.m.e(str2, "actionName");
            t9.m.e(str3, "featureName");
            if (!(str2.length() == 0)) {
                if (!(str3.length() == 0)) {
                    FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
                    FetchedAppSettings appSettingsWithoutQuery = FetchedAppSettingsManager.getAppSettingsWithoutQuery(str);
                    Map<String, DialogFeatureConfig> map = appSettingsWithoutQuery == null ? null : appSettingsWithoutQuery.getDialogConfigurations().get(str2);
                    if (map != null) {
                        return map.get(str3);
                    }
                }
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: FetchedAppSettings.kt */
    public static final class DialogFeatureConfig {
        public static final Companion Companion = new Companion(null);
        private static final String DIALOG_CONFIG_DIALOG_NAME_FEATURE_NAME_SEPARATOR = "|";
        private static final String DIALOG_CONFIG_NAME_KEY = "name";
        private static final String DIALOG_CONFIG_URL_KEY = "url";
        private static final String DIALOG_CONFIG_VERSIONS_KEY = "versions";
        private final String dialogName;
        private final Uri fallbackUrl;
        private final String featureName;
        private final int[] versionSpec;

        /* JADX INFO: compiled from: FetchedAppSettings.kt */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(t9.g gVar) {
                this();
            }

            private final int[] parseVersionSpec(JSONArray jSONArray) {
                if (jSONArray == null) {
                    return null;
                }
                int length = jSONArray.length();
                int[] iArr = new int[length];
                int i10 = 0;
                if (length <= 0) {
                    return iArr;
                }
                while (true) {
                    int i11 = i10 + 1;
                    int i12 = -1;
                    int iOptInt = jSONArray.optInt(i10, -1);
                    if (iOptInt == -1) {
                        String strOptString = jSONArray.optString(i10);
                        Utility utility = Utility.INSTANCE;
                        if (!Utility.isNullOrEmpty(strOptString)) {
                            try {
                                t9.m.d(strOptString, "versionString");
                                i12 = Integer.parseInt(strOptString);
                            } catch (NumberFormatException e10) {
                                Utility utility2 = Utility.INSTANCE;
                                Utility.logd(Utility.LOG_TAG, e10);
                            }
                            iOptInt = i12;
                        }
                    }
                    iArr[i10] = iOptInt;
                    if (i11 >= length) {
                        return iArr;
                    }
                    i10 = i11;
                }
            }

            public final DialogFeatureConfig parseDialogConfig(JSONObject jSONObject) {
                t9.m.e(jSONObject, "dialogConfigJSON");
                String strOptString = jSONObject.optString("name");
                Utility utility = Utility.INSTANCE;
                if (Utility.isNullOrEmpty(strOptString)) {
                    return null;
                }
                t9.m.d(strOptString, "dialogNameWithFeature");
                List listB0 = ba.q.b0(strOptString, new String[]{DialogFeatureConfig.DIALOG_CONFIG_DIALOG_NAME_FEATURE_NAME_SEPARATOR}, false, 0, 6, null);
                if (listB0.size() != 2) {
                    return null;
                }
                String str = (String) i9.t.v(listB0);
                String str2 = (String) i9.t.D(listB0);
                if (Utility.isNullOrEmpty(str) || Utility.isNullOrEmpty(str2)) {
                    return null;
                }
                String strOptString2 = jSONObject.optString("url");
                return new DialogFeatureConfig(str, str2, Utility.isNullOrEmpty(strOptString2) ? null : Uri.parse(strOptString2), parseVersionSpec(jSONObject.optJSONArray(DialogFeatureConfig.DIALOG_CONFIG_VERSIONS_KEY)), null);
            }
        }

        private DialogFeatureConfig(String str, String str2, Uri uri, int[] iArr) {
            this.dialogName = str;
            this.featureName = str2;
            this.fallbackUrl = uri;
            this.versionSpec = iArr;
        }

        public /* synthetic */ DialogFeatureConfig(String str, String str2, Uri uri, int[] iArr, t9.g gVar) {
            this(str, str2, uri, iArr);
        }

        public final String getDialogName() {
            return this.dialogName;
        }

        public final Uri getFallbackUrl() {
            return this.fallbackUrl;
        }

        public final String getFeatureName() {
            return this.featureName;
        }

        public final int[] getVersionSpec() {
            return this.versionSpec;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FetchedAppSettings(boolean z10, String str, boolean z11, int i10, EnumSet<SmartLoginOption> enumSet, Map<String, ? extends Map<String, DialogFeatureConfig>> map, boolean z12, FacebookRequestErrorClassification facebookRequestErrorClassification, String str2, String str3, boolean z13, boolean z14, JSONArray jSONArray, String str4, boolean z15, boolean z16, String str5, String str6, String str7) {
        t9.m.e(str, "nuxContent");
        t9.m.e(enumSet, "smartLoginOptions");
        t9.m.e(map, "dialogConfigurations");
        t9.m.e(facebookRequestErrorClassification, "errorClassification");
        t9.m.e(str2, "smartLoginBookmarkIconURL");
        t9.m.e(str3, "smartLoginMenuIconURL");
        t9.m.e(str4, "sdkUpdateMessage");
        this.supportsImplicitLogging = z10;
        this.nuxContent = str;
        this.nuxEnabled = z11;
        this.sessionTimeoutInSeconds = i10;
        this.smartLoginOptions = enumSet;
        this.dialogConfigurations = map;
        this.automaticLoggingEnabled = z12;
        this.errorClassification = facebookRequestErrorClassification;
        this.smartLoginBookmarkIconURL = str2;
        this.smartLoginMenuIconURL = str3;
        this.iAPAutomaticLoggingEnabled = z13;
        this.codelessEventsEnabled = z14;
        this.eventBindings = jSONArray;
        this.sdkUpdateMessage = str4;
        this.trackUninstallEnabled = z15;
        this.monitorViaDialogEnabled = z16;
        this.rawAamRules = str5;
        this.suggestedEventsSetting = str6;
        this.restrictiveDataSetting = str7;
    }

    public static final DialogFeatureConfig getDialogFeatureConfig(String str, String str2, String str3) {
        return Companion.getDialogFeatureConfig(str, str2, str3);
    }

    public final boolean getAutomaticLoggingEnabled() {
        return this.automaticLoggingEnabled;
    }

    public final boolean getCodelessEventsEnabled() {
        return this.codelessEventsEnabled;
    }

    public final Map<String, Map<String, DialogFeatureConfig>> getDialogConfigurations() {
        return this.dialogConfigurations;
    }

    public final FacebookRequestErrorClassification getErrorClassification() {
        return this.errorClassification;
    }

    public final JSONArray getEventBindings() {
        return this.eventBindings;
    }

    public final boolean getIAPAutomaticLoggingEnabled() {
        return this.iAPAutomaticLoggingEnabled;
    }

    public final boolean getMonitorViaDialogEnabled() {
        return this.monitorViaDialogEnabled;
    }

    public final String getNuxContent() {
        return this.nuxContent;
    }

    public final boolean getNuxEnabled() {
        return this.nuxEnabled;
    }

    public final String getRawAamRules() {
        return this.rawAamRules;
    }

    public final String getRestrictiveDataSetting() {
        return this.restrictiveDataSetting;
    }

    public final String getSdkUpdateMessage() {
        return this.sdkUpdateMessage;
    }

    public final int getSessionTimeoutInSeconds() {
        return this.sessionTimeoutInSeconds;
    }

    public final String getSmartLoginBookmarkIconURL() {
        return this.smartLoginBookmarkIconURL;
    }

    public final String getSmartLoginMenuIconURL() {
        return this.smartLoginMenuIconURL;
    }

    public final EnumSet<SmartLoginOption> getSmartLoginOptions() {
        return this.smartLoginOptions;
    }

    public final String getSuggestedEventsSetting() {
        return this.suggestedEventsSetting;
    }

    public final boolean getTrackUninstallEnabled() {
        return this.trackUninstallEnabled;
    }

    public final boolean supportsImplicitLogging() {
        return this.supportsImplicitLogging;
    }
}
