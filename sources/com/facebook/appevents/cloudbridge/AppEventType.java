package com.facebook.appevents.cloudbridge;

import java.util.Arrays;
import t9.g;
import t9.m;

/* JADX INFO: compiled from: AppEventsConversionsAPITransformer.kt */
/* JADX INFO: loaded from: classes.dex */
public enum AppEventType {
    MOBILE_APP_INSTALL,
    CUSTOM,
    OTHER;

    public static final Companion Companion = new Companion(null);

    /* JADX INFO: compiled from: AppEventsConversionsAPITransformer.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final AppEventType invoke(String str) {
            m.e(str, "rawValue");
            return m.a(str, "MOBILE_APP_INSTALL") ? AppEventType.MOBILE_APP_INSTALL : m.a(str, "CUSTOM_APP_EVENTS") ? AppEventType.CUSTOM : AppEventType.OTHER;
        }
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static AppEventType[] valuesCustom() {
        AppEventType[] appEventTypeArrValuesCustom = values();
        return (AppEventType[]) Arrays.copyOf(appEventTypeArrValuesCustom, appEventTypeArrValuesCustom.length);
    }
}
