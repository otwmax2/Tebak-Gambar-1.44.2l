package com.vungle.warren;

import com.vungle.warren.AdLoader;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.Placement;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
class DownloadCallbackWrapper implements AdLoader.DownloadCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AdLoader.DownloadCallback f27779a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ExecutorService f27780b;

    public DownloadCallbackWrapper(ExecutorService executorService, AdLoader.DownloadCallback downloadCallback) {
        this.f27779a = downloadCallback;
        this.f27780b = executorService;
    }

    @Override // com.vungle.warren.AdLoader.DownloadCallback
    public void onDownloadCompleted(final AdRequest adRequest, final String str) {
        if (this.f27779a == null) {
            return;
        }
        this.f27780b.execute(new Runnable() { // from class: com.vungle.warren.DownloadCallbackWrapper.1
            @Override // java.lang.Runnable
            public void run() {
                DownloadCallbackWrapper.this.f27779a.onDownloadCompleted(adRequest, str);
            }
        });
    }

    @Override // com.vungle.warren.AdLoader.DownloadCallback
    public void onDownloadFailed(final VungleException vungleException, final AdRequest adRequest, final String str) {
        if (this.f27779a == null) {
            return;
        }
        this.f27780b.execute(new Runnable() { // from class: com.vungle.warren.DownloadCallbackWrapper.2
            @Override // java.lang.Runnable
            public void run() {
                DownloadCallbackWrapper.this.f27779a.onDownloadFailed(vungleException, adRequest, str);
            }
        });
    }

    @Override // com.vungle.warren.AdLoader.DownloadCallback
    public void onReady(final AdRequest adRequest, final Placement placement, final Advertisement advertisement) {
        if (this.f27779a == null) {
            return;
        }
        this.f27780b.execute(new Runnable() { // from class: com.vungle.warren.DownloadCallbackWrapper.3
            @Override // java.lang.Runnable
            public void run() {
                DownloadCallbackWrapper.this.f27779a.onReady(adRequest, placement, advertisement);
            }
        });
    }
}
