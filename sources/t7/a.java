package t7;

/* JADX INFO: compiled from: ErrorCorrectionLevel.java */
/* JADX INFO: loaded from: classes2.dex */
public enum a {
    L(1),
    M(0),
    Q(3),
    H(2);


    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final a[] f35412t;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f35414o;

    static {
        a aVar = L;
        a aVar2 = M;
        a aVar3 = Q;
        f35412t = new a[]{aVar2, aVar, H, aVar3};
    }

    a(int i10) {
        this.f35414o = i10;
    }

    public int c() {
        return this.f35414o;
    }
}
