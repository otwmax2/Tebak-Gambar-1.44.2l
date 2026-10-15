package com.facebook.appevents.cloudbridge;

import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.internal.Constants;
import java.util.Arrays;
import t9.g;
import t9.m;

/* JADX INFO: compiled from: AppEventsConversionsAPITransformer.kt */
/* JADX INFO: loaded from: classes.dex */
public enum CustomEventField {
    EVENT_TIME(Constants.LOG_TIME_APP_EVENT_KEY),
    EVENT_NAME(Constants.EVENT_NAME_EVENT_KEY),
    VALUE_TO_SUM(AppEventsConstants.EVENT_PARAM_VALUE_TO_SUM),
    CONTENT_IDS(AppEventsConstants.EVENT_PARAM_CONTENT_ID),
    CONTENTS(AppEventsConstants.EVENT_PARAM_CONTENT),
    CONTENT_TYPE(AppEventsConstants.EVENT_PARAM_CONTENT_TYPE),
    DESCRIPTION(AppEventsConstants.EVENT_PARAM_DESCRIPTION),
    LEVEL(AppEventsConstants.EVENT_PARAM_LEVEL),
    MAX_RATING_VALUE(AppEventsConstants.EVENT_PARAM_MAX_RATING_VALUE),
    NUM_ITEMS(AppEventsConstants.EVENT_PARAM_NUM_ITEMS),
    PAYMENT_INFO_AVAILABLE(AppEventsConstants.EVENT_PARAM_PAYMENT_INFO_AVAILABLE),
    REGISTRATION_METHOD(AppEventsConstants.EVENT_PARAM_REGISTRATION_METHOD),
    SEARCH_STRING(AppEventsConstants.EVENT_PARAM_SEARCH_STRING),
    SUCCESS(AppEventsConstants.EVENT_PARAM_SUCCESS),
    ORDER_ID(AppEventsConstants.EVENT_PARAM_ORDER_ID),
    AD_TYPE("ad_type"),
    CURRENCY(AppEventsConstants.EVENT_PARAM_CURRENCY);

    public static final Companion Companion = new Companion(null);
    private final String rawValue;

    /* JADX INFO: compiled from: AppEventsConversionsAPITransformer.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final CustomEventField invoke(String str) {
            m.e(str, "rawValue");
            for (CustomEventField customEventField : CustomEventField.valuesCustom()) {
                if (m.a(customEventField.getRawValue(), str)) {
                    return customEventField;
                }
            }
            return null;
        }
    }

    CustomEventField(String str) {
        this.rawValue = str;
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static CustomEventField[] valuesCustom() {
        CustomEventField[] customEventFieldArrValuesCustom = values();
        return (CustomEventField[]) Arrays.copyOf(customEventFieldArrValuesCustom, customEventFieldArrValuesCustom.length);
    }

    public final String getRawValue() {
        return this.rawValue;
    }
}
