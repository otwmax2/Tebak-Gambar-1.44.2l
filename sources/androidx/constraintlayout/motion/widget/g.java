package androidx.constraintlayout.motion.widget;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import u.c;
import u.d;
import u.e;

/* JADX INFO: compiled from: MotionController.java */
/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f1373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private k f1374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private k f1375c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f f1376d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private f f1377e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private q.a[] f1378f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private q.a f1379g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float f1380h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    float f1381i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int[] f1382j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private double[] f1383k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private double[] f1384l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String[] f1385m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float[] f1386n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ArrayList<k> f1387o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private HashMap<String, u.e> f1388p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private HashMap<String, u.d> f1389q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private HashMap<String, u.c> f1390r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private e[] f1391s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f1392t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private View f1393u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f1394v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f1395w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Interpolator f1396x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f1397y;

    private float a(float f10, float[] fArr) {
        float f11 = 0.0f;
        if (fArr != null) {
            fArr[0] = 1.0f;
        } else {
            float f12 = this.f1381i;
            if (f12 != 1.0d) {
                float f13 = this.f1380h;
                if (f10 < f13) {
                    f10 = 0.0f;
                }
                if (f10 > f13 && f10 < 1.0d) {
                    f10 = Math.min((f10 - f13) * f12, 1.0f);
                }
            }
        }
        q.b bVar = this.f1374b.f1443o;
        float f14 = Float.NaN;
        for (k kVar : this.f1387o) {
            q.b bVar2 = kVar.f1443o;
            if (bVar2 != null) {
                float f15 = kVar.f1445q;
                if (f15 < f10) {
                    bVar = bVar2;
                    f11 = f15;
                } else if (Float.isNaN(f14)) {
                    f14 = kVar.f1445q;
                }
            }
        }
        if (bVar != null) {
            float f16 = (Float.isNaN(f14) ? 1.0f : f14) - f11;
            double d10 = (f10 - f11) / f16;
            f10 = (((float) bVar.a(d10)) * f16) + f11;
            if (fArr != null) {
                fArr[0] = (float) bVar.b(d10);
            }
        }
        return f10;
    }

    public void b(double d10, float[] fArr, float[] fArr2) {
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        this.f1378f[0].b(d10, dArr);
        this.f1378f[0].d(d10, dArr2);
        Arrays.fill(fArr2, 0.0f);
        this.f1374b.e(d10, this.f1382j, dArr, fArr, dArr2, fArr2);
    }

    boolean c(View view, float f10, long j10, q.c cVar) {
        e.a aVar;
        boolean zC;
        char c10;
        double d10;
        float fA = a(f10, null);
        int i10 = this.f1394v;
        if (i10 != d.f1370a) {
            float f11 = 1.0f / i10;
            float fFloor = ((float) Math.floor(fA / f11)) * f11;
            float f12 = (fA % f11) / f11;
            if (!Float.isNaN(this.f1395w)) {
                f12 = (f12 + this.f1395w) % 1.0f;
            }
            Interpolator interpolator = this.f1396x;
            fA = ((interpolator != null ? interpolator.getInterpolation(f12) : ((double) f12) > 0.5d ? 1.0f : 0.0f) * f11) + fFloor;
        }
        float f13 = fA;
        HashMap<String, u.d> map = this.f1389q;
        if (map != null) {
            Iterator<u.d> it = map.values().iterator();
            while (it.hasNext()) {
                it.next().b(view, f13);
            }
        }
        HashMap<String, u.e> map2 = this.f1388p;
        if (map2 != null) {
            e.a aVar2 = null;
            boolean zB = false;
            for (u.e eVar : map2.values()) {
                if (eVar instanceof e.a) {
                    aVar2 = (e.a) eVar;
                } else {
                    zB |= eVar.b(view, f13, j10, cVar);
                }
            }
            zC = zB;
            aVar = aVar2;
        } else {
            aVar = null;
            zC = false;
        }
        q.a[] aVarArr = this.f1378f;
        if (aVarArr != null) {
            double d11 = f13;
            aVarArr[0].b(d11, this.f1383k);
            this.f1378f[0].d(d11, this.f1384l);
            q.a aVar3 = this.f1379g;
            if (aVar3 != null) {
                double[] dArr = this.f1383k;
                if (dArr.length > 0) {
                    aVar3.b(d11, dArr);
                    this.f1379g.d(d11, this.f1384l);
                }
            }
            if (this.f1397y) {
                d10 = d11;
            } else {
                d10 = d11;
                this.f1374b.f(f13, view, this.f1382j, this.f1383k, this.f1384l, null, this.f1373a);
                this.f1373a = false;
            }
            if (this.f1392t != d.f1370a) {
                if (this.f1393u == null) {
                    this.f1393u = ((View) view.getParent()).findViewById(this.f1392t);
                }
                if (this.f1393u != null) {
                    float top = (r1.getTop() + this.f1393u.getBottom()) / 2.0f;
                    float left = (this.f1393u.getLeft() + this.f1393u.getRight()) / 2.0f;
                    if (view.getRight() - view.getLeft() > 0 && view.getBottom() - view.getTop() > 0) {
                        view.setPivotX(left - view.getLeft());
                        view.setPivotY(top - view.getTop());
                    }
                }
            }
            HashMap<String, u.d> map3 = this.f1389q;
            if (map3 != null) {
                for (u.d dVar : map3.values()) {
                    if (dVar instanceof d.a) {
                        double[] dArr2 = this.f1384l;
                        if (dArr2.length > 1) {
                            ((d.a) dVar).c(view, f13, dArr2[0], dArr2[1]);
                        }
                    }
                }
            }
            if (aVar != null) {
                double[] dArr3 = this.f1384l;
                c10 = 1;
                zC |= aVar.c(view, cVar, f13, j10, dArr3[0], dArr3[1]);
            } else {
                c10 = 1;
            }
            int i11 = 1;
            while (true) {
                q.a[] aVarArr2 = this.f1378f;
                if (i11 >= aVarArr2.length) {
                    break;
                }
                aVarArr2[i11].c(d10, this.f1386n);
                u.a.b(this.f1374b.C.get(this.f1385m[i11 - 1]), view, this.f1386n);
                i11++;
            }
            f fVar = this.f1376d;
            if (fVar.f1371o == 0) {
                if (f13 <= 0.0f) {
                    view.setVisibility(fVar.f1372p);
                } else if (f13 >= 1.0f) {
                    view.setVisibility(this.f1377e.f1372p);
                } else if (this.f1377e.f1372p != fVar.f1372p) {
                    view.setVisibility(0);
                }
            }
            if (this.f1391s != null) {
                int i12 = 0;
                while (true) {
                    e[] eVarArr = this.f1391s;
                    if (i12 >= eVarArr.length) {
                        break;
                    }
                    eVarArr[i12].a(f13, view);
                    i12++;
                }
            }
        } else {
            c10 = 1;
            k kVar = this.f1374b;
            float f14 = kVar.f1447s;
            k kVar2 = this.f1375c;
            float f15 = f14 + ((kVar2.f1447s - f14) * f13);
            float f16 = kVar.f1448t;
            float f17 = f16 + ((kVar2.f1448t - f16) * f13);
            float f18 = kVar.f1449u;
            float f19 = kVar2.f1449u;
            float f20 = kVar.f1450v;
            float f21 = kVar2.f1450v;
            float f22 = f15 + 0.5f;
            int i13 = (int) f22;
            float f23 = f17 + 0.5f;
            int i14 = (int) f23;
            int i15 = (int) (f22 + ((f19 - f18) * f13) + f18);
            int i16 = (int) (f23 + ((f21 - f20) * f13) + f20);
            int i17 = i15 - i13;
            int i18 = i16 - i14;
            if (f19 != f18 || f21 != f20 || this.f1373a) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i17, 1073741824), View.MeasureSpec.makeMeasureSpec(i18, 1073741824));
                this.f1373a = false;
            }
            view.layout(i13, i14, i15, i16);
        }
        HashMap<String, u.c> map4 = this.f1390r;
        if (map4 != null) {
            for (u.c cVar2 : map4.values()) {
                if (cVar2 instanceof c.a) {
                    double[] dArr4 = this.f1384l;
                    ((c.a) cVar2).c(view, f13, dArr4[0], dArr4[c10]);
                } else {
                    cVar2.b(view, f13);
                }
            }
        }
        return zC;
    }

    public String toString() {
        return " start: x: " + this.f1374b.f1447s + " y: " + this.f1374b.f1448t + " end: x: " + this.f1375c.f1447s + " y: " + this.f1375c.f1448t;
    }
}
