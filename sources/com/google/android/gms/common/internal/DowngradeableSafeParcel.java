package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public abstract class DowngradeableSafeParcel extends AbstractSafeParcelable implements ReflectedParcelable {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final Object f7383p = new Object();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f7384o = false;

    @KeepForSdk
    protected static boolean V3(String str) {
        synchronized (f7383p) {
        }
        return true;
    }

    @KeepForSdk
    protected static Integer W3() {
        synchronized (f7383p) {
        }
        return null;
    }

    @KeepForSdk
    protected boolean X3() {
        return this.f7384o;
    }
}
