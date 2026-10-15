package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzql {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final ArrayDeque f20471g = new ArrayDeque();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Object f20472h = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MediaCodec f20473a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HandlerThread f20474b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f20475c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicReference f20476d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzdo f20477e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f20478f;

    public zzql(MediaCodec mediaCodec, HandlerThread handlerThread) {
        zzdo zzdoVar = new zzdo(zzdm.f15127a);
        this.f20473a = mediaCodec;
        this.f20474b = handlerThread;
        this.f20477e = zzdoVar;
        this.f20476d = new AtomicReference();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006a A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static /* bridge */ /* synthetic */ void a(com.google.android.gms.internal.ads.zzql r9, android.os.Message r10) {
        /*
            int r0 = r10.what
            r1 = 0
            if (r0 == 0) goto L43
            r2 = 1
            if (r0 == r2) goto L22
            r2 = 2
            if (r0 == r2) goto L1c
            java.util.concurrent.atomic.AtomicReference r9 = r9.f20476d
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            int r10 = r10.what
            java.lang.String r10 = java.lang.String.valueOf(r10)
            r0.<init>(r10)
            com.google.android.gms.internal.ads.zzqi.a(r9, r1, r0)
            goto L5d
        L1c:
            com.google.android.gms.internal.ads.zzdo r9 = r9.f20477e
            r9.e()
            goto L5d
        L22:
            java.lang.Object r10 = r10.obj
            com.google.android.gms.internal.ads.zzqk r10 = (com.google.android.gms.internal.ads.zzqk) r10
            int r3 = r10.f20465a
            android.media.MediaCodec$CryptoInfo r5 = r10.f20468d
            long r6 = r10.f20469e
            int r8 = r10.f20470f
            java.lang.Object r0 = com.google.android.gms.internal.ads.zzql.f20472h     // Catch: java.lang.RuntimeException -> L3c
            monitor-enter(r0)     // Catch: java.lang.RuntimeException -> L3c
            android.media.MediaCodec r2 = r9.f20473a     // Catch: java.lang.Throwable -> L39
            r4 = 0
            r2.queueSecureInputBuffer(r3, r4, r5, r6, r8)     // Catch: java.lang.Throwable -> L39
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L39
            goto L5c
        L39:
            r2 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L39
            throw r2     // Catch: java.lang.RuntimeException -> L3c
        L3c:
            r0 = move-exception
            java.util.concurrent.atomic.AtomicReference r9 = r9.f20476d
            com.google.android.gms.internal.ads.zzqi.a(r9, r1, r0)
            goto L5c
        L43:
            java.lang.Object r10 = r10.obj
            com.google.android.gms.internal.ads.zzqk r10 = (com.google.android.gms.internal.ads.zzqk) r10
            int r3 = r10.f20465a
            int r5 = r10.f20467c
            long r6 = r10.f20469e
            int r8 = r10.f20470f
            android.media.MediaCodec r2 = r9.f20473a     // Catch: java.lang.RuntimeException -> L56
            r4 = 0
            r2.queueInputBuffer(r3, r4, r5, r6, r8)     // Catch: java.lang.RuntimeException -> L56
            goto L5c
        L56:
            r0 = move-exception
            java.util.concurrent.atomic.AtomicReference r9 = r9.f20476d
            com.google.android.gms.internal.ads.zzqi.a(r9, r1, r0)
        L5c:
            r1 = r10
        L5d:
            if (r1 == 0) goto L6a
            java.util.ArrayDeque r9 = com.google.android.gms.internal.ads.zzql.f20471g
            monitor-enter(r9)
            r9.add(r1)     // Catch: java.lang.Throwable -> L67
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L67
            return
        L67:
            r10 = move-exception
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L67
            throw r10
        L6a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzql.a(com.google.android.gms.internal.ads.zzql, android.os.Message):void");
    }

    private static zzqk g() {
        ArrayDeque arrayDeque = f20471g;
        synchronized (arrayDeque) {
            if (arrayDeque.isEmpty()) {
                return new zzqk();
            }
            return (zzqk) arrayDeque.removeFirst();
        }
    }

    private final void h() {
        RuntimeException runtimeException = (RuntimeException) this.f20476d.getAndSet(null);
        if (runtimeException != null) {
            throw runtimeException;
        }
    }

    private static byte[] i(byte[] bArr, byte[] bArr2) {
        int length;
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 == null || bArr2.length < (length = bArr.length)) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    private static int[] j(int[] iArr, int[] iArr2) {
        int length;
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 == null || iArr2.length < (length = iArr.length)) {
            return Arrays.copyOf(iArr, iArr.length);
        }
        System.arraycopy(iArr, 0, iArr2, 0, length);
        return iArr2;
    }

    public final void b() {
        if (this.f20478f) {
            try {
                Handler handler = this.f20475c;
                Objects.requireNonNull(handler);
                handler.removeCallbacksAndMessages(null);
                this.f20477e.c();
                Handler handler2 = this.f20475c;
                Objects.requireNonNull(handler2);
                handler2.obtainMessage(2).sendToTarget();
                this.f20477e.a();
            } catch (InterruptedException e10) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e10);
            }
        }
    }

    public final void c(int i10, int i11, int i12, long j10, int i13) {
        h();
        zzqk zzqkVarG = g();
        zzqkVarG.a(i10, 0, i12, j10, i13);
        Handler handler = this.f20475c;
        int i14 = zzew.f17494a;
        handler.obtainMessage(0, zzqkVarG).sendToTarget();
    }

    public final void d(int i10, int i11, zzgo zzgoVar, long j10, int i12) {
        h();
        zzqk zzqkVarG = g();
        zzqkVarG.a(i10, 0, 0, j10, 0);
        MediaCodec.CryptoInfo cryptoInfo = zzqkVarG.f20468d;
        cryptoInfo.numSubSamples = zzgoVar.f19337f;
        cryptoInfo.numBytesOfClearData = j(zzgoVar.f19335d, cryptoInfo.numBytesOfClearData);
        cryptoInfo.numBytesOfEncryptedData = j(zzgoVar.f19336e, cryptoInfo.numBytesOfEncryptedData);
        byte[] bArrI = i(zzgoVar.f19333b, cryptoInfo.key);
        Objects.requireNonNull(bArrI);
        cryptoInfo.key = bArrI;
        byte[] bArrI2 = i(zzgoVar.f19332a, cryptoInfo.iv);
        Objects.requireNonNull(bArrI2);
        cryptoInfo.iv = bArrI2;
        cryptoInfo.mode = zzgoVar.f19334c;
        if (zzew.f17494a >= 24) {
            cryptoInfo.setPattern(new MediaCodec.CryptoInfo.Pattern(zzgoVar.f19338g, zzgoVar.f19339h));
        }
        this.f20475c.obtainMessage(1, zzqkVarG).sendToTarget();
    }

    public final void e() {
        if (this.f20478f) {
            b();
            this.f20474b.quit();
        }
        this.f20478f = false;
    }

    public final void f() {
        if (this.f20478f) {
            return;
        }
        this.f20474b.start();
        this.f20475c = new zzqj(this, this.f20474b.getLooper());
        this.f20478f = true;
    }
}
