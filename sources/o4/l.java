package o4;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;

/* JADX INFO: compiled from: ShapeAppearancePathProvider.java */
/* JADX INFO: loaded from: classes2.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m[] f33037a = new m[4];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Matrix[] f33038b = new Matrix[4];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Matrix[] f33039c = new Matrix[4];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PointF f33040d = new PointF();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Path f33041e = new Path();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Path f33042f = new Path();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final m f33043g = new m();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float[] f33044h = new float[2];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final float[] f33045i = new float[2];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Path f33046j = new Path();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Path f33047k = new Path();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f33048l = true;

    /* JADX INFO: compiled from: ShapeAppearancePathProvider.java */
    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final l f33049a = new l();
    }

    /* JADX INFO: compiled from: ShapeAppearancePathProvider.java */
    public interface b {
        void a(m mVar, Matrix matrix, int i10);

        void b(m mVar, Matrix matrix, int i10);
    }

    /* JADX INFO: compiled from: ShapeAppearancePathProvider.java */
    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final k f33050a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Path f33051b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final RectF f33052c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final b f33053d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f33054e;

        c(k kVar, float f10, RectF rectF, b bVar, Path path) {
            this.f33053d = bVar;
            this.f33050a = kVar;
            this.f33054e = f10;
            this.f33052c = rectF;
            this.f33051b = path;
        }
    }

    public l() {
        for (int i10 = 0; i10 < 4; i10++) {
            this.f33037a[i10] = new m();
            this.f33038b[i10] = new Matrix();
            this.f33039c[i10] = new Matrix();
        }
    }

    private float a(int i10) {
        return (i10 + 1) * 90;
    }

    private void b(c cVar, int i10) {
        this.f33044h[0] = this.f33037a[i10].k();
        this.f33044h[1] = this.f33037a[i10].l();
        this.f33038b[i10].mapPoints(this.f33044h);
        if (i10 == 0) {
            Path path = cVar.f33051b;
            float[] fArr = this.f33044h;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            Path path2 = cVar.f33051b;
            float[] fArr2 = this.f33044h;
            path2.lineTo(fArr2[0], fArr2[1]);
        }
        this.f33037a[i10].d(this.f33038b[i10], cVar.f33051b);
        b bVar = cVar.f33053d;
        if (bVar != null) {
            bVar.b(this.f33037a[i10], this.f33038b[i10], i10);
        }
    }

    private void c(c cVar, int i10) {
        int i11 = (i10 + 1) % 4;
        this.f33044h[0] = this.f33037a[i10].i();
        this.f33044h[1] = this.f33037a[i10].j();
        this.f33038b[i10].mapPoints(this.f33044h);
        this.f33045i[0] = this.f33037a[i11].k();
        this.f33045i[1] = this.f33037a[i11].l();
        this.f33038b[i11].mapPoints(this.f33045i);
        float f10 = this.f33044h[0];
        float[] fArr = this.f33045i;
        float fMax = Math.max(((float) Math.hypot(f10 - fArr[0], r1[1] - fArr[1])) - 0.001f, 0.0f);
        float fI = i(cVar.f33052c, i10);
        this.f33043g.n(0.0f, 0.0f);
        f fVarJ = j(i10, cVar.f33050a);
        fVarJ.b(fMax, fI, cVar.f33054e, this.f33043g);
        this.f33046j.reset();
        this.f33043g.d(this.f33039c[i10], this.f33046j);
        if (this.f33048l && Build.VERSION.SDK_INT >= 19 && (fVarJ.a() || l(this.f33046j, i10) || l(this.f33046j, i11))) {
            Path path = this.f33046j;
            path.op(path, this.f33042f, Path.Op.DIFFERENCE);
            this.f33044h[0] = this.f33043g.k();
            this.f33044h[1] = this.f33043g.l();
            this.f33039c[i10].mapPoints(this.f33044h);
            Path path2 = this.f33041e;
            float[] fArr2 = this.f33044h;
            path2.moveTo(fArr2[0], fArr2[1]);
            this.f33043g.d(this.f33039c[i10], this.f33041e);
        } else {
            this.f33043g.d(this.f33039c[i10], cVar.f33051b);
        }
        b bVar = cVar.f33053d;
        if (bVar != null) {
            bVar.a(this.f33043g, this.f33039c[i10], i10);
        }
    }

    private void f(int i10, RectF rectF, PointF pointF) {
        if (i10 == 1) {
            pointF.set(rectF.right, rectF.bottom);
            return;
        }
        if (i10 == 2) {
            pointF.set(rectF.left, rectF.bottom);
        } else if (i10 != 3) {
            pointF.set(rectF.right, rectF.top);
        } else {
            pointF.set(rectF.left, rectF.top);
        }
    }

    private o4.c g(int i10, k kVar) {
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? kVar.t() : kVar.r() : kVar.j() : kVar.l();
    }

    private d h(int i10, k kVar) {
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? kVar.s() : kVar.q() : kVar.i() : kVar.k();
    }

    private float i(RectF rectF, int i10) {
        float[] fArr = this.f33044h;
        m[] mVarArr = this.f33037a;
        fArr[0] = mVarArr[i10].f33057c;
        fArr[1] = mVarArr[i10].f33058d;
        this.f33038b[i10].mapPoints(fArr);
        return (i10 == 1 || i10 == 3) ? Math.abs(rectF.centerX() - this.f33044h[0]) : Math.abs(rectF.centerY() - this.f33044h[1]);
    }

    private f j(int i10, k kVar) {
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? kVar.o() : kVar.p() : kVar.n() : kVar.h();
    }

    public static l k() {
        return a.f33049a;
    }

    private boolean l(Path path, int i10) {
        this.f33047k.reset();
        this.f33037a[i10].d(this.f33038b[i10], this.f33047k);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.f33047k.computeBounds(rectF, true);
        path.op(this.f33047k, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }

    private void m(c cVar, int i10) {
        h(i10, cVar.f33050a).b(this.f33037a[i10], 90.0f, cVar.f33054e, cVar.f33052c, g(i10, cVar.f33050a));
        float fA = a(i10);
        this.f33038b[i10].reset();
        f(i10, cVar.f33052c, this.f33040d);
        Matrix matrix = this.f33038b[i10];
        PointF pointF = this.f33040d;
        matrix.setTranslate(pointF.x, pointF.y);
        this.f33038b[i10].preRotate(fA);
    }

    private void n(int i10) {
        this.f33044h[0] = this.f33037a[i10].i();
        this.f33044h[1] = this.f33037a[i10].j();
        this.f33038b[i10].mapPoints(this.f33044h);
        float fA = a(i10);
        this.f33039c[i10].reset();
        Matrix matrix = this.f33039c[i10];
        float[] fArr = this.f33044h;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.f33039c[i10].preRotate(fA);
    }

    public void d(k kVar, float f10, RectF rectF, Path path) {
        e(kVar, f10, rectF, null, path);
    }

    public void e(k kVar, float f10, RectF rectF, b bVar, Path path) {
        path.rewind();
        this.f33041e.rewind();
        this.f33042f.rewind();
        this.f33042f.addRect(rectF, Path.Direction.CW);
        c cVar = new c(kVar, f10, rectF, bVar, path);
        for (int i10 = 0; i10 < 4; i10++) {
            m(cVar, i10);
            n(i10);
        }
        for (int i11 = 0; i11 < 4; i11++) {
            b(cVar, i11);
            c(cVar, i11);
        }
        path.close();
        this.f33041e.close();
        if (Build.VERSION.SDK_INT < 19 || this.f33041e.isEmpty()) {
            return;
        }
        path.op(this.f33041e, Path.Op.UNION);
    }
}
