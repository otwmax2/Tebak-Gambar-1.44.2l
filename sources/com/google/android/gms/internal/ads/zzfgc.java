package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfgc {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static final zzfgc f18158b = new zzfgc();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f18159a;

    private zzfgc() {
    }

    public static zzfgc b() {
        return f18158b;
    }

    public final Context a() {
        return this.f18159a;
    }

    public final void c(Context context) {
        this.f18159a = context != null ? context.getApplicationContext() : null;
    }
}
