package com.google.android.gms.internal.firebase_auth;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public enum zzlt {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(BuildConfig.FLAVOR),
    BYTE_STRING(zzgv.f22647p),
    ENUM(null),
    MESSAGE(null);


    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Object f22932o;

    zzlt(Object obj) {
        this.f22932o = obj;
    }
}
