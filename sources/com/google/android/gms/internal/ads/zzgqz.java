package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgqz extends InputStream {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Iterator f19497o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ByteBuffer f19498p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f19499q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f19500r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f19501s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f19502t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private byte[] f19503u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f19504v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f19505w;

    zzgqz(Iterable iterable) {
        this.f19497o = iterable.iterator();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            this.f19499q++;
        }
        this.f19500r = -1;
        if (c()) {
            return;
        }
        this.f19498p = zzgqw.f19493e;
        this.f19500r = 0;
        this.f19501s = 0;
        this.f19505w = 0L;
    }

    private final void b(int i10) {
        int i11 = this.f19501s + i10;
        this.f19501s = i11;
        if (i11 == this.f19498p.limit()) {
            c();
        }
    }

    private final boolean c() {
        this.f19500r++;
        if (!this.f19497o.hasNext()) {
            return false;
        }
        ByteBuffer byteBuffer = (ByteBuffer) this.f19497o.next();
        this.f19498p = byteBuffer;
        this.f19501s = byteBuffer.position();
        if (this.f19498p.hasArray()) {
            this.f19502t = true;
            this.f19503u = this.f19498p.array();
            this.f19504v = this.f19498p.arrayOffset();
        } else {
            this.f19502t = false;
            this.f19505w = zzgtq.m(this.f19498p);
            this.f19503u = null;
        }
        return true;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        if (this.f19500r == this.f19499q) {
            return -1;
        }
        if (this.f19502t) {
            int i10 = this.f19503u[this.f19501s + this.f19504v] & 255;
            b(1);
            return i10;
        }
        int i11 = zzgtq.i(((long) this.f19501s) + this.f19505w) & 255;
        b(1);
        return i11;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        if (this.f19500r == this.f19499q) {
            return -1;
        }
        int iLimit = this.f19498p.limit();
        int i12 = this.f19501s;
        int i13 = iLimit - i12;
        if (i11 > i13) {
            i11 = i13;
        }
        if (this.f19502t) {
            System.arraycopy(this.f19503u, i12 + this.f19504v, bArr, i10, i11);
            b(i11);
        } else {
            int iPosition = this.f19498p.position();
            this.f19498p.get(bArr, i10, i11);
            b(i11);
        }
        return i11;
    }
}
