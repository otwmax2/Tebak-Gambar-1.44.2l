package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class LifecycleCallback {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @KeepForSdk
    protected final LifecycleFragment f7031o;

    @KeepForSdk
    protected LifecycleCallback(LifecycleFragment lifecycleFragment) {
        this.f7031o = lifecycleFragment;
    }

    @KeepForSdk
    public static LifecycleFragment c(Activity activity) {
        return d(new LifecycleActivity(activity));
    }

    @KeepForSdk
    protected static LifecycleFragment d(LifecycleActivity lifecycleActivity) {
        if (lifecycleActivity.d()) {
            return zzd.q(lifecycleActivity.b());
        }
        if (lifecycleActivity.c()) {
            return zzb.f(lifecycleActivity.a());
        }
        throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
    }

    @Keep
    private static LifecycleFragment getChimeraLifecycleFragmentImpl(LifecycleActivity lifecycleActivity) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    @KeepForSdk
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @KeepForSdk
    public Activity b() {
        Activity activityD = this.f7031o.d();
        Preconditions.k(activityD);
        return activityD;
    }

    @KeepForSdk
    public void e(int i10, int i11, Intent intent) {
    }

    @KeepForSdk
    public void f(Bundle bundle) {
    }

    @KeepForSdk
    public void g() {
    }

    @KeepForSdk
    public void h() {
    }

    @KeepForSdk
    public void i(Bundle bundle) {
    }

    @KeepForSdk
    public void j() {
    }

    @KeepForSdk
    public void k() {
    }
}
