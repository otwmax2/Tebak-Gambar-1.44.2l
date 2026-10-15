package o7;

import com.tebakgambar.model.response.ApiResponse;

/* JADX INFO: compiled from: SymbolInfo.java */
/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final k[] f33140i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static k[] f33141j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f33142a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f33143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f33144c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f33145d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f33146e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f33147f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f33148g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f33149h;

    static {
        k[] kVarArr = {new k(false, 3, 5, 8, 8, 1), new k(false, 5, 7, 10, 10, 1), new k(true, 5, 7, 16, 6, 1), new k(false, 8, 10, 12, 12, 1), new k(true, 10, 11, 14, 6, 2), new k(false, 12, 12, 14, 14, 1), new k(true, 16, 14, 24, 10, 1), new k(false, 18, 14, 16, 16, 1), new k(false, 22, 18, 18, 18, 1), new k(true, 22, 18, 16, 10, 2), new k(false, 30, 20, 20, 20, 1), new k(true, 32, 24, 16, 14, 2), new k(false, 36, 24, 22, 22, 1), new k(false, 44, 28, 24, 24, 1), new k(true, 49, 28, 22, 14, 2), new k(false, 62, 36, 14, 14, 4), new k(false, 86, 42, 16, 16, 4), new k(false, 114, 48, 18, 18, 4), new k(false, 144, 56, 20, 20, 4), new k(false, 174, 68, 22, 22, 4), new k(false, ApiResponse.STATUS_LINK_SUCCESS, 84, 24, 24, 4, 102, 42), new k(false, 280, 112, 14, 14, 16, 140, 56), new k(false, 368, 144, 16, 16, 16, 92, 36), new k(false, 456, 192, 18, 18, 16, 114, 48), new k(false, 576, 224, 20, 20, 16, 144, 56), new k(false, 696, 272, 22, 22, 16, 174, 68), new k(false, 816, 336, 24, 24, 16, 136, 56), new k(false, 1050, 408, 18, 18, 36, 175, 68), new k(false, 1304, 496, 20, 20, 36, 163, 62), new d()};
        f33140i = kVarArr;
        f33141j = kVarArr;
    }

    public k(boolean z10, int i10, int i11, int i12, int i13, int i14) {
        this(z10, i10, i11, i12, i13, i14, i10, i11);
    }

    private int e() {
        int i10 = this.f33147f;
        int i11 = 1;
        if (i10 != 1) {
            i11 = 2;
            if (i10 != 2 && i10 != 4) {
                if (i10 == 16) {
                    return 4;
                }
                if (i10 == 36) {
                    return 6;
                }
                throw new IllegalStateException("Cannot handle this number of data regions");
            }
        }
        return i11;
    }

    private int k() {
        int i10 = this.f33147f;
        if (i10 == 1 || i10 == 2) {
            return 1;
        }
        if (i10 == 4) {
            return 2;
        }
        if (i10 == 16) {
            return 4;
        }
        if (i10 == 36) {
            return 6;
        }
        throw new IllegalStateException("Cannot handle this number of data regions");
    }

    public static k l(int i10, l lVar, i7.b bVar, i7.b bVar2, boolean z10) {
        for (k kVar : f33141j) {
            if (!(lVar == l.FORCE_SQUARE && kVar.f33142a) && ((lVar != l.FORCE_RECTANGLE || kVar.f33142a) && ((bVar == null || (kVar.j() >= bVar.b() && kVar.i() >= bVar.a())) && ((bVar2 == null || (kVar.j() <= bVar2.b() && kVar.i() <= bVar2.a())) && i10 <= kVar.f33143b)))) {
                return kVar;
            }
        }
        if (z10) {
            throw new IllegalArgumentException("Can't find a symbol arrangement that matches the message. Data codewords: ".concat(String.valueOf(i10)));
        }
        return null;
    }

    public final int a() {
        return this.f33143b;
    }

    public int b(int i10) {
        return this.f33148g;
    }

    public final int c() {
        return this.f33144c;
    }

    public final int d(int i10) {
        return this.f33149h;
    }

    public int f() {
        return this.f33143b / this.f33148g;
    }

    public final int g() {
        return k() * this.f33146e;
    }

    public final int h() {
        return e() * this.f33145d;
    }

    public final int i() {
        return g() + (k() << 1);
    }

    public final int j() {
        return h() + (e() << 1);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f33142a ? "Rectangular Symbol:" : "Square Symbol:");
        sb.append(" data region ");
        sb.append(this.f33145d);
        sb.append('x');
        sb.append(this.f33146e);
        sb.append(", symbol size ");
        sb.append(j());
        sb.append('x');
        sb.append(i());
        sb.append(", symbol data size ");
        sb.append(h());
        sb.append('x');
        sb.append(g());
        sb.append(", codewords ");
        sb.append(this.f33143b);
        sb.append('+');
        sb.append(this.f33144c);
        return sb.toString();
    }

    k(boolean z10, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.f33142a = z10;
        this.f33143b = i10;
        this.f33144c = i11;
        this.f33145d = i12;
        this.f33146e = i13;
        this.f33147f = i14;
        this.f33148g = i15;
        this.f33149h = i16;
    }
}
