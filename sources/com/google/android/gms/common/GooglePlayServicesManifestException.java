package com.google.android.gms.common;

import com.google.android.gms.common.annotation.KeepName;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepName
public class GooglePlayServicesManifestException extends IllegalStateException {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f6918o;

    public GooglePlayServicesManifestException(int i10, String str) {
        super(str);
        this.f6918o = i10;
    }
}
