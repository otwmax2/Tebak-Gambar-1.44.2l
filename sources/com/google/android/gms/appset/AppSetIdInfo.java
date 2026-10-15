package com.google.android.gms.appset;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-appset@@16.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class AppSetIdInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6501a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6502b;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-appset@@16.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface Scope {
    }

    public AppSetIdInfo(String str, int i10) {
        this.f6501a = str;
        this.f6502b = i10;
    }

    public String a() {
        return this.f6501a;
    }

    public int b() {
        return this.f6502b;
    }
}
