package com.vungle.warren.ui.contract;

import com.vungle.warren.ui.contract.AdContract;

/* JADX INFO: loaded from: classes2.dex */
public interface WebAdContract {

    public interface WebAdPresenter extends AdContract.AdvertisementPresenter<WebAdView> {
        void setAdVisibility(boolean z10);
    }

    public interface WebAdView extends AdContract.AdView<WebAdPresenter> {
        void setVisibility(boolean z10);

        void updateWindow();
    }
}
