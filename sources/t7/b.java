package t7;

/* JADX INFO: compiled from: Mode.java */
/* JADX INFO: loaded from: classes2.dex */
public enum b {
    TERMINATOR(new int[]{0, 0, 0}, 0),
    NUMERIC(new int[]{10, 12, 14}, 1),
    ALPHANUMERIC(new int[]{9, 11, 13}, 2),
    STRUCTURED_APPEND(new int[]{0, 0, 0}, 3),
    BYTE(new int[]{8, 16, 16}, 4),
    ECI(new int[]{0, 0, 0}, 7),
    KANJI(new int[]{8, 10, 12}, 8),
    FNC1_FIRST_POSITION(new int[]{0, 0, 0}, 5),
    FNC1_SECOND_POSITION(new int[]{0, 0, 0}, 9),
    HANZI(new int[]{8, 10, 12}, 13);


    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int[] f35425o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f35426p;

    b(int[] iArr, int i10) {
        this.f35425o = iArr;
        this.f35426p = i10;
    }

    public int c() {
        return this.f35426p;
    }

    public int e(c cVar) {
        int iF = cVar.f();
        return this.f35425o[iF <= 9 ? (char) 0 : iF <= 26 ? (char) 1 : (char) 2];
    }
}
