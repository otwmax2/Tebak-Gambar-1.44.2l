package m7;

/* JADX INFO: compiled from: GenericGF.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f32180h = new a(4201, 4096, 1);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f32181i = new a(1033, 1024, 1);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f32182j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f32183k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f32184l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f32185m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final a f32186n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final a f32187o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f32188a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f32189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f32190c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f32191d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f32192e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f32193f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f32194g;

    static {
        a aVar = new a(67, 64, 1);
        f32182j = aVar;
        f32183k = new a(19, 16, 1);
        f32184l = new a(285, 256, 0);
        a aVar2 = new a(301, 256, 1);
        f32185m = aVar2;
        f32186n = aVar2;
        f32187o = aVar;
    }

    public a(int i10, int i11, int i12) {
        this.f32193f = i10;
        this.f32192e = i11;
        this.f32194g = i12;
        this.f32188a = new int[i11];
        this.f32189b = new int[i11];
        int i13 = 1;
        for (int i14 = 0; i14 < i11; i14++) {
            this.f32188a[i14] = i13;
            i13 <<= 1;
            if (i13 >= i11) {
                i13 = (i13 ^ i10) & (i11 - 1);
            }
        }
        for (int i15 = 0; i15 < i11 - 1; i15++) {
            this.f32189b[this.f32188a[i15]] = i15;
        }
        this.f32190c = new b(this, new int[]{0});
        this.f32191d = new b(this, new int[]{1});
    }

    static int a(int i10, int i11) {
        return i10 ^ i11;
    }

    b b(int i10, int i11) {
        if (i10 < 0) {
            throw new IllegalArgumentException();
        }
        if (i11 == 0) {
            return this.f32190c;
        }
        int[] iArr = new int[i10 + 1];
        iArr[0] = i11;
        return new b(this, iArr);
    }

    int c(int i10) {
        return this.f32188a[i10];
    }

    public int d() {
        return this.f32194g;
    }

    b e() {
        return this.f32190c;
    }

    int f(int i10) {
        if (i10 != 0) {
            return this.f32188a[(this.f32192e - this.f32189b[i10]) - 1];
        }
        throw new ArithmeticException();
    }

    int g(int i10) {
        if (i10 != 0) {
            return this.f32189b[i10];
        }
        throw new IllegalArgumentException();
    }

    int h(int i10, int i11) {
        if (i10 == 0 || i11 == 0) {
            return 0;
        }
        int[] iArr = this.f32188a;
        int[] iArr2 = this.f32189b;
        return iArr[(iArr2[i10] + iArr2[i11]) % (this.f32192e - 1)];
    }

    public String toString() {
        return "GF(0x" + Integer.toHexString(this.f32193f) + ',' + this.f32192e + ')';
    }
}
