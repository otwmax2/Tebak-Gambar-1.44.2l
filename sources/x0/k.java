package x0;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: RoomSQLiteQuery.java */
/* JADX INFO: loaded from: classes.dex */
public class k implements b1.j, b1.i {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    static final TreeMap<Integer, k> f36183w = new TreeMap<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private volatile String f36184o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final long[] f36185p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final double[] f36186q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final String[] f36187r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final byte[][] f36188s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int[] f36189t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final int f36190u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f36191v;

    private k(int i10) {
        this.f36190u = i10;
        int i11 = i10 + 1;
        this.f36189t = new int[i11];
        this.f36185p = new long[i11];
        this.f36186q = new double[i11];
        this.f36187r = new String[i11];
        this.f36188s = new byte[i11][];
    }

    public static k d(String str, int i10) {
        TreeMap<Integer, k> treeMap = f36183w;
        synchronized (treeMap) {
            Map.Entry<Integer, k> entryCeilingEntry = treeMap.ceilingEntry(Integer.valueOf(i10));
            if (entryCeilingEntry == null) {
                k kVar = new k(i10);
                kVar.e(str, i10);
                return kVar;
            }
            treeMap.remove(entryCeilingEntry.getKey());
            k value = entryCeilingEntry.getValue();
            value.e(str, i10);
            return value;
        }
    }

    private static void f() {
        TreeMap<Integer, k> treeMap = f36183w;
        if (treeMap.size() <= 15) {
            return;
        }
        int size = treeMap.size() - 10;
        Iterator<Integer> it = treeMap.descendingKeySet().iterator();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            it.next();
            it.remove();
            size = i10;
        }
    }

    @Override // b1.i
    public void D1(int i10, byte[] bArr) {
        this.f36189t[i10] = 5;
        this.f36188s[i10] = bArr;
    }

    @Override // b1.i
    public void L0(int i10, double d10) {
        this.f36189t[i10] = 3;
        this.f36186q[i10] = d10;
    }

    @Override // b1.j
    public String b() {
        return this.f36184o;
    }

    @Override // b1.j
    public void c(b1.i iVar) {
        for (int i10 = 1; i10 <= this.f36191v; i10++) {
            int i11 = this.f36189t[i10];
            if (i11 == 1) {
                iVar.z2(i10);
            } else if (i11 == 2) {
                iVar.s1(i10, this.f36185p[i10]);
            } else if (i11 == 3) {
                iVar.L0(i10, this.f36186q[i10]);
            } else if (i11 == 4) {
                iVar.k0(i10, this.f36187r[i10]);
            } else if (i11 == 5) {
                iVar.D1(i10, this.f36188s[i10]);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    void e(String str, int i10) {
        this.f36184o = str;
        this.f36191v = i10;
    }

    public void g() {
        TreeMap<Integer, k> treeMap = f36183w;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.f36190u), this);
            f();
        }
    }

    @Override // b1.i
    public void k0(int i10, String str) {
        this.f36189t[i10] = 4;
        this.f36187r[i10] = str;
    }

    @Override // b1.i
    public void s1(int i10, long j10) {
        this.f36189t[i10] = 2;
        this.f36185p[i10] = j10;
    }

    @Override // b1.i
    public void z2(int i10) {
        this.f36189t[i10] = 1;
    }
}
