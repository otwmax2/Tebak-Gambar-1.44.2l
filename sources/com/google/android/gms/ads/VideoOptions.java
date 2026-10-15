package com.google.android.gms.ads;

import com.google.android.gms.ads.internal.client.zzfl;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class VideoOptions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f5629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f5630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f5631c;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f5632a = true;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f5633b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f5634c = false;
    }

    public VideoOptions(zzfl zzflVar) {
        this.f5629a = zzflVar.f5898o;
        this.f5630b = zzflVar.f5899p;
        this.f5631c = zzflVar.f5900q;
    }

    public boolean a() {
        return this.f5631c;
    }

    public boolean b() {
        return this.f5630b;
    }

    public boolean c() {
        return this.f5629a;
    }
}
