package k7;

import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: compiled from: State.java */
/* JADX INFO: loaded from: classes2.dex */
final class f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final f f31608e = new f(g.f31613b, 0, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f31609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f31610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f31611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f31612d;

    private f(g gVar, int i10, int i11, int i12) {
        this.f31610b = gVar;
        this.f31609a = i10;
        this.f31611c = i11;
        this.f31612d = i12;
    }

    f a(int i10) {
        g gVarA = this.f31610b;
        int i11 = this.f31609a;
        int i12 = this.f31612d;
        if (i11 == 4 || i11 == 2) {
            int i13 = d.f31601c[i11][0];
            int i14 = 65535 & i13;
            int i15 = i13 >> 16;
            gVarA = gVarA.a(i14, i15);
            i12 += i15;
            i11 = 0;
        }
        int i16 = this.f31611c;
        f fVar = new f(gVarA, i11, i16 + 1, i12 + ((i16 == 0 || i16 == 31) ? 18 : i16 == 62 ? 9 : 8));
        return fVar.f31611c == 2078 ? fVar.b(i10 + 1) : fVar;
    }

    f b(int i10) {
        int i11 = this.f31611c;
        return i11 == 0 ? this : new f(this.f31610b.b(i10 - i11, i11), this.f31609a, 0, this.f31612d);
    }

    int c() {
        return this.f31611c;
    }

    int d() {
        return this.f31612d;
    }

    int e() {
        return this.f31609a;
    }

    boolean f(f fVar) {
        int i10;
        int i11 = this.f31612d + (d.f31601c[this.f31609a][fVar.f31609a] >> 16);
        int i12 = fVar.f31611c;
        if (i12 > 0 && ((i10 = this.f31611c) == 0 || i10 > i12)) {
            i11 += 10;
        }
        return i11 <= fVar.f31612d;
    }

    f g(int i10, int i11) {
        int i12 = this.f31612d;
        g gVarA = this.f31610b;
        int i13 = this.f31609a;
        if (i10 != i13) {
            int i14 = d.f31601c[i13][i10];
            int i15 = 65535 & i14;
            int i16 = i14 >> 16;
            gVarA = gVarA.a(i15, i16);
            i12 += i16;
        }
        int i17 = i10 == 2 ? 4 : 5;
        return new f(gVarA.a(i11, i17), i10, 0, i12 + i17);
    }

    f h(int i10, int i11) {
        g gVar = this.f31610b;
        int i12 = this.f31609a;
        int i13 = i12 == 2 ? 4 : 5;
        return new f(gVar.a(d.f31603e[i12][i10], i13).a(i11, 5), this.f31609a, 0, this.f31612d + i13 + 5);
    }

    l7.a i(byte[] bArr) {
        LinkedList linkedList = new LinkedList();
        for (g gVarD = b(bArr.length).f31610b; gVarD != null; gVarD = gVarD.d()) {
            linkedList.addFirst(gVarD);
        }
        l7.a aVar = new l7.a();
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            ((g) it.next()).c(aVar, bArr);
        }
        return aVar;
    }

    public String toString() {
        return String.format("%s bits=%d bytes=%d", d.f31600b[this.f31609a], Integer.valueOf(this.f31612d), Integer.valueOf(this.f31611c));
    }
}
