package com.vungle.warren;

import com.vungle.warren.error.VungleException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
class InitCallbackWrapper implements InitCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InitCallback f27803a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ExecutorService f27804b;

    InitCallbackWrapper(ExecutorService executorService, InitCallback initCallback) {
        this.f27803a = initCallback;
        this.f27804b = executorService;
    }

    @Override // com.vungle.warren.InitCallback
    public void onAutoCacheAdAvailable(final String str) {
        if (this.f27803a == null) {
            return;
        }
        this.f27804b.execute(new Runnable() { // from class: com.vungle.warren.InitCallbackWrapper.3
            @Override // java.lang.Runnable
            public void run() {
                InitCallbackWrapper.this.f27803a.onAutoCacheAdAvailable(str);
            }
        });
    }

    @Override // com.vungle.warren.InitCallback
    public void onError(final VungleException vungleException) {
        if (this.f27803a == null) {
            return;
        }
        this.f27804b.execute(new Runnable() { // from class: com.vungle.warren.InitCallbackWrapper.2
            @Override // java.lang.Runnable
            public void run() {
                InitCallbackWrapper.this.f27803a.onError(vungleException);
            }
        });
    }

    @Override // com.vungle.warren.InitCallback
    public void onSuccess() {
        if (this.f27803a == null) {
            return;
        }
        this.f27804b.execute(new Runnable() { // from class: com.vungle.warren.InitCallbackWrapper.1
            @Override // java.lang.Runnable
            public void run() {
                InitCallbackWrapper.this.f27803a.onSuccess();
            }
        });
    }
}
