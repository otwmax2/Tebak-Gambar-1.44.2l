package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgso extends zzgpe {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    static final int[] f19586x = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f19587s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzgpe f19588t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zzgpe f19589u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final int f19590v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final int f19591w;

    private zzgso(zzgpe zzgpeVar, zzgpe zzgpeVar2) {
        this.f19588t = zzgpeVar;
        this.f19589u = zzgpeVar2;
        int iO = zzgpeVar.o();
        this.f19590v = iO;
        this.f19587s = iO + zzgpeVar2.o();
        this.f19591w = Math.max(zzgpeVar.q(), zzgpeVar2.q()) + 1;
    }

    static zzgpe Q(zzgpe zzgpeVar, zzgpe zzgpeVar2) {
        if (zzgpeVar2.o() == 0) {
            return zzgpeVar;
        }
        if (zzgpeVar.o() == 0) {
            return zzgpeVar2;
        }
        int iO = zzgpeVar.o() + zzgpeVar2.o();
        if (iO < 128) {
            return R(zzgpeVar, zzgpeVar2);
        }
        if (zzgpeVar instanceof zzgso) {
            zzgso zzgsoVar = (zzgso) zzgpeVar;
            if (zzgsoVar.f19589u.o() + zzgpeVar2.o() < 128) {
                return new zzgso(zzgsoVar.f19588t, R(zzgsoVar.f19589u, zzgpeVar2));
            }
            if (zzgsoVar.f19588t.q() > zzgsoVar.f19589u.q() && zzgsoVar.f19591w > zzgpeVar2.q()) {
                return new zzgso(zzgsoVar.f19588t, new zzgso(zzgsoVar.f19589u, zzgpeVar2));
            }
        }
        return iO >= S(Math.max(zzgpeVar.q(), zzgpeVar2.q()) + 1) ? new zzgso(zzgpeVar, zzgpeVar2) : zzgsk.a(new zzgsk(null), zzgpeVar, zzgpeVar2);
    }

    private static zzgpe R(zzgpe zzgpeVar, zzgpe zzgpeVar2) {
        int iO = zzgpeVar.o();
        int iO2 = zzgpeVar2.o();
        byte[] bArr = new byte[iO + iO2];
        zzgpeVar.i(bArr, 0, 0, iO);
        zzgpeVar2.i(bArr, 0, iO, iO2);
        return new zzgpa(bArr);
    }

    static int S(int i10) {
        int[] iArr = f19586x;
        int length = iArr.length;
        if (i10 >= 47) {
            return Integer.MAX_VALUE;
        }
        return iArr[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    final void A(zzgot zzgotVar) throws IOException {
        this.f19588t.A(zzgotVar);
        this.f19589u.A(zzgotVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    public final boolean B() {
        int iT = this.f19588t.t(0, 0, this.f19590v);
        zzgpe zzgpeVar = this.f19589u;
        return zzgpeVar.t(iT, 0, zzgpeVar.o()) == 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    /* JADX INFO: renamed from: E */
    public final zzgoy iterator() {
        return new zzgsi(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgpe)) {
            return false;
        }
        zzgpe zzgpeVar = (zzgpe) obj;
        if (this.f19587s != zzgpeVar.o()) {
            return false;
        }
        if (this.f19587s == 0) {
            return true;
        }
        int iD = D();
        int iD2 = zzgpeVar.D();
        if (iD != 0 && iD2 != 0 && iD != iD2) {
            return false;
        }
        zzgsl zzgslVar = null;
        zzgsm zzgsmVar = new zzgsm(this, zzgslVar);
        zzgoz zzgozVarA = zzgsmVar.next();
        zzgsm zzgsmVar2 = new zzgsm(zzgpeVar, zzgslVar);
        zzgoz zzgozVarA2 = zzgsmVar2.next();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int iO = zzgozVarA.o() - i10;
            int iO2 = zzgozVarA2.o() - i11;
            int iMin = Math.min(iO, iO2);
            if (!(i10 == 0 ? zzgozVarA.P(zzgozVarA2, i11, iMin) : zzgozVarA2.P(zzgozVarA, i10, iMin))) {
                return false;
            }
            i12 += iMin;
            int i13 = this.f19587s;
            if (i12 >= i13) {
                if (i12 == i13) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (iMin == iO) {
                zzgozVarA = zzgsmVar.next();
                i10 = 0;
            } else {
                i10 += iMin;
                zzgozVarA = zzgozVarA;
            }
            if (iMin == iO2) {
                zzgozVarA2 = zzgsmVar2.next();
                i11 = 0;
            } else {
                i11 += iMin;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgpe, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzgsi(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    public final byte l(int i10) {
        zzgpe.g(i10, this.f19587s);
        return m(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    final byte m(int i10) {
        int i11 = this.f19590v;
        return i10 < i11 ? this.f19588t.m(i10) : this.f19589u.m(i10 - i11);
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    public final int o() {
        return this.f19587s;
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    protected final void p(byte[] bArr, int i10, int i11, int i12) {
        int i13 = i10 + i12;
        int i14 = this.f19590v;
        if (i13 <= i14) {
            this.f19588t.p(bArr, i10, i11, i12);
        } else {
            if (i10 >= i14) {
                this.f19589u.p(bArr, i10 - i14, i11, i12);
                return;
            }
            int i15 = i14 - i10;
            this.f19588t.p(bArr, i10, i11, i15);
            this.f19589u.p(bArr, 0, i11 + i15, i12 - i15);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    protected final int q() {
        return this.f19591w;
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    protected final boolean r() {
        return this.f19587s >= S(this.f19591w);
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    protected final int s(int i10, int i11, int i12) {
        int i13 = i11 + i12;
        int i14 = this.f19590v;
        if (i13 <= i14) {
            return this.f19588t.s(i10, i11, i12);
        }
        if (i11 >= i14) {
            return this.f19589u.s(i10, i11 - i14, i12);
        }
        int i15 = i14 - i11;
        return this.f19589u.s(this.f19588t.s(i10, i11, i15), 0, i12 - i15);
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    protected final int t(int i10, int i11, int i12) {
        int i13 = i11 + i12;
        int i14 = this.f19590v;
        if (i13 <= i14) {
            return this.f19588t.t(i10, i11, i12);
        }
        if (i11 >= i14) {
            return this.f19589u.t(i10, i11 - i14, i12);
        }
        int i15 = i14 - i11;
        return this.f19589u.t(this.f19588t.t(i10, i11, i15), 0, i12 - i15);
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    public final zzgpe u(int i10, int i11) {
        int iC = zzgpe.C(i10, i11, this.f19587s);
        if (iC == 0) {
            return zzgpe.f19379p;
        }
        if (iC == this.f19587s) {
            return this;
        }
        int i12 = this.f19590v;
        if (i11 <= i12) {
            return this.f19588t.u(i10, i11);
        }
        if (i10 >= i12) {
            return this.f19589u.u(i10 - i12, i11 - i12);
        }
        zzgpe zzgpeVar = this.f19588t;
        return new zzgso(zzgpeVar.u(i10, zzgpeVar.o()), this.f19589u.u(0, i11 - this.f19590v));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzgpe
    public final zzgpm v() {
        ArrayList<ByteBuffer> arrayList = new ArrayList();
        Object[] objArr = 0;
        zzgsm zzgsmVar = new zzgsm(this, null);
        while (zzgsmVar.hasNext()) {
            arrayList.add(zzgsmVar.next().y());
        }
        int i10 = zzgpm.f19410e;
        int i11 = 0;
        int iRemaining = 0;
        for (ByteBuffer byteBuffer : arrayList) {
            iRemaining += byteBuffer.remaining();
            i11 = byteBuffer.hasArray() ? i11 | 1 : byteBuffer.isDirect() ? i11 | 2 : i11 | 4;
        }
        return i11 == 2 ? new zzgpi(arrayList, iRemaining, true, objArr == true ? 1 : 0) : zzgpm.g(new zzgqz(arrayList), 4096);
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    protected final String x(Charset charset) {
        return new String(k(), charset);
    }
}
