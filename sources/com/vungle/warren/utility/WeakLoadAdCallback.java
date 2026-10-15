package com.vungle.warren.utility;

import com.vungle.warren.LoadAdCallback;
import com.vungle.warren.error.VungleException;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class WeakLoadAdCallback implements LoadAdCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<LoadAdCallback> f28594a;

    public WeakLoadAdCallback(LoadAdCallback loadAdCallback) {
        this.f28594a = new WeakReference<>(loadAdCallback);
    }

    @Override // com.vungle.warren.LoadAdCallback
    public void onAdLoad(String str) {
        LoadAdCallback loadAdCallback = this.f28594a.get();
        if (loadAdCallback != null) {
            loadAdCallback.onAdLoad(str);
        }
    }

    @Override // com.vungle.warren.LoadAdCallback, com.vungle.warren.PlayAdCallback
    public void onError(String str, VungleException vungleException) {
        LoadAdCallback loadAdCallback = this.f28594a.get();
        if (loadAdCallback != null) {
            loadAdCallback.onError(str, vungleException);
        }
    }
}
