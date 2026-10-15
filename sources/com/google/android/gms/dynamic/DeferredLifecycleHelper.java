package com.google.android.gms.dynamic;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.LifecycleDelegate;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public abstract class DeferredLifecycleHelper<T extends LifecycleDelegate> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final OnDelegateCreatedListener<T> f7904a = new a(this);

    @KeepForSdk
    public DeferredLifecycleHelper() {
    }
}
