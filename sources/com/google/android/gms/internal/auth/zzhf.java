package com.google.android.gms.internal.auth;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public enum zzhf {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(BuildConfig.FLAVOR),
    BYTE_STRING(zzeb.f21462p),
    ENUM(null),
    MESSAGE(null);


    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Object f21610o;

    zzhf(Object obj) {
        this.f21610o = obj;
    }
}
