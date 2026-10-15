package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.view.Surface;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzcba {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @VisibleForTesting
    private static final AtomicInteger f11700o = new AtomicInteger(0);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @VisibleForTesting
    private static final AtomicInteger f11701p = new AtomicInteger(0);

    public static int M() {
        return f11700o.get();
    }

    public static int O() {
        return f11701p.get();
    }

    protected static AtomicInteger t() {
        return f11700o;
    }

    protected static AtomicInteger u() {
        return f11701p;
    }

    public abstract void A(int i10);

    public abstract void B(zzcaz zzcazVar);

    public abstract void C(int i10);

    public abstract void D(int i10);

    public abstract void E(boolean z10);

    public abstract void F(boolean z10);

    public abstract void G(int i10);

    public abstract void H(Surface surface, boolean z10) throws IOException;

    public abstract void I(float f10, boolean z10) throws IOException;

    public abstract void J();

    public abstract boolean K();

    public abstract int L();

    public abstract int N();

    public abstract long P();

    public abstract long Q();

    public abstract long R();

    public abstract long S();

    public abstract long T();

    public abstract long r();

    public abstract long s();

    public abstract void v(Uri[] uriArr, String str);

    public abstract void w(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z10);

    public abstract void x();

    public abstract void y(long j10);

    public abstract void z(int i10);
}
