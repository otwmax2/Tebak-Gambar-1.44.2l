package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcbd {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f11704b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f11703a = TimeUnit.MILLISECONDS.toNanos(((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.B)).longValue());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f11705c = true;

    zzcbd() {
    }

    public final void a(SurfaceTexture surfaceTexture, final zzcao zzcaoVar) {
        if (zzcaoVar == null) {
            return;
        }
        long timestamp = surfaceTexture.getTimestamp();
        if (this.f11705c || Math.abs(timestamp - this.f11704b) >= this.f11703a) {
            this.f11705c = false;
            this.f11704b = timestamp;
            com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbc
                @Override // java.lang.Runnable
                public final void run() {
                    zzcaoVar.i();
                }
            });
        }
    }

    public final void b() {
        this.f11705c = true;
    }
}
