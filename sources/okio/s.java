package okio;

import java.util.Arrays;

/* JADX INFO: compiled from: SegmentedByteString.java */
/* JADX INFO: loaded from: classes2.dex */
final class s extends f {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final transient byte[][] f33404t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final transient int[] f33405u;

    s(c cVar, int i10) {
        super(null);
        w.b(cVar.f33354p, 0L, i10);
        q qVar = cVar.f33353o;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            int i14 = qVar.f33397c;
            int i15 = qVar.f33396b;
            if (i14 == i15) {
                throw new AssertionError("s.limit == s.pos");
            }
            i12 += i14 - i15;
            i13++;
            qVar = qVar.f33400f;
        }
        this.f33404t = new byte[i13][];
        this.f33405u = new int[i13 * 2];
        q qVar2 = cVar.f33353o;
        int i16 = 0;
        while (i11 < i10) {
            byte[][] bArr = this.f33404t;
            bArr[i16] = qVar2.f33395a;
            int i17 = qVar2.f33397c;
            int i18 = qVar2.f33396b;
            i11 += i17 - i18;
            if (i11 > i10) {
                i11 = i10;
            }
            int[] iArr = this.f33405u;
            iArr[i16] = i11;
            iArr[bArr.length + i16] = i18;
            qVar2.f33398d = true;
            i16++;
            qVar2 = qVar2.f33400f;
        }
    }

    private int Q(int i10) {
        int iBinarySearch = Arrays.binarySearch(this.f33405u, 0, this.f33404t.length, i10 + 1);
        return iBinarySearch >= 0 ? iBinarySearch : iBinarySearch ^ (-1);
    }

    private f R() {
        return new f(N());
    }

    private Object writeReplace() {
        return R();
    }

    @Override // okio.f
    public f I() {
        return R().I();
    }

    @Override // okio.f
    public int J() {
        return this.f33405u[this.f33404t.length - 1];
    }

    @Override // okio.f
    public f L(int i10, int i11) {
        return R().L(i10, i11);
    }

    @Override // okio.f
    public f M() {
        return R().M();
    }

    @Override // okio.f
    public byte[] N() {
        int[] iArr = this.f33405u;
        byte[][] bArr = this.f33404t;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int[] iArr2 = this.f33405u;
            int i12 = iArr2[length + i10];
            int i13 = iArr2[i10];
            System.arraycopy(this.f33404t[i10], i12, bArr2, i11, i13 - i11);
            i10++;
            i11 = i13;
        }
        return bArr2;
    }

    @Override // okio.f
    public String O() {
        return R().O();
    }

    @Override // okio.f
    void P(c cVar) {
        int length = this.f33404t.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int[] iArr = this.f33405u;
            int i12 = iArr[length + i10];
            int i13 = iArr[i10];
            q qVar = new q(this.f33404t[i10], i12, (i12 + i13) - i11, true, false);
            q qVar2 = cVar.f33353o;
            if (qVar2 == null) {
                qVar.f33401g = qVar;
                qVar.f33400f = qVar;
                cVar.f33353o = qVar;
            } else {
                qVar2.f33401g.c(qVar);
            }
            i10++;
            i11 = i13;
        }
        cVar.f33354p += (long) i11;
    }

    @Override // okio.f
    public String c() {
        return R().c();
    }

    @Override // okio.f
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (fVar.J() == J() && q(0, fVar, 0, J())) {
                return true;
            }
        }
        return false;
    }

    @Override // okio.f
    public int hashCode() {
        int i10 = this.f33360p;
        if (i10 != 0) {
            return i10;
        }
        int length = this.f33404t.length;
        int i11 = 0;
        int i12 = 0;
        int i13 = 1;
        while (i11 < length) {
            byte[] bArr = this.f33404t[i11];
            int[] iArr = this.f33405u;
            int i14 = iArr[length + i11];
            int i15 = iArr[i11];
            int i16 = (i15 - i12) + i14;
            while (i14 < i16) {
                i13 = (i13 * 31) + bArr[i14];
                i14++;
            }
            i11++;
            i12 = i15;
        }
        this.f33360p = i13;
        return i13;
    }

    @Override // okio.f
    public byte m(int i10) {
        w.b(this.f33405u[this.f33404t.length - 1], i10, 1L);
        int iQ = Q(i10);
        int i11 = iQ == 0 ? 0 : this.f33405u[iQ - 1];
        int[] iArr = this.f33405u;
        byte[][] bArr = this.f33404t;
        return bArr[iQ][(i10 - i11) + iArr[bArr.length + iQ]];
    }

    @Override // okio.f
    public String n() {
        return R().n();
    }

    @Override // okio.f
    public boolean q(int i10, f fVar, int i11, int i12) {
        if (i10 < 0 || i10 > J() - i12) {
            return false;
        }
        int iQ = Q(i10);
        while (i12 > 0) {
            int i13 = iQ == 0 ? 0 : this.f33405u[iQ - 1];
            int iMin = Math.min(i12, ((this.f33405u[iQ] - i13) + i13) - i10);
            int[] iArr = this.f33405u;
            byte[][] bArr = this.f33404t;
            if (!fVar.r(i11, bArr[iQ], (i10 - i13) + iArr[bArr.length + iQ], iMin)) {
                return false;
            }
            i10 += iMin;
            i11 += iMin;
            i12 -= iMin;
            iQ++;
        }
        return true;
    }

    @Override // okio.f
    public boolean r(int i10, byte[] bArr, int i11, int i12) {
        if (i10 < 0 || i10 > J() - i12 || i11 < 0 || i11 > bArr.length - i12) {
            return false;
        }
        int iQ = Q(i10);
        while (i12 > 0) {
            int i13 = iQ == 0 ? 0 : this.f33405u[iQ - 1];
            int iMin = Math.min(i12, ((this.f33405u[iQ] - i13) + i13) - i10);
            int[] iArr = this.f33405u;
            byte[][] bArr2 = this.f33404t;
            if (!w.a(bArr2[iQ], (i10 - i13) + iArr[bArr2.length + iQ], bArr, i11, iMin)) {
                return false;
            }
            i10 += iMin;
            i11 += iMin;
            i12 -= iMin;
            iQ++;
        }
        return true;
    }

    @Override // okio.f
    public String toString() {
        return R().toString();
    }

    @Override // okio.f
    public f u() {
        return R().u();
    }
}
