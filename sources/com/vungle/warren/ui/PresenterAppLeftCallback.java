package com.vungle.warren.ui;

import com.vungle.warren.model.Placement;
import com.vungle.warren.ui.contract.AdContract;
import com.vungle.warren.utility.ActivityManager;

/* JADX INFO: loaded from: classes2.dex */
public class PresenterAppLeftCallback implements ActivityManager.LeftApplicationCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AdContract.AdvertisementPresenter.EventListener f28387a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Placement f28388b;

    public PresenterAppLeftCallback(AdContract.AdvertisementPresenter.EventListener eventListener, Placement placement) {
        this.f28387a = eventListener;
        this.f28388b = placement;
    }

    @Override // com.vungle.warren.utility.ActivityManager.LeftApplicationCallback
    public void onLeftApplication() {
        AdContract.AdvertisementPresenter.EventListener eventListener = this.f28387a;
        if (eventListener != null) {
            Placement placement = this.f28388b;
            eventListener.onNext("open", "adLeftApplication", placement == null ? null : placement.getId());
        }
    }
}
