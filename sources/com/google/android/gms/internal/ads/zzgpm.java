package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgpm {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile int f19409d = 100;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f19410e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f19411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f19412b = f19409d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    zzgpn f19413c;

    /* synthetic */ zzgpm(zzgpl zzgplVar) {
    }

    public static int e(int i10) {
        return (i10 >>> 1) ^ (-(i10 & 1));
    }

    public static long f(long j10) {
        return (j10 >>> 1) ^ (-(1 & j10));
    }

    public static zzgpm g(InputStream inputStream, int i10) {
        return new zzgpk(inputStream, 4096, null);
    }

    static zzgpm h(byte[] bArr, int i10, int i11, boolean z10) {
        zzgpg zzgpgVar = new zzgpg(bArr, i10, i11, z10, null);
        try {
            zzgpgVar.l(i11);
            return zzgpgVar;
        } catch (zzgqy e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public abstract String A() throws IOException;

    public abstract void B(int i10) throws zzgqy;

    public abstract void a(int i10);

    public abstract boolean b() throws IOException;

    public abstract boolean c() throws IOException;

    public abstract boolean d(int i10) throws IOException;

    public abstract double i() throws IOException;

    public abstract float j() throws IOException;

    public abstract int k();

    public abstract int l(int i10) throws zzgqy;

    public abstract int m() throws IOException;

    public abstract int n() throws IOException;

    public abstract int o() throws IOException;

    public abstract int p() throws IOException;

    public abstract int q() throws IOException;

    public abstract int r() throws IOException;

    public abstract int s() throws IOException;

    public abstract long t() throws IOException;

    public abstract long u() throws IOException;

    public abstract long v() throws IOException;

    public abstract long w() throws IOException;

    public abstract long x() throws IOException;

    public abstract zzgpe y() throws IOException;

    public abstract String z() throws IOException;
}
