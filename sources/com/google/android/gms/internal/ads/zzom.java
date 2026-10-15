package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.SystemClock;
import java.lang.reflect.Method;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzom {
    private long A;
    private long B;
    private long C;
    private boolean D;
    private long E;
    private long F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzol f20325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f20326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AudioTrack f20327c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f20328d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f20329e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private zzok f20330f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f20331g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f20332h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f20333i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f20334j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f20335k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f20336l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f20337m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Method f20338n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f20339o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f20340p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f20341q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f20342r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f20343s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f20344t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f20345u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f20346v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f20347w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f20348x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f20349y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f20350z;

    public zzom(zzol zzolVar) {
        this.f20325a = zzolVar;
        int i10 = zzew.f17494a;
        try {
            this.f20338n = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.f20326b = new long[10];
    }

    private final long l(long j10) {
        return (j10 * 1000000) / ((long) this.f20331g);
    }

    private final long m() {
        AudioTrack audioTrack = this.f20327c;
        Objects.requireNonNull(audioTrack);
        if (this.f20348x != -9223372036854775807L) {
            return Math.min(this.A, this.f20350z + ((((SystemClock.elapsedRealtime() * 1000) - this.f20348x) * ((long) this.f20331g)) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        long j10 = 0;
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = ((long) audioTrack.getPlaybackHeadPosition()) & 4294967295L;
        if (this.f20332h) {
            if (playState == 2) {
                if (playbackHeadPosition == 0) {
                    this.f20345u = this.f20343s;
                }
                playState = 2;
            }
            playbackHeadPosition += this.f20345u;
        }
        if (zzew.f17494a <= 29) {
            if (playbackHeadPosition != 0) {
                j10 = playbackHeadPosition;
            } else if (this.f20343s > 0 && playState == 3) {
                if (this.f20349y == -9223372036854775807L) {
                    this.f20349y = SystemClock.elapsedRealtime();
                }
                return this.f20343s;
            }
            this.f20349y = -9223372036854775807L;
            playbackHeadPosition = j10;
        }
        if (this.f20343s > playbackHeadPosition) {
            this.f20344t++;
        }
        this.f20343s = playbackHeadPosition;
        return playbackHeadPosition + (this.f20344t << 32);
    }

    private final void n() {
        this.f20336l = 0L;
        this.f20347w = 0;
        this.f20346v = 0;
        this.f20337m = 0L;
        this.C = 0L;
        this.F = 0L;
        this.f20335k = false;
    }

    public final int a(long j10) {
        return this.f20329e - ((int) (j10 - (m() * ((long) this.f20328d))));
    }

    public final long b(boolean z10) {
        long jL;
        Method method;
        zzom zzomVar = this;
        AudioTrack audioTrack = zzomVar.f20327c;
        Objects.requireNonNull(audioTrack);
        if (audioTrack.getPlayState() == 3) {
            long jL2 = zzomVar.l(m());
            if (jL2 != 0) {
                long jNanoTime = System.nanoTime() / 1000;
                if (jNanoTime - zzomVar.f20337m >= 30000) {
                    long[] jArr = zzomVar.f20326b;
                    int i10 = zzomVar.f20346v;
                    jArr[i10] = jL2 - jNanoTime;
                    zzomVar.f20346v = (i10 + 1) % 10;
                    int i11 = zzomVar.f20347w;
                    if (i11 < 10) {
                        zzomVar.f20347w = i11 + 1;
                    }
                    zzomVar.f20337m = jNanoTime;
                    zzomVar.f20336l = 0L;
                    int i12 = 0;
                    while (true) {
                        int i13 = zzomVar.f20347w;
                        if (i12 >= i13) {
                            break;
                        }
                        zzomVar.f20336l += zzomVar.f20326b[i12] / ((long) i13);
                        i12++;
                    }
                }
                if (!zzomVar.f20332h) {
                    zzok zzokVar = zzomVar.f20330f;
                    Objects.requireNonNull(zzokVar);
                    if (zzokVar.g(jNanoTime)) {
                        long jB = zzokVar.b();
                        long jA = zzokVar.a();
                        if (Math.abs(jB - jNanoTime) > 5000000) {
                            zzpa zzpaVar = (zzpa) zzomVar.f20325a;
                            zzee.e("DefaultAudioSink", "Spurious audio timestamp (system clock mismatch): " + jA + ", " + jB + ", " + jNanoTime + ", " + jL2 + ", " + zzpaVar.f20379a.m() + ", " + zzpaVar.f20379a.n());
                            zzokVar.d();
                        } else if (Math.abs(zzomVar.l(jA) - jL2) > 5000000) {
                            zzpa zzpaVar2 = (zzpa) zzomVar.f20325a;
                            zzee.e("DefaultAudioSink", "Spurious audio timestamp (frame position mismatch): " + jA + ", " + jB + ", " + jNanoTime + ", " + jL2 + ", " + zzpaVar2.f20379a.m() + ", " + zzpaVar2.f20379a.n());
                            zzokVar.d();
                        } else {
                            zzokVar.c();
                        }
                        zzomVar = this;
                    }
                    if (zzomVar.f20341q && (method = zzomVar.f20338n) != null && jNanoTime - zzomVar.f20342r >= 500000) {
                        try {
                            AudioTrack audioTrack2 = zzomVar.f20327c;
                            Objects.requireNonNull(audioTrack2);
                            Integer num = (Integer) method.invoke(audioTrack2, new Object[0]);
                            int i14 = zzew.f17494a;
                            long jIntValue = num.intValue();
                            long j10 = zzomVar.f20333i;
                            Long.signum(jIntValue);
                            long j11 = (jIntValue * 1000) - j10;
                            zzomVar.f20339o = j11;
                            long jMax = Math.max(j11, 0L);
                            zzomVar.f20339o = jMax;
                            if (jMax > 5000000) {
                                zzee.e("DefaultAudioSink", "Ignoring impossibly large audio latency: " + jMax);
                                zzomVar.f20339o = 0L;
                            }
                        } catch (Exception unused) {
                            zzomVar.f20338n = null;
                        }
                        zzomVar.f20342r = jNanoTime;
                    }
                }
            }
        }
        long jNanoTime2 = System.nanoTime() / 1000;
        zzok zzokVar2 = zzomVar.f20330f;
        Objects.requireNonNull(zzokVar2);
        boolean zF = zzokVar2.f();
        if (zF) {
            jL = zzomVar.l(zzokVar2.a()) + zzew.d0(jNanoTime2 - zzokVar2.b(), zzomVar.f20334j);
        } else {
            jL = zzomVar.f20347w == 0 ? zzomVar.l(m()) : zzomVar.f20336l + jNanoTime2;
            if (!z10) {
                jL = Math.max(0L, jL - zzomVar.f20339o);
            }
        }
        if (zzomVar.D != zF) {
            zzomVar.F = zzomVar.C;
            zzomVar.E = zzomVar.B;
        }
        long j12 = jNanoTime2 - zzomVar.F;
        if (j12 < 1000000) {
            long jD0 = zzomVar.E + zzew.d0(j12, zzomVar.f20334j);
            long j13 = (j12 * 1000) / 1000000;
            jL = ((jL * j13) + ((1000 - j13) * jD0)) / 1000;
        }
        if (!zzomVar.f20335k) {
            long j14 = zzomVar.B;
            if (jL > j14) {
                zzomVar.f20335k = true;
                int i15 = zzew.f17494a;
                long jCurrentTimeMillis = System.currentTimeMillis() - zzew.k0(zzew.f0(zzew.k0(jL - j14), zzomVar.f20334j));
                zzpf zzpfVar = ((zzpa) zzomVar.f20325a).f20379a;
                if (zzpfVar.f20399n != null) {
                    ((zzpk) zzpfVar.f20399n).f20412a.Q0.r(jCurrentTimeMillis);
                }
            }
        }
        zzomVar.C = jNanoTime2;
        zzomVar.B = jL;
        zzomVar.D = zF;
        return jL;
    }

    public final void c(long j10) {
        this.f20350z = m();
        this.f20348x = SystemClock.elapsedRealtime() * 1000;
        this.A = j10;
    }

    public final void d() {
        n();
        this.f20327c = null;
        this.f20330f = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void e(android.media.AudioTrack r4, boolean r5, int r6, int r7, int r8) {
        /*
            r3 = this;
            r3.f20327c = r4
            r3.f20328d = r7
            r3.f20329e = r8
            com.google.android.gms.internal.ads.zzok r0 = new com.google.android.gms.internal.ads.zzok
            r0.<init>(r4)
            r3.f20330f = r0
            int r4 = r4.getSampleRate()
            r3.f20331g = r4
            r4 = 6
            r0 = 1
            r1 = 0
            if (r5 == 0) goto L25
            int r5 = com.google.android.gms.internal.ads.zzew.f17494a
            r2 = 23
            if (r5 >= r2) goto L25
            r5 = 5
            if (r6 == r5) goto L26
            if (r6 != r4) goto L25
            r6 = 6
            goto L26
        L25:
            r0 = 0
        L26:
            r3.f20332h = r0
            boolean r4 = com.google.android.gms.internal.ads.zzew.w(r6)
            r3.f20341q = r4
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 == 0) goto L3c
            int r8 = r8 / r7
            long r7 = (long) r8
            long r7 = r3.l(r7)
            goto L3d
        L3c:
            r7 = r5
        L3d:
            r3.f20333i = r7
            r7 = 0
            r3.f20343s = r7
            r3.f20344t = r7
            r3.f20345u = r7
            r3.f20340p = r1
            r3.f20348x = r5
            r3.f20349y = r5
            r3.f20342r = r7
            r3.f20339o = r7
            r4 = 1065353216(0x3f800000, float:1.0)
            r3.f20334j = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzom.e(android.media.AudioTrack, boolean, int, int, int):void");
    }

    public final void f() {
        zzok zzokVar = this.f20330f;
        Objects.requireNonNull(zzokVar);
        zzokVar.e();
    }

    public final boolean g(long j10) {
        if (j10 > m()) {
            return true;
        }
        if (!this.f20332h) {
            return false;
        }
        AudioTrack audioTrack = this.f20327c;
        Objects.requireNonNull(audioTrack);
        return audioTrack.getPlayState() == 2 && m() == 0;
    }

    public final boolean h() {
        AudioTrack audioTrack = this.f20327c;
        Objects.requireNonNull(audioTrack);
        return audioTrack.getPlayState() == 3;
    }

    public final boolean i(long j10) {
        return this.f20349y != -9223372036854775807L && j10 > 0 && SystemClock.elapsedRealtime() - this.f20349y >= 200;
    }

    public final boolean j(long j10) {
        AudioTrack audioTrack = this.f20327c;
        Objects.requireNonNull(audioTrack);
        int playState = audioTrack.getPlayState();
        if (this.f20332h) {
            if (playState == 2) {
                this.f20340p = false;
                return false;
            }
            if (playState == 1) {
                if (m() == 0) {
                    return false;
                }
                playState = 1;
            }
        }
        boolean z10 = this.f20340p;
        boolean zG = g(j10);
        this.f20340p = zG;
        if (z10 && !zG && playState != 1) {
            zzol zzolVar = this.f20325a;
            int i10 = this.f20329e;
            long jK0 = zzew.k0(this.f20333i);
            zzpa zzpaVar = (zzpa) zzolVar;
            if (zzpaVar.f20379a.f20399n != null) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                zzpf zzpfVar = zzpaVar.f20379a;
                ((zzpk) zzpfVar.f20399n).f20412a.Q0.t(i10, jK0, jElapsedRealtime - zzpfVar.R);
            }
        }
        return true;
    }

    public final boolean k() {
        n();
        if (this.f20348x != -9223372036854775807L) {
            return false;
        }
        zzok zzokVar = this.f20330f;
        Objects.requireNonNull(zzokVar);
        zzokVar.e();
        return true;
    }
}
