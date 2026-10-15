package com.vungle.warren;

import com.vungle.warren.error.VungleException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
class PlayAdCallbackWrapper implements PlayAdCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PlayAdCallback f27822a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ExecutorService f27823b;

    public PlayAdCallbackWrapper(ExecutorService executorService, PlayAdCallback playAdCallback) {
        this.f27822a = playAdCallback;
        this.f27823b = executorService;
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void creativeId(final String str) {
        if (this.f27822a == null) {
            return;
        }
        this.f27823b.execute(new Runnable() { // from class: com.vungle.warren.PlayAdCallbackWrapper.1
            @Override // java.lang.Runnable
            public void run() {
                PlayAdCallbackWrapper.this.f27822a.creativeId(str);
            }
        });
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdClick(final String str) {
        if (this.f27822a == null) {
            return;
        }
        this.f27823b.execute(new Runnable() { // from class: com.vungle.warren.PlayAdCallbackWrapper.5
            @Override // java.lang.Runnable
            public void run() {
                PlayAdCallbackWrapper.this.f27822a.onAdClick(str);
            }
        });
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdEnd(final String str, final boolean z10, final boolean z11) {
        if (this.f27822a == null) {
            return;
        }
        this.f27823b.execute(new Runnable() { // from class: com.vungle.warren.PlayAdCallbackWrapper.3
            @Override // java.lang.Runnable
            public void run() {
                PlayAdCallbackWrapper.this.f27822a.onAdEnd(str, z10, z11);
            }
        });
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdLeftApplication(final String str) {
        if (this.f27822a == null) {
            return;
        }
        this.f27823b.execute(new Runnable() { // from class: com.vungle.warren.PlayAdCallbackWrapper.6
            @Override // java.lang.Runnable
            public void run() {
                PlayAdCallbackWrapper.this.f27822a.onAdLeftApplication(str);
            }
        });
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdRewarded(final String str) {
        if (this.f27822a == null) {
            return;
        }
        this.f27823b.execute(new Runnable() { // from class: com.vungle.warren.PlayAdCallbackWrapper.7
            @Override // java.lang.Runnable
            public void run() {
                PlayAdCallbackWrapper.this.f27822a.onAdRewarded(str);
            }
        });
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdStart(final String str) {
        if (this.f27822a == null) {
            return;
        }
        this.f27823b.execute(new Runnable() { // from class: com.vungle.warren.PlayAdCallbackWrapper.2
            @Override // java.lang.Runnable
            public void run() {
                PlayAdCallbackWrapper.this.f27822a.onAdStart(str);
            }
        });
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdViewed(final String str) {
        if (this.f27822a == null) {
            return;
        }
        this.f27823b.execute(new Runnable() { // from class: com.vungle.warren.PlayAdCallbackWrapper.9
            @Override // java.lang.Runnable
            public void run() {
                PlayAdCallbackWrapper.this.f27822a.onAdViewed(str);
            }
        });
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onError(final String str, final VungleException vungleException) {
        if (this.f27822a == null) {
            return;
        }
        this.f27823b.execute(new Runnable() { // from class: com.vungle.warren.PlayAdCallbackWrapper.8
            @Override // java.lang.Runnable
            public void run() {
                PlayAdCallbackWrapper.this.f27822a.onError(str, vungleException);
            }
        });
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdEnd(final String str) {
        if (this.f27822a == null) {
            return;
        }
        this.f27823b.execute(new Runnable() { // from class: com.vungle.warren.PlayAdCallbackWrapper.4
            @Override // java.lang.Runnable
            public void run() {
                PlayAdCallbackWrapper.this.f27822a.onAdEnd(str);
            }
        });
    }
}
