package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public enum zznc {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(BuildConfig.FLAVOR),
    BYTE_STRING(zzjb.f23589p),
    ENUM(null),
    MESSAGE(null);


    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Object f23800o;

    zznc(Object obj) {
        this.f23800o = obj;
    }
}
