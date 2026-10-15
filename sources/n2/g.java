package n2;

import g2.l;

/* JADX INFO: compiled from: GifFrameModelLoader.java */
/* JADX INFO: loaded from: classes.dex */
class g implements l<x1.a, x1.a> {

    /* JADX INFO: compiled from: GifFrameModelLoader.java */
    private static class a implements a2.c<x1.a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final x1.a f32415a;

        public a(x1.a aVar) {
            this.f32415a = aVar;
        }

        @Override // a2.c
        public String a() {
            return String.valueOf(this.f32415a.d());
        }

        @Override // a2.c
        public void c() {
        }

        @Override // a2.c
        public void cancel() {
        }

        @Override // a2.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public x1.a b(v1.i iVar) {
            return this.f32415a;
        }
    }

    g() {
    }

    @Override // g2.l
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public a2.c<x1.a> a(x1.a aVar, int i10, int i11) {
        return new a(aVar);
    }
}
