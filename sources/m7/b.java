package m7;

/* JADX INFO: compiled from: GenericGFPoly.java */
/* JADX INFO: loaded from: classes2.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f32195a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f32196b;

    b(a aVar, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.f32195a = aVar;
        int length = iArr.length;
        if (length <= 1 || iArr[0] != 0) {
            this.f32196b = iArr;
            return;
        }
        int i10 = 1;
        while (i10 < length && iArr[i10] == 0) {
            i10++;
        }
        if (i10 == length) {
            this.f32196b = new int[]{0};
            return;
        }
        int[] iArr2 = new int[length - i10];
        this.f32196b = iArr2;
        System.arraycopy(iArr, i10, iArr2, 0, iArr2.length);
    }

    b a(b bVar) {
        if (!this.f32195a.equals(bVar.f32195a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (f()) {
            return bVar;
        }
        if (bVar.f()) {
            return this;
        }
        int[] iArr = this.f32196b;
        int[] iArr2 = bVar.f32196b;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i10 = length; i10 < iArr.length; i10++) {
            iArr3[i10] = a.a(iArr2[i10 - length], iArr[i10]);
        }
        return new b(this.f32195a, iArr3);
    }

    b[] b(b bVar) {
        if (!this.f32195a.equals(bVar.f32195a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (bVar.f()) {
            throw new IllegalArgumentException("Divide by 0");
        }
        b bVarE = this.f32195a.e();
        int iF = this.f32195a.f(bVar.c(bVar.e()));
        b bVarA = this;
        while (bVarA.e() >= bVar.e() && !bVarA.f()) {
            int iE = bVarA.e() - bVar.e();
            int iH = this.f32195a.h(bVarA.c(bVarA.e()), iF);
            b bVarH = bVar.h(iE, iH);
            bVarE = bVarE.a(this.f32195a.b(iE, iH));
            bVarA = bVarA.a(bVarH);
        }
        return new b[]{bVarE, bVarA};
    }

    int c(int i10) {
        return this.f32196b[(r0.length - 1) - i10];
    }

    int[] d() {
        return this.f32196b;
    }

    int e() {
        return this.f32196b.length - 1;
    }

    boolean f() {
        return this.f32196b[0] == 0;
    }

    b g(b bVar) {
        if (!this.f32195a.equals(bVar.f32195a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (f() || bVar.f()) {
            return this.f32195a.e();
        }
        int[] iArr = this.f32196b;
        int length = iArr.length;
        int[] iArr2 = bVar.f32196b;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = iArr[i10];
            for (int i12 = 0; i12 < length2; i12++) {
                int i13 = i10 + i12;
                iArr3[i13] = a.a(iArr3[i13], this.f32195a.h(i11, iArr2[i12]));
            }
        }
        return new b(this.f32195a, iArr3);
    }

    b h(int i10, int i11) {
        if (i10 < 0) {
            throw new IllegalArgumentException();
        }
        if (i11 == 0) {
            return this.f32195a.e();
        }
        int length = this.f32196b.length;
        int[] iArr = new int[i10 + length];
        for (int i12 = 0; i12 < length; i12++) {
            iArr[i12] = this.f32195a.h(this.f32196b[i12], i11);
        }
        return new b(this.f32195a, iArr);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(e() * 8);
        for (int iE = e(); iE >= 0; iE--) {
            int iC = c(iE);
            if (iC != 0) {
                if (iC < 0) {
                    sb.append(" - ");
                    iC = -iC;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (iE == 0 || iC != 1) {
                    int iG = this.f32195a.g(iC);
                    if (iG == 0) {
                        sb.append('1');
                    } else if (iG == 1) {
                        sb.append('a');
                    } else {
                        sb.append("a^");
                        sb.append(iG);
                    }
                }
                if (iE != 0) {
                    if (iE == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(iE);
                    }
                }
            }
        }
        return sb.toString();
    }
}
