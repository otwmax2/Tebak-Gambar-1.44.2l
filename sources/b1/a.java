package b1;

/* JADX INFO: compiled from: SimpleSQLiteQuery.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements j {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f4537o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Object[] f4538p;

    public a(String str, Object[] objArr) {
        this.f4537o = str;
        this.f4538p = objArr;
    }

    private static void a(i iVar, int i10, Object obj) {
        if (obj == null) {
            iVar.z2(i10);
            return;
        }
        if (obj instanceof byte[]) {
            iVar.D1(i10, (byte[]) obj);
            return;
        }
        if (obj instanceof Float) {
            iVar.L0(i10, ((Float) obj).floatValue());
            return;
        }
        if (obj instanceof Double) {
            iVar.L0(i10, ((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Long) {
            iVar.s1(i10, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof Integer) {
            iVar.s1(i10, ((Integer) obj).intValue());
            return;
        }
        if (obj instanceof Short) {
            iVar.s1(i10, ((Short) obj).shortValue());
            return;
        }
        if (obj instanceof Byte) {
            iVar.s1(i10, ((Byte) obj).byteValue());
            return;
        }
        if (obj instanceof String) {
            iVar.k0(i10, (String) obj);
            return;
        }
        if (obj instanceof Boolean) {
            iVar.s1(i10, ((Boolean) obj).booleanValue() ? 1L : 0L);
            return;
        }
        throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i10 + " Supported types: null, byte[], float, double, long, int, short, byte, string");
    }

    public static void d(i iVar, Object[] objArr) {
        if (objArr == null) {
            return;
        }
        int length = objArr.length;
        int i10 = 0;
        while (i10 < length) {
            Object obj = objArr[i10];
            i10++;
            a(iVar, i10, obj);
        }
    }

    @Override // b1.j
    public String b() {
        return this.f4537o;
    }

    @Override // b1.j
    public void c(i iVar) {
        d(iVar, this.f4538p);
    }

    public a(String str) {
        this(str, null);
    }
}
