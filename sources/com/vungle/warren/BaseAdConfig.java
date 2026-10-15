package com.vungle.warren;

import b7.c;
import com.vungle.warren.AdConfig;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public class BaseAdConfig {
    public static final int MUTED = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @c("settings")
    protected int f27770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @c("adSize")
    private AdConfig.AdSize f27771b;

    public BaseAdConfig() {
    }

    public AdConfig.AdSize getAdSize() {
        AdConfig.AdSize adSize = this.f27771b;
        return adSize == null ? AdConfig.AdSize.VUNGLE_DEFAULT : adSize;
    }

    public int getSettings() {
        return this.f27770a;
    }

    public void setAdSize(AdConfig.AdSize adSize) {
        this.f27771b = adSize;
    }

    public void setMuted(boolean z10) {
        if (z10) {
            this.f27770a |= 1;
        } else {
            this.f27770a &= -2;
        }
    }

    public BaseAdConfig(AdConfig.AdSize adSize) {
        this.f27771b = adSize;
    }

    public BaseAdConfig(BaseAdConfig baseAdConfig) {
        this(baseAdConfig.getAdSize());
        this.f27770a = baseAdConfig.getSettings();
    }
}
