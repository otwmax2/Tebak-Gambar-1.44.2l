package f8;

import android.content.Context;
import android.graphics.Bitmap;
import java.util.LinkedHashMap;
import java.util.Objects;

/* JADX INFO: compiled from: LruCache.java */
/* JADX INFO: loaded from: classes2.dex */
public class m implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final LinkedHashMap<String, Bitmap> f29383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f29384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f29385c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f29386d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f29387e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f29388f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f29389g;

    public m(Context context) {
        this(e0.b(context));
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0070, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void d(int r4) {
        /*
            r3 = this;
        L0:
            monitor-enter(r3)
            int r0 = r3.f29385c     // Catch: java.lang.Throwable -> L71
            if (r0 < 0) goto L52
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r3.f29383a     // Catch: java.lang.Throwable -> L71
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L71
            if (r0 == 0) goto L11
            int r0 = r3.f29385c     // Catch: java.lang.Throwable -> L71
            if (r0 != 0) goto L52
        L11:
            int r0 = r3.f29385c     // Catch: java.lang.Throwable -> L71
            if (r0 <= r4) goto L50
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r3.f29383a     // Catch: java.lang.Throwable -> L71
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L71
            if (r0 == 0) goto L1e
            goto L50
        L1e:
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r3.f29383a     // Catch: java.lang.Throwable -> L71
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L71
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L71
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L71
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L71
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L71
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L71
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L71
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0     // Catch: java.lang.Throwable -> L71
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r2 = r3.f29383a     // Catch: java.lang.Throwable -> L71
            r2.remove(r1)     // Catch: java.lang.Throwable -> L71
            int r1 = r3.f29385c     // Catch: java.lang.Throwable -> L71
            int r0 = f8.e0.k(r0)     // Catch: java.lang.Throwable -> L71
            int r1 = r1 - r0
            r3.f29385c = r1     // Catch: java.lang.Throwable -> L71
            int r0 = r3.f29387e     // Catch: java.lang.Throwable -> L71
            int r0 = r0 + 1
            r3.f29387e = r0     // Catch: java.lang.Throwable -> L71
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L71
            goto L0
        L50:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L71
            return
        L52:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L71
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L71
            r0.<init>()     // Catch: java.lang.Throwable -> L71
            java.lang.Class r1 = r3.getClass()     // Catch: java.lang.Throwable -> L71
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L71
            r0.append(r1)     // Catch: java.lang.Throwable -> L71
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            r0.append(r1)     // Catch: java.lang.Throwable -> L71
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L71
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L71
            throw r4     // Catch: java.lang.Throwable -> L71
        L71:
            r4 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L71
            goto L75
        L74:
            throw r4
        L75:
            goto L74
        */
        throw new UnsupportedOperationException("Method not decompiled: f8.m.d(int):void");
    }

    @Override // f8.d
    public Bitmap a(String str) {
        Objects.requireNonNull(str, "key == null");
        synchronized (this) {
            Bitmap bitmap = this.f29383a.get(str);
            if (bitmap != null) {
                this.f29388f++;
                return bitmap;
            }
            this.f29389g++;
            return null;
        }
    }

    @Override // f8.d
    public final synchronized int b() {
        return this.f29384b;
    }

    @Override // f8.d
    public void c(String str, Bitmap bitmap) {
        if (str == null || bitmap == null) {
            throw new NullPointerException("key == null || bitmap == null");
        }
        synchronized (this) {
            this.f29386d++;
            this.f29385c += e0.k(bitmap);
            Bitmap bitmapPut = this.f29383a.put(str, bitmap);
            if (bitmapPut != null) {
                this.f29385c -= e0.k(bitmapPut);
            }
        }
        d(this.f29384b);
    }

    @Override // f8.d
    public final synchronized int size() {
        return this.f29385c;
    }

    public m(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("Max size must be positive.");
        }
        this.f29384b = i10;
        this.f29383a = new LinkedHashMap<>(0, 0.75f, true);
    }
}
