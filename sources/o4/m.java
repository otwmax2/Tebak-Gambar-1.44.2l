package o4;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: ShapePath.java */
/* JADX INFO: loaded from: classes2.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Deprecated
    public float f33055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Deprecated
    public float f33056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Deprecated
    public float f33057c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Deprecated
    public float f33058d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Deprecated
    public float f33059e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Deprecated
    public float f33060f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<f> f33061g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List<g> f33062h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f33063i;

    /* JADX INFO: compiled from: ShapePath.java */
    class a extends g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f33064b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Matrix f33065c;

        a(List list, Matrix matrix) {
            this.f33064b = list;
            this.f33065c = matrix;
        }

        @Override // o4.m.g
        public void a(Matrix matrix, n4.a aVar, int i10, Canvas canvas) {
            Iterator it = this.f33064b.iterator();
            while (it.hasNext()) {
                ((g) it.next()).a(this.f33065c, aVar, i10, canvas);
            }
        }
    }

    /* JADX INFO: compiled from: ShapePath.java */
    static class b extends g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d f33067b;

        public b(d dVar) {
            this.f33067b = dVar;
        }

        @Override // o4.m.g
        public void a(Matrix matrix, n4.a aVar, int i10, Canvas canvas) {
            aVar.a(canvas, matrix, new RectF(this.f33067b.k(), this.f33067b.o(), this.f33067b.l(), this.f33067b.j()), i10, this.f33067b.m(), this.f33067b.n());
        }
    }

    /* JADX INFO: compiled from: ShapePath.java */
    static class c extends g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e f33068b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f33069c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f33070d;

        public c(e eVar, float f10, float f11) {
            this.f33068b = eVar;
            this.f33069c = f10;
            this.f33070d = f11;
        }

        @Override // o4.m.g
        public void a(Matrix matrix, n4.a aVar, int i10, Canvas canvas) {
            RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(this.f33068b.f33079c - this.f33070d, this.f33068b.f33078b - this.f33069c), 0.0f);
            Matrix matrix2 = new Matrix(matrix);
            matrix2.preTranslate(this.f33069c, this.f33070d);
            matrix2.preRotate(c());
            aVar.b(canvas, matrix2, rectF, i10);
        }

        float c() {
            return (float) Math.toDegrees(Math.atan((this.f33068b.f33079c - this.f33070d) / (this.f33068b.f33078b - this.f33069c)));
        }
    }

    /* JADX INFO: compiled from: ShapePath.java */
    public static class d extends f {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final RectF f33071h = new RectF();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Deprecated
        public float f33072b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Deprecated
        public float f33073c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Deprecated
        public float f33074d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @Deprecated
        public float f33075e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @Deprecated
        public float f33076f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @Deprecated
        public float f33077g;

        public d(float f10, float f11, float f12, float f13) {
            q(f10);
            u(f11);
            r(f12);
            p(f13);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float j() {
            return this.f33075e;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float k() {
            return this.f33072b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float l() {
            return this.f33074d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float m() {
            return this.f33076f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float n() {
            return this.f33077g;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float o() {
            return this.f33073c;
        }

        private void p(float f10) {
            this.f33075e = f10;
        }

        private void q(float f10) {
            this.f33072b = f10;
        }

        private void r(float f10) {
            this.f33074d = f10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void s(float f10) {
            this.f33076f = f10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t(float f10) {
            this.f33077g = f10;
        }

        private void u(float f10) {
            this.f33073c = f10;
        }

        @Override // o4.m.f
        public void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f33080a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            RectF rectF = f33071h;
            rectF.set(k(), o(), l(), j());
            path.arcTo(rectF, m(), n(), false);
            path.transform(matrix);
        }
    }

    /* JADX INFO: compiled from: ShapePath.java */
    public static class e extends f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f33078b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f33079c;

        @Override // o4.m.f
        public void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f33080a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f33078b, this.f33079c);
            path.transform(matrix);
        }
    }

    /* JADX INFO: compiled from: ShapePath.java */
    public static abstract class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final Matrix f33080a = new Matrix();

        public abstract void a(Matrix matrix, Path path);
    }

    /* JADX INFO: compiled from: ShapePath.java */
    static abstract class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final Matrix f33081a = new Matrix();

        g() {
        }

        public abstract void a(Matrix matrix, n4.a aVar, int i10, Canvas canvas);

        public final void b(n4.a aVar, int i10, Canvas canvas) {
            a(f33081a, aVar, i10, canvas);
        }
    }

    public m() {
        n(0.0f, 0.0f);
    }

    private void b(float f10) {
        if (g() == f10) {
            return;
        }
        float fG = ((f10 - g()) + 360.0f) % 360.0f;
        if (fG > 180.0f) {
            return;
        }
        d dVar = new d(i(), j(), i(), j());
        dVar.s(g());
        dVar.t(fG);
        this.f33062h.add(new b(dVar));
        p(f10);
    }

    private void c(g gVar, float f10, float f11) {
        b(f10);
        this.f33062h.add(gVar);
        p(f11);
    }

    private float g() {
        return this.f33059e;
    }

    private float h() {
        return this.f33060f;
    }

    private void p(float f10) {
        this.f33059e = f10;
    }

    private void q(float f10) {
        this.f33060f = f10;
    }

    private void r(float f10) {
        this.f33057c = f10;
    }

    private void s(float f10) {
        this.f33058d = f10;
    }

    private void t(float f10) {
        this.f33055a = f10;
    }

    private void u(float f10) {
        this.f33056b = f10;
    }

    public void a(float f10, float f11, float f12, float f13, float f14, float f15) {
        d dVar = new d(f10, f11, f12, f13);
        dVar.s(f14);
        dVar.t(f15);
        this.f33061g.add(dVar);
        b bVar = new b(dVar);
        float f16 = f14 + f15;
        boolean z10 = f15 < 0.0f;
        if (z10) {
            f14 = (f14 + 180.0f) % 360.0f;
        }
        c(bVar, f14, z10 ? (180.0f + f16) % 360.0f : f16);
        double d10 = f16;
        r(((f10 + f12) * 0.5f) + (((f12 - f10) / 2.0f) * ((float) Math.cos(Math.toRadians(d10)))));
        s(((f11 + f13) * 0.5f) + (((f13 - f11) / 2.0f) * ((float) Math.sin(Math.toRadians(d10)))));
    }

    public void d(Matrix matrix, Path path) {
        int size = this.f33061g.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f33061g.get(i10).a(matrix, path);
        }
    }

    boolean e() {
        return this.f33063i;
    }

    g f(Matrix matrix) {
        b(h());
        return new a(new ArrayList(this.f33062h), new Matrix(matrix));
    }

    float i() {
        return this.f33057c;
    }

    float j() {
        return this.f33058d;
    }

    float k() {
        return this.f33055a;
    }

    float l() {
        return this.f33056b;
    }

    public void m(float f10, float f11) {
        e eVar = new e();
        eVar.f33078b = f10;
        eVar.f33079c = f11;
        this.f33061g.add(eVar);
        c cVar = new c(eVar, i(), j());
        c(cVar, cVar.c() + 270.0f, cVar.c() + 270.0f);
        r(f10);
        s(f11);
    }

    public void n(float f10, float f11) {
        o(f10, f11, 270.0f, 0.0f);
    }

    public void o(float f10, float f11, float f12, float f13) {
        t(f10);
        u(f11);
        r(f10);
        s(f11);
        p(f12);
        q((f12 + f13) % 360.0f);
        this.f33061g.clear();
        this.f33062h.clear();
        this.f33063i = false;
    }
}
