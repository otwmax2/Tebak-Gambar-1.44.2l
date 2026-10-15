package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.pm.PackageManager;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class r2 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final v4.a f26061c = new v4.a("PackageStateCache");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f26062a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f26063b = -1;

    r2(Context context) {
        this.f26062a = context;
    }

    public final synchronized int a() {
        if (this.f26063b == -1) {
            try {
                this.f26063b = this.f26062a.getPackageManager().getPackageInfo(this.f26062a.getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException unused) {
                f26061c.b("The current version of the app could not be retrieved", new Object[0]);
            }
        }
        return this.f26063b;
    }
}
