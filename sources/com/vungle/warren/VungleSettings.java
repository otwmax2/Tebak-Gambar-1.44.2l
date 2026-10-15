package com.vungle.warren;

/* JADX INFO: loaded from: classes2.dex */
public final class VungleSettings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f27996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f27997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f27998c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f27999d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f28000e;

    public static class Builder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f28003c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f28005e;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f28001a = 53477376;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f28002b = 52428800;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f28004d = 104857600;

        public VungleSettings build() {
            return new VungleSettings(this);
        }

        public Builder disableBannerRefresh() {
            this.f28005e = true;
            return this;
        }

        public Builder setAndroidIdOptOut(boolean z10) {
            this.f28003c = z10;
            return this;
        }

        public Builder setMaximumStorageForCleverCache(long j10) {
            this.f28004d = j10;
            return this;
        }

        public Builder setMinimumSpaceForAd(long j10) {
            this.f28002b = j10;
            return this;
        }

        public Builder setMinimumSpaceForInit(long j10) {
            this.f28001a = j10;
            return this;
        }
    }

    public boolean getAndroidIdOptOut() {
        return this.f27998c;
    }

    public boolean getBannerRefreshDisabled() {
        return this.f28000e;
    }

    public long getMaximumStorageForCleverCache() {
        return this.f27999d;
    }

    public long getMinimumSpaceForAd() {
        return this.f27997b;
    }

    public long getMinimumSpaceForInit() {
        return this.f27996a;
    }

    private VungleSettings(Builder builder) {
        this.f27997b = builder.f28002b;
        this.f27996a = builder.f28001a;
        this.f27998c = builder.f28003c;
        this.f28000e = builder.f28005e;
        this.f27999d = builder.f28004d;
    }
}
