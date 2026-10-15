package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.AudioTrack;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzok {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzoj f20319a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f20320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f20321c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f20322d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f20323e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f20324f;

    public zzok(AudioTrack audioTrack) {
        int i10 = zzew.f17494a;
        this.f20319a = new zzoj(audioTrack);
        h(0);
    }

    private final void h(int i10) {
        this.f20320b = i10;
        long j10 = 10000;
        if (i10 == 0) {
            this.f20323e = 0L;
            this.f20324f = -1L;
            this.f20321c = System.nanoTime() / 1000;
        } else {
            if (i10 == 1) {
                this.f20322d = 10000L;
                return;
            }
            j10 = (i10 == 2 || i10 == 3) ? 10000000L : 500000L;
        }
        this.f20322d = j10;
    }

    @TargetApi(19)
    public final long a() {
        return this.f20319a.a();
    }

    @TargetApi(19)
    public final long b() {
        return this.f20319a.b();
    }

    public final void c() {
        if (this.f20320b == 4) {
            h(0);
        }
    }

    public final void d() {
        h(4);
    }

    public final void e() {
        h(0);
    }

    public final boolean f() {
        return this.f20320b == 2;
    }

    @TargetApi(19)
    public final boolean g(long j10) {
        zzoj zzojVar = this.f20319a;
        if (j10 - this.f20323e < this.f20322d) {
            return false;
        }
        this.f20323e = j10;
        boolean zC = zzojVar.c();
        int i10 = this.f20320b;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    if (zC) {
                        return true;
                    }
                    h(0);
                    return false;
                }
                if (i10 == 3) {
                    if (!zC) {
                        return false;
                    }
                    h(0);
                    return true;
                }
            } else if (!zC) {
                h(0);
            } else if (this.f20319a.a() > this.f20324f) {
                h(2);
                return true;
            }
        } else {
            if (zC) {
                if (this.f20319a.b() < this.f20321c) {
                    return false;
                }
                this.f20324f = this.f20319a.a();
                h(1);
                return true;
            }
            if (j10 - this.f20321c > 500000) {
                h(3);
                return false;
            }
        }
        return zC;
    }
}
