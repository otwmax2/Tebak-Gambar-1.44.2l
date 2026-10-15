package com.google.android.gms.auth;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.logging.Logger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
public class zzl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @ShowFirstParty
    public static final String[] f6805a = {"com.google", "com.google.work", "cn.google"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @ShowFirstParty
    @SuppressLint({"InlinedApi"})
    public static final String f6806b = "androidPackageName";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ComponentName f6807c = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Logger f6808d = zzd.a("GoogleAuthUtil");

    zzl() {
    }
}
