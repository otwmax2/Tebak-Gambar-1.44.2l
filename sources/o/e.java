package o;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: LruCache.java */
/* JADX INFO: loaded from: classes.dex */
public class e<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedHashMap<K, V> f32826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f32827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f32828c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f32829d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f32830e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f32831f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f32832g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f32833h;

    public e(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f32828c = i10;
        this.f32826a = new LinkedHashMap<>(0, 0.75f, true);
    }

    private int f(K k10, V v10) {
        int iG = g(k10, v10);
        if (iG >= 0) {
            return iG;
        }
        throw new IllegalStateException("Negative size: " + k10 + "=" + v10);
    }

    protected V a(K k10) {
        return null;
    }

    protected void b(boolean z10, K k10, V v10, V v11) {
    }

    public final V c(K k10) {
        V vPut;
        Objects.requireNonNull(k10, "key == null");
        synchronized (this) {
            V v10 = this.f32826a.get(k10);
            if (v10 != null) {
                this.f32832g++;
                return v10;
            }
            this.f32833h++;
            V vA = a(k10);
            if (vA == null) {
                return null;
            }
            synchronized (this) {
                this.f32830e++;
                vPut = this.f32826a.put(k10, vA);
                if (vPut != null) {
                    this.f32826a.put(k10, vPut);
                } else {
                    this.f32827b += f(k10, vA);
                }
            }
            if (vPut != null) {
                b(false, k10, vA, vPut);
                return vPut;
            }
            i(this.f32828c);
            return vA;
        }
    }

    public final V d(K k10, V v10) {
        V vPut;
        if (k10 == null || v10 == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.f32829d++;
            this.f32827b += f(k10, v10);
            vPut = this.f32826a.put(k10, v10);
            if (vPut != null) {
                this.f32827b -= f(k10, vPut);
            }
        }
        if (vPut != null) {
            b(false, k10, vPut, v10);
        }
        i(this.f32828c);
        return vPut;
    }

    public final V e(K k10) {
        V vRemove;
        Objects.requireNonNull(k10, "key == null");
        synchronized (this) {
            vRemove = this.f32826a.remove(k10);
            if (vRemove != null) {
                this.f32827b -= f(k10, vRemove);
            }
        }
        if (vRemove != null) {
            b(false, k10, vRemove, null);
        }
        return vRemove;
    }

    protected int g(K k10, V v10) {
        return 1;
    }

    public final synchronized Map<K, V> h() {
        return new LinkedHashMap(this.f32826a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0070, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void i(int r5) {
        /*
            r4 = this;
        L0:
            monitor-enter(r4)
            int r0 = r4.f32827b     // Catch: java.lang.Throwable -> L71
            if (r0 < 0) goto L52
            java.util.LinkedHashMap<K, V> r0 = r4.f32826a     // Catch: java.lang.Throwable -> L71
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L71
            if (r0 == 0) goto L11
            int r0 = r4.f32827b     // Catch: java.lang.Throwable -> L71
            if (r0 != 0) goto L52
        L11:
            int r0 = r4.f32827b     // Catch: java.lang.Throwable -> L71
            if (r0 <= r5) goto L50
            java.util.LinkedHashMap<K, V> r0 = r4.f32826a     // Catch: java.lang.Throwable -> L71
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L71
            if (r0 == 0) goto L1e
            goto L50
        L1e:
            java.util.LinkedHashMap<K, V> r0 = r4.f32826a     // Catch: java.lang.Throwable -> L71
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L71
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L71
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L71
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L71
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L71
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L71
            java.util.LinkedHashMap<K, V> r2 = r4.f32826a     // Catch: java.lang.Throwable -> L71
            r2.remove(r1)     // Catch: java.lang.Throwable -> L71
            int r2 = r4.f32827b     // Catch: java.lang.Throwable -> L71
            int r3 = r4.f(r1, r0)     // Catch: java.lang.Throwable -> L71
            int r2 = r2 - r3
            r4.f32827b = r2     // Catch: java.lang.Throwable -> L71
            int r2 = r4.f32831f     // Catch: java.lang.Throwable -> L71
            r3 = 1
            int r2 = r2 + r3
            r4.f32831f = r2     // Catch: java.lang.Throwable -> L71
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L71
            r2 = 0
            r4.b(r3, r1, r0, r2)
            goto L0
        L50:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L71
            return
        L52:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L71
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L71
            r0.<init>()     // Catch: java.lang.Throwable -> L71
            java.lang.Class r1 = r4.getClass()     // Catch: java.lang.Throwable -> L71
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L71
            r0.append(r1)     // Catch: java.lang.Throwable -> L71
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            r0.append(r1)     // Catch: java.lang.Throwable -> L71
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L71
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L71
            throw r5     // Catch: java.lang.Throwable -> L71
        L71:
            r5 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L71
            goto L75
        L74:
            throw r5
        L75:
            goto L74
        */
        throw new UnsupportedOperationException("Method not decompiled: o.e.i(int):void");
    }

    public final synchronized String toString() {
        int i10;
        int i11;
        i10 = this.f32832g;
        i11 = this.f32833h + i10;
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f32828c), Integer.valueOf(this.f32832g), Integer.valueOf(this.f32833h), Integer.valueOf(i11 != 0 ? (i10 * 100) / i11 : 0));
    }
}
