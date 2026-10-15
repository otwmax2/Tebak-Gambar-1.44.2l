package com.facebook.appevents.cloudbridge;

import com.facebook.GraphResponse;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.Arrays;

/* JADX INFO: compiled from: AppEventsConversionsAPITransformer.kt */
/* JADX INFO: loaded from: classes.dex */
public enum ConversionsAPICustomEventField {
    VALUE_TO_SUM(SDKConstants.PARAM_VALUE),
    EVENT_TIME("event_time"),
    EVENT_NAME("event_name"),
    CONTENT_IDS("content_ids"),
    CONTENTS("contents"),
    CONTENT_TYPE("content_type"),
    DESCRIPTION("description"),
    LEVEL("level"),
    MAX_RATING_VALUE("max_rating_value"),
    NUM_ITEMS("num_items"),
    PAYMENT_INFO_AVAILABLE("payment_info_available"),
    REGISTRATION_METHOD("registration_method"),
    SEARCH_STRING("search_string"),
    SUCCESS(GraphResponse.SUCCESS_KEY),
    ORDER_ID("order_id"),
    AD_TYPE("ad_type"),
    CURRENCY("currency");

    private final String rawValue;

    ConversionsAPICustomEventField(String str) {
        this.rawValue = str;
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static ConversionsAPICustomEventField[] valuesCustom() {
        ConversionsAPICustomEventField[] conversionsAPICustomEventFieldArrValuesCustom = values();
        return (ConversionsAPICustomEventField[]) Arrays.copyOf(conversionsAPICustomEventFieldArrValuesCustom, conversionsAPICustomEventFieldArrValuesCustom.length);
    }

    public final String getRawValue() {
        return this.rawValue;
    }
}
