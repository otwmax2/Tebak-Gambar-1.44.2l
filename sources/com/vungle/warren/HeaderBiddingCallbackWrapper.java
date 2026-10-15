package com.vungle.warren;

import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public class HeaderBiddingCallbackWrapper implements HeaderBiddingCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HeaderBiddingCallback f27795a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ExecutorService f27796b;

    HeaderBiddingCallbackWrapper(ExecutorService executorService, HeaderBiddingCallback headerBiddingCallback) {
        this.f27795a = headerBiddingCallback;
        this.f27796b = executorService;
    }

    @Override // com.vungle.warren.HeaderBiddingCallback
    public void adAvailableForBidToken(final String str, final String str2) {
        if (this.f27795a == null) {
            return;
        }
        this.f27796b.execute(new Runnable() { // from class: com.vungle.warren.HeaderBiddingCallbackWrapper.2
            @Override // java.lang.Runnable
            public void run() {
                HeaderBiddingCallbackWrapper.this.f27795a.adAvailableForBidToken(str, str2);
            }
        });
    }

    @Override // com.vungle.warren.HeaderBiddingCallback
    public void onBidTokenAvailable(final String str, final String str2) {
        if (this.f27795a == null) {
            return;
        }
        this.f27796b.execute(new Runnable() { // from class: com.vungle.warren.HeaderBiddingCallbackWrapper.1
            @Override // java.lang.Runnable
            public void run() {
                HeaderBiddingCallbackWrapper.this.f27795a.onBidTokenAvailable(str, str2);
            }
        });
    }
}
