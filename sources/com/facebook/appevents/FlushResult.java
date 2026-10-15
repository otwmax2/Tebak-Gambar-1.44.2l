package com.facebook.appevents;

import java.util.Arrays;

/* JADX INFO: compiled from: FlushResult.kt */
/* JADX INFO: loaded from: classes.dex */
public enum FlushResult {
    SUCCESS,
    SERVER_ERROR,
    NO_CONNECTIVITY,
    UNKNOWN_ERROR;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static FlushResult[] valuesCustom() {
        FlushResult[] flushResultArrValuesCustom = values();
        return (FlushResult[]) Arrays.copyOf(flushResultArrValuesCustom, flushResultArrValuesCustom.length);
    }
}
