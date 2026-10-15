package com.android.installreferrer.api;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class ReferrerDetails {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bundle f5019a;

    public ReferrerDetails(Bundle bundle) {
        this.f5019a = bundle;
    }

    public String a() {
        return this.f5019a.getString("install_referrer");
    }
}
