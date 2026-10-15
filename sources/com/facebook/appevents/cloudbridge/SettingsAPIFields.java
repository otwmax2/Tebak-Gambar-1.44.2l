package com.facebook.appevents.cloudbridge;

import java.util.Arrays;

/* JADX INFO: compiled from: AppEventsCAPIManager.kt */
/* JADX INFO: loaded from: classes.dex */
public enum SettingsAPIFields {
    URL("endpoint"),
    ENABLED("is_enabled"),
    DATASETID("dataset_id"),
    ACCESSKEY("access_key");

    private final String rawValue;

    SettingsAPIFields(String str) {
        this.rawValue = str;
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static SettingsAPIFields[] valuesCustom() {
        SettingsAPIFields[] settingsAPIFieldsArrValuesCustom = values();
        return (SettingsAPIFields[]) Arrays.copyOf(settingsAPIFieldsArrValuesCustom, settingsAPIFieldsArrValuesCustom.length);
    }

    public final String getRawValue() {
        return this.rawValue;
    }
}
