package c2;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: AttributeStrategy.java */
/* JADX INFO: loaded from: classes.dex */
class a implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f4812a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e<C0090a, Bitmap> f4813b = new e<>();

    /* JADX INFO: renamed from: c2.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AttributeStrategy.java */
    static class C0090a implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b f4814a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f4815b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f4816c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Bitmap.Config f4817d;

        public C0090a(b bVar) {
            this.f4814a = bVar;
        }

        @Override // c2.h
        public void a() {
            this.f4814a.c(this);
        }

        public void b(int i10, int i11, Bitmap.Config config) {
            this.f4815b = i10;
            this.f4816c = i11;
            this.f4817d = config;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C0090a)) {
                return false;
            }
            C0090a c0090a = (C0090a) obj;
            return this.f4815b == c0090a.f4815b && this.f4816c == c0090a.f4816c && this.f4817d == c0090a.f4817d;
        }

        public int hashCode() {
            int i10 = ((this.f4815b * 31) + this.f4816c) * 31;
            Bitmap.Config config = this.f4817d;
            return i10 + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return a.h(this.f4815b, this.f4816c, this.f4817d);
        }
    }

    /* JADX INFO: compiled from: AttributeStrategy.java */
    static class b extends c2.b<C0090a> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // c2.b
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public C0090a a() {
            return new C0090a(this);
        }

        public C0090a e(int i10, int i11, Bitmap.Config config) {
            C0090a c0090aB = b();
            c0090aB.b(i10, i11, config);
            return c0090aB;
        }
    }

    a() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String h(int i10, int i11, Bitmap.Config config) {
        return "[" + i10 + "x" + i11 + "], " + config;
    }

    private static String i(Bitmap bitmap) {
        return h(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    @Override // c2.g
    public void a(Bitmap bitmap) {
        this.f4813b.d(this.f4812a.e(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    @Override // c2.g
    public Bitmap b(int i10, int i11, Bitmap.Config config) {
        return this.f4813b.a(this.f4812a.e(i10, i11, config));
    }

    @Override // c2.g
    public Bitmap c() {
        return this.f4813b.f();
    }

    @Override // c2.g
    public String d(int i10, int i11, Bitmap.Config config) {
        return h(i10, i11, config);
    }

    @Override // c2.g
    public int e(Bitmap bitmap) {
        return x2.h.f(bitmap);
    }

    @Override // c2.g
    public String f(Bitmap bitmap) {
        return i(bitmap);
    }

    public String toString() {
        return "AttributeStrategy:\n  " + this.f4813b;
    }
}
