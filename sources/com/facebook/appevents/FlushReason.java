package com.facebook.appevents;

import java.util.Arrays;

/* JADX INFO: compiled from: FlushReason.kt */
/* JADX INFO: loaded from: classes.dex */
public enum FlushReason {
    EXPLICIT,
    TIMER,
    SESSION_CHANGE,
    PERSISTED_EVENTS,
    EVENT_THRESHOLD,
    EAGER_FLUSHING_EVENT;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static FlushReason[] valuesCustom() {
        FlushReason[] flushReasonArrValuesCustom = values();
        return (FlushReason[]) Arrays.copyOf(flushReasonArrValuesCustom, flushReasonArrValuesCustom.length);
    }
}
