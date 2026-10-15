package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.media.AudioManager;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f6052a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f6053b = 1.0f;

    public static float b(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return 0.0f;
        }
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        int streamVolume = audioManager.getStreamVolume(3);
        if (streamMaxVolume == 0) {
            return 0.0f;
        }
        return streamVolume / streamMaxVolume;
    }

    private final synchronized boolean f() {
        return this.f6053b >= 0.0f;
    }

    public final synchronized float a() {
        if (!f()) {
            return 1.0f;
        }
        return this.f6053b;
    }

    public final synchronized void c(boolean z10) {
        this.f6052a = z10;
    }

    public final synchronized void d(float f10) {
        this.f6053b = f10;
    }

    public final synchronized boolean e() {
        return this.f6052a;
    }
}
