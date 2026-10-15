package com.google.android.gms.common.api;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
public class ApiException extends Exception {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Deprecated
    protected final Status f6943o;

    public ApiException(Status status) {
        super(status.X3() + ": " + (status.Y3() != null ? status.Y3() : BuildConfig.FLAVOR));
        this.f6943o = status;
    }

    public Status a() {
        return this.f6943o;
    }

    public int b() {
        return this.f6943o.X3();
    }
}
