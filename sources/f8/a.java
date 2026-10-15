package f8;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import f8.t;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: Action.java */
/* JADX INFO: loaded from: classes2.dex */
abstract class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final t f29282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final w f29283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final WeakReference<T> f29284c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final boolean f29285d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f29286e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final int f29287f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final int f29288g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Drawable f29289h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final String f29290i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final Object f29291j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    boolean f29292k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    boolean f29293l;

    /* JADX INFO: renamed from: f8.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Action.java */
    static class C0156a<M> extends WeakReference<M> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final a f29294a;

        public C0156a(a aVar, M m10, ReferenceQueue<? super M> referenceQueue) {
            super(m10, referenceQueue);
            this.f29294a = aVar;
        }
    }

    a(t tVar, T t10, w wVar, int i10, int i11, int i12, Drawable drawable, String str, Object obj, boolean z10) {
        this.f29282a = tVar;
        this.f29283b = wVar;
        this.f29284c = t10 == null ? null : new C0156a(this, t10, tVar.f29427k);
        this.f29286e = i10;
        this.f29287f = i11;
        this.f29285d = z10;
        this.f29288g = i12;
        this.f29289h = drawable;
        this.f29290i = str;
        this.f29291j = obj == null ? this : obj;
    }

    void a() {
        this.f29293l = true;
    }

    abstract void b(Bitmap bitmap, t.e eVar);

    abstract void c();

    String d() {
        return this.f29290i;
    }

    int e() {
        return this.f29286e;
    }

    int f() {
        return this.f29287f;
    }

    t g() {
        return this.f29282a;
    }

    t.f h() {
        return this.f29283b.f29483r;
    }

    w i() {
        return this.f29283b;
    }

    Object j() {
        return this.f29291j;
    }

    T k() {
        WeakReference<T> weakReference = this.f29284c;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    boolean l() {
        return this.f29293l;
    }

    boolean m() {
        return this.f29292k;
    }
}
