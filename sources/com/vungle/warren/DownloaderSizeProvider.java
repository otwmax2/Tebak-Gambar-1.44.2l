package com.vungle.warren;

import com.vungle.warren.persistence.CacheManager;

/* JADX INFO: loaded from: classes2.dex */
public class DownloaderSizeProvider implements SizeProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f27792a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private CacheManager f27793b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RuntimeValues f27794c;

    public DownloaderSizeProvider(CacheManager cacheManager, RuntimeValues runtimeValues, float f10) {
        this.f27793b = cacheManager;
        this.f27794c = runtimeValues;
        this.f27792a = f10;
    }

    @Override // com.vungle.warren.SizeProvider
    public long getTargetSize() {
        VungleSettings vungleSettings = this.f27794c.f27848c.get();
        if (vungleSettings == null) {
            return 0L;
        }
        long bytesAvailable = this.f27793b.getBytesAvailable() / 2;
        long maximumStorageForCleverCache = vungleSettings.getMaximumStorageForCleverCache();
        long jMax = Math.max(0L, vungleSettings.getMinimumSpaceForAd() - bytesAvailable);
        float fMin = Math.min(maximumStorageForCleverCache, bytesAvailable);
        return Math.max(0L, ((long) (fMin - (this.f27792a * fMin))) - jMax);
    }
}
