package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class LifecycleActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f7030a;

    public LifecycleActivity(Activity activity) {
        Preconditions.l(activity, "Activity must not be null");
        this.f7030a = activity;
    }

    public final Activity a() {
        return (Activity) this.f7030a;
    }

    public final androidx.fragment.app.e b() {
        return (androidx.fragment.app.e) this.f7030a;
    }

    public final boolean c() {
        return this.f7030a instanceof Activity;
    }

    public final boolean d() {
        return this.f7030a instanceof androidx.fragment.app.e;
    }
}
