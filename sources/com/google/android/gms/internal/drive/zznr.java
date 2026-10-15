package com.google.android.gms.internal.drive;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: loaded from: classes2.dex */
public enum zznr {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(BuildConfig.FLAVOR),
    BYTE_STRING(zzjc.f22078p),
    ENUM(null),
    MESSAGE(null);


    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Object f22365o;

    zznr(Object obj) {
        this.f22365o = obj;
    }
}
