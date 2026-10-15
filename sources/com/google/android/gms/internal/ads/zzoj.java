package com.google.android.gms.internal.ads;

import android.media.AudioTimestamp;
import android.media.AudioTrack;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzoj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AudioTrack f20314a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AudioTimestamp f20315b = new AudioTimestamp();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f20316c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f20317d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f20318e;

    public zzoj(AudioTrack audioTrack) {
        this.f20314a = audioTrack;
    }

    public final long a() {
        return this.f20318e;
    }

    public final long b() {
        return this.f20315b.nanoTime / 1000;
    }

    public final boolean c() {
        boolean timestamp = this.f20314a.getTimestamp(this.f20315b);
        if (timestamp) {
            long j10 = this.f20315b.framePosition;
            if (this.f20317d > j10) {
                this.f20316c++;
            }
            this.f20317d = j10;
            this.f20318e = j10 + (this.f20316c << 32);
        }
        return timestamp;
    }
}
