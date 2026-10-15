package com.google.android.gms.common.wrappers;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class Wrappers {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Wrappers f7671b = new Wrappers();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private PackageManagerWrapper f7672a = null;

    @KeepForSdk
    public static PackageManagerWrapper a(Context context) {
        return f7671b.b(context);
    }

    @VisibleForTesting
    public final synchronized PackageManagerWrapper b(Context context) {
        if (this.f7672a == null) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.f7672a = new PackageManagerWrapper(context);
        }
        return this.f7672a;
    }
}
