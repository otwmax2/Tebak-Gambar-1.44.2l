package com.facebook;

import java.util.Arrays;

/* JADX INFO: compiled from: HttpMethod.kt */
/* JADX INFO: loaded from: classes.dex */
public enum HttpMethod {
    GET,
    POST,
    DELETE;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static HttpMethod[] valuesCustom() {
        HttpMethod[] httpMethodArrValuesCustom = values();
        return (HttpMethod[]) Arrays.copyOf(httpMethodArrValuesCustom, httpMethodArrValuesCustom.length);
    }
}
