package c2;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: LruBitmapPool.java */
/* JADX INFO: loaded from: classes.dex */
public class f implements c2.c {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Bitmap.Config f4825k = Bitmap.Config.ARGB_8888;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f4826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<Bitmap.Config> f4827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f4828c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f4829d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4830e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f4831f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f4832g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f4833h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f4834i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f4835j;

    /* JADX INFO: compiled from: LruBitmapPool.java */
    private interface b {
        void a(Bitmap bitmap);

        void b(Bitmap bitmap);
    }

    /* JADX INFO: compiled from: LruBitmapPool.java */
    private static class c implements b {
        private c() {
        }

        @Override // c2.f.b
        public void a(Bitmap bitmap) {
        }

        @Override // c2.f.b
        public void b(Bitmap bitmap) {
        }
    }

    f(int i10, g gVar, Set<Bitmap.Config> set) {
        this.f4828c = i10;
        this.f4830e = i10;
        this.f4826a = gVar;
        this.f4827b = set;
        this.f4829d = new c();
    }

    private void f() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            g();
        }
    }

    private void g() {
        Log.v("LruBitmapPool", "Hits=" + this.f4832g + ", misses=" + this.f4833h + ", puts=" + this.f4834i + ", evictions=" + this.f4835j + ", currentSize=" + this.f4831f + ", maxSize=" + this.f4830e + "\nStrategy=" + this.f4826a);
    }

    private void h() {
        k(this.f4830e);
    }

    private static Set<Bitmap.Config> i() {
        HashSet hashSet = new HashSet();
        hashSet.addAll(Arrays.asList(Bitmap.Config.values()));
        if (Build.VERSION.SDK_INT >= 19) {
            hashSet.add(null);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    private static g j() {
        return Build.VERSION.SDK_INT >= 19 ? new i() : new c2.a();
    }

    private synchronized void k(int i10) {
        while (this.f4831f > i10) {
            Bitmap bitmapC = this.f4826a.c();
            if (bitmapC == null) {
                if (Log.isLoggable("LruBitmapPool", 5)) {
                    Log.w("LruBitmapPool", "Size mismatch, resetting");
                    g();
                }
                this.f4831f = 0;
                return;
            }
            this.f4829d.a(bitmapC);
            this.f4831f -= this.f4826a.e(bitmapC);
            bitmapC.recycle();
            this.f4835j++;
            if (Log.isLoggable("LruBitmapPool", 3)) {
                Log.d("LruBitmapPool", "Evicting bitmap=" + this.f4826a.f(bitmapC));
            }
            f();
        }
    }

    @Override // c2.c
    public synchronized boolean a(Bitmap bitmap) {
        if (bitmap == null) {
            throw new NullPointerException("Bitmap must not be null");
        }
        if (bitmap.isMutable() && this.f4826a.e(bitmap) <= this.f4830e && this.f4827b.contains(bitmap.getConfig())) {
            int iE = this.f4826a.e(bitmap);
            this.f4826a.a(bitmap);
            this.f4829d.b(bitmap);
            this.f4834i++;
            this.f4831f += iE;
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Log.v("LruBitmapPool", "Put bitmap in pool=" + this.f4826a.f(bitmap));
            }
            f();
            h();
            return true;
        }
        if (Log.isLoggable("LruBitmapPool", 2)) {
            Log.v("LruBitmapPool", "Reject bitmap from pool, bitmap: " + this.f4826a.f(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.f4827b.contains(bitmap.getConfig()));
        }
        return false;
    }

    @Override // c2.c
    public synchronized Bitmap b(int i10, int i11, Bitmap.Config config) {
        Bitmap bitmapE;
        bitmapE = e(i10, i11, config);
        if (bitmapE != null) {
            bitmapE.eraseColor(0);
        }
        return bitmapE;
    }

    @Override // c2.c
    @SuppressLint({"InlinedApi"})
    public void c(int i10) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=" + i10);
        }
        if (i10 >= 60) {
            d();
        } else if (i10 >= 40) {
            k(this.f4830e / 2);
        }
    }

    @Override // c2.c
    public void d() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        k(0);
    }

    @Override // c2.c
    @TargetApi(12)
    public synchronized Bitmap e(int i10, int i11, Bitmap.Config config) {
        Bitmap bitmapB;
        bitmapB = this.f4826a.b(i10, i11, config != null ? config : f4825k);
        if (bitmapB == null) {
            if (Log.isLoggable("LruBitmapPool", 3)) {
                Log.d("LruBitmapPool", "Missing bitmap=" + this.f4826a.d(i10, i11, config));
            }
            this.f4833h++;
        } else {
            this.f4832g++;
            this.f4831f -= this.f4826a.e(bitmapB);
            this.f4829d.a(bitmapB);
            if (Build.VERSION.SDK_INT >= 12) {
                bitmapB.setHasAlpha(true);
            }
        }
        if (Log.isLoggable("LruBitmapPool", 2)) {
            Log.v("LruBitmapPool", "Get bitmap=" + this.f4826a.d(i10, i11, config));
        }
        f();
        return bitmapB;
    }

    public f(int i10) {
        this(i10, j(), i());
    }
}
