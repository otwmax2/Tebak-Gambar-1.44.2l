package com.facebook;

import java.util.Arrays;

/* JADX INFO: compiled from: LoggingBehavior.kt */
/* JADX INFO: loaded from: classes.dex */
public enum LoggingBehavior {
    REQUESTS,
    INCLUDE_ACCESS_TOKENS,
    INCLUDE_RAW_RESPONSES,
    CACHE,
    APP_EVENTS,
    DEVELOPER_ERRORS,
    GRAPH_API_DEBUG_WARNING,
    GRAPH_API_DEBUG_INFO;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static LoggingBehavior[] valuesCustom() {
        LoggingBehavior[] loggingBehaviorArrValuesCustom = values();
        return (LoggingBehavior[]) Arrays.copyOf(loggingBehaviorArrValuesCustom, loggingBehaviorArrValuesCustom.length);
    }
}
