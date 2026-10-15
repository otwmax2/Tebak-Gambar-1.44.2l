package com.google.android.gms.ads.formats;

import com.google.android.gms.ads.VideoOptions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class NativeAdOptions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f5660a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f5661b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f5662c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f5663d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f5664e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final VideoOptions f5665f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f5666g;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public @interface AdChoicesPlacement {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public static final class Builder {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private VideoOptions f5671e;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f5667a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f5668b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f5669c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f5670d = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f5672f = 1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f5673g = false;

        public NativeAdOptions a() {
            return new NativeAdOptions(this, null);
        }

        public Builder b(@AdChoicesPlacement int i10) {
            this.f5672f = i10;
            return this;
        }

        @Deprecated
        public Builder c(int i10) {
            this.f5668b = i10;
            return this;
        }

        public Builder d(@NativeMediaAspectRatio int i10) {
            this.f5669c = i10;
            return this;
        }

        public Builder e(boolean z10) {
            this.f5673g = z10;
            return this;
        }

        public Builder f(boolean z10) {
            this.f5670d = z10;
            return this;
        }

        public Builder g(boolean z10) {
            this.f5667a = z10;
            return this;
        }

        public Builder h(VideoOptions videoOptions) {
            this.f5671e = videoOptions;
            return this;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public @interface NativeMediaAspectRatio {
    }

    /* synthetic */ NativeAdOptions(Builder builder, zzd zzdVar) {
        this.f5660a = builder.f5667a;
        this.f5661b = builder.f5668b;
        this.f5662c = builder.f5669c;
        this.f5663d = builder.f5670d;
        this.f5664e = builder.f5672f;
        this.f5665f = builder.f5671e;
        this.f5666g = builder.f5673g;
    }

    public int a() {
        return this.f5664e;
    }

    @Deprecated
    public int b() {
        return this.f5661b;
    }

    public int c() {
        return this.f5662c;
    }

    public VideoOptions d() {
        return this.f5665f;
    }

    public boolean e() {
        return this.f5663d;
    }

    public boolean f() {
        return this.f5660a;
    }

    public final boolean g() {
        return this.f5666g;
    }
}
