package com.google.android.gms.ads.nativead;

import com.google.android.gms.ads.VideoOptions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class NativeAdOptions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f6327a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f6329c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f6330d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final VideoOptions f6331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f6332f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f6333g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f6334h;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public @interface AdChoicesPlacement {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public static final class Builder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private VideoOptions f6338d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f6335a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f6336b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f6337c = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f6339e = 1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f6340f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f6341g = false;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f6342h = 0;

        public NativeAdOptions a() {
            return new NativeAdOptions(this, null);
        }

        public Builder b(@SwipeGestureDirection int i10, boolean z10) {
            this.f6341g = z10;
            this.f6342h = i10;
            return this;
        }

        public Builder c(@AdChoicesPlacement int i10) {
            this.f6339e = i10;
            return this;
        }

        public Builder d(@NativeMediaAspectRatio int i10) {
            this.f6336b = i10;
            return this;
        }

        public Builder e(boolean z10) {
            this.f6340f = z10;
            return this;
        }

        public Builder f(boolean z10) {
            this.f6337c = z10;
            return this;
        }

        public Builder g(boolean z10) {
            this.f6335a = z10;
            return this;
        }

        public Builder h(VideoOptions videoOptions) {
            this.f6338d = videoOptions;
            return this;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public @interface NativeMediaAspectRatio {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public @interface SwipeGestureDirection {
    }

    /* synthetic */ NativeAdOptions(Builder builder, zza zzaVar) {
        this.f6327a = builder.f6335a;
        this.f6328b = builder.f6336b;
        this.f6329c = builder.f6337c;
        this.f6330d = builder.f6339e;
        this.f6331e = builder.f6338d;
        this.f6332f = builder.f6340f;
        this.f6333g = builder.f6341g;
        this.f6334h = builder.f6342h;
    }

    public int a() {
        return this.f6330d;
    }

    public int b() {
        return this.f6328b;
    }

    public VideoOptions c() {
        return this.f6331e;
    }

    public boolean d() {
        return this.f6329c;
    }

    public boolean e() {
        return this.f6327a;
    }

    public final int f() {
        return this.f6334h;
    }

    public final boolean g() {
        return this.f6333g;
    }

    public final boolean h() {
        return this.f6332f;
    }
}
