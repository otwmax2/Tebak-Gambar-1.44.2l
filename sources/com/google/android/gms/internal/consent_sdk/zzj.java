package com.google.android.gms.internal.consent_sdk;

import android.util.Log;
import z4.e;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzj extends Exception {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f21785o;

    public zzj(int i10, String str) {
        super(str);
        this.f21785o = i10;
    }

    public final e a() {
        if (getCause() == null) {
            Log.w("UserMessagingPlatform", getMessage());
        } else {
            Log.w("UserMessagingPlatform", getMessage(), getCause());
        }
        return new e(this.f21785o, getMessage());
    }
}
