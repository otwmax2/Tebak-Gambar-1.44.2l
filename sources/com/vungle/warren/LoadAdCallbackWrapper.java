package com.vungle.warren;

import com.vungle.warren.error.VungleException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
class LoadAdCallbackWrapper implements LoadAdCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LoadAdCallback f27810a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ExecutorService f27811b;

    public LoadAdCallbackWrapper(ExecutorService executorService, LoadAdCallback loadAdCallback) {
        this.f27810a = loadAdCallback;
        this.f27811b = executorService;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LoadAdCallbackWrapper loadAdCallbackWrapper = (LoadAdCallbackWrapper) obj;
        LoadAdCallback loadAdCallback = this.f27810a;
        if (loadAdCallback == null ? loadAdCallbackWrapper.f27810a != null : !loadAdCallback.equals(loadAdCallbackWrapper.f27810a)) {
            return false;
        }
        ExecutorService executorService = this.f27811b;
        ExecutorService executorService2 = loadAdCallbackWrapper.f27811b;
        return executorService != null ? executorService.equals(executorService2) : executorService2 == null;
    }

    public int hashCode() {
        LoadAdCallback loadAdCallback = this.f27810a;
        int iHashCode = (loadAdCallback != null ? loadAdCallback.hashCode() : 0) * 31;
        ExecutorService executorService = this.f27811b;
        return iHashCode + (executorService != null ? executorService.hashCode() : 0);
    }

    @Override // com.vungle.warren.LoadAdCallback
    public void onAdLoad(final String str) {
        if (this.f27810a == null) {
            return;
        }
        this.f27811b.execute(new Runnable() { // from class: com.vungle.warren.LoadAdCallbackWrapper.1
            @Override // java.lang.Runnable
            public void run() {
                LoadAdCallbackWrapper.this.f27810a.onAdLoad(str);
            }
        });
    }

    @Override // com.vungle.warren.LoadAdCallback, com.vungle.warren.PlayAdCallback
    public void onError(final String str, final VungleException vungleException) {
        if (this.f27810a == null) {
            return;
        }
        this.f27811b.execute(new Runnable() { // from class: com.vungle.warren.LoadAdCallbackWrapper.2
            @Override // java.lang.Runnable
            public void run() {
                LoadAdCallbackWrapper.this.f27810a.onError(str, vungleException);
            }
        });
    }
}
