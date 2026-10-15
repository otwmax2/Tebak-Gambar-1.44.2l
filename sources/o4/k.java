package o4;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;

/* JADX INFO: compiled from: ShapeAppearanceModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final o4.c f33012m = new i(0.5f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    d f33013a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    d f33014b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    d f33015c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    d f33016d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    o4.c f33017e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    o4.c f33018f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    o4.c f33019g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    o4.c f33020h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    f f33021i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    f f33022j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    f f33023k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    f f33024l;

    /* JADX INFO: compiled from: ShapeAppearanceModel.java */
    public interface c {
        o4.c a(o4.c cVar);
    }

    public static b a() {
        return new b();
    }

    public static b b(Context context, int i10, int i11) {
        return c(context, i10, i11, 0);
    }

    private static b c(Context context, int i10, int i11, int i12) {
        return d(context, i10, i11, new o4.a(i12));
    }

    private static b d(Context context, int i10, int i11, o4.c cVar) {
        if (i11 != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i10);
            i10 = i11;
            context = contextThemeWrapper;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, y3.k.f36950y3);
        try {
            int i12 = typedArrayObtainStyledAttributes.getInt(y3.k.f36957z3, 0);
            int i13 = typedArrayObtainStyledAttributes.getInt(y3.k.C3, i12);
            int i14 = typedArrayObtainStyledAttributes.getInt(y3.k.D3, i12);
            int i15 = typedArrayObtainStyledAttributes.getInt(y3.k.B3, i12);
            int i16 = typedArrayObtainStyledAttributes.getInt(y3.k.A3, i12);
            o4.c cVarM = m(typedArrayObtainStyledAttributes, y3.k.E3, cVar);
            o4.c cVarM2 = m(typedArrayObtainStyledAttributes, y3.k.H3, cVarM);
            o4.c cVarM3 = m(typedArrayObtainStyledAttributes, y3.k.I3, cVarM);
            o4.c cVarM4 = m(typedArrayObtainStyledAttributes, y3.k.G3, cVarM);
            return new b().y(i13, cVarM2).C(i14, cVarM3).u(i15, cVarM4).q(i16, m(typedArrayObtainStyledAttributes, y3.k.F3, cVarM));
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static b e(Context context, AttributeSet attributeSet, int i10, int i11) {
        return f(context, attributeSet, i10, i11, 0);
    }

    public static b f(Context context, AttributeSet attributeSet, int i10, int i11, int i12) {
        return g(context, attributeSet, i10, i11, new o4.a(i12));
    }

    public static b g(Context context, AttributeSet attributeSet, int i10, int i11, o4.c cVar) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, y3.k.M2, i10, i11);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(y3.k.N2, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(y3.k.O2, 0);
        typedArrayObtainStyledAttributes.recycle();
        return d(context, resourceId, resourceId2, cVar);
    }

    private static o4.c m(TypedArray typedArray, int i10, o4.c cVar) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i10);
        if (typedValuePeekValue == null) {
            return cVar;
        }
        int i11 = typedValuePeekValue.type;
        return i11 == 5 ? new o4.a(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics())) : i11 == 6 ? new i(typedValuePeekValue.getFraction(1.0f, 1.0f)) : cVar;
    }

    public f h() {
        return this.f33023k;
    }

    public d i() {
        return this.f33016d;
    }

    public o4.c j() {
        return this.f33020h;
    }

    public d k() {
        return this.f33015c;
    }

    public o4.c l() {
        return this.f33019g;
    }

    public f n() {
        return this.f33024l;
    }

    public f o() {
        return this.f33022j;
    }

    public f p() {
        return this.f33021i;
    }

    public d q() {
        return this.f33013a;
    }

    public o4.c r() {
        return this.f33017e;
    }

    public d s() {
        return this.f33014b;
    }

    public o4.c t() {
        return this.f33018f;
    }

    public boolean u(RectF rectF) {
        boolean z10 = this.f33024l.getClass().equals(f.class) && this.f33022j.getClass().equals(f.class) && this.f33021i.getClass().equals(f.class) && this.f33023k.getClass().equals(f.class);
        float fA = this.f33017e.a(rectF);
        return z10 && ((this.f33018f.a(rectF) > fA ? 1 : (this.f33018f.a(rectF) == fA ? 0 : -1)) == 0 && (this.f33020h.a(rectF) > fA ? 1 : (this.f33020h.a(rectF) == fA ? 0 : -1)) == 0 && (this.f33019g.a(rectF) > fA ? 1 : (this.f33019g.a(rectF) == fA ? 0 : -1)) == 0) && ((this.f33014b instanceof j) && (this.f33013a instanceof j) && (this.f33015c instanceof j) && (this.f33016d instanceof j));
    }

    public b v() {
        return new b(this);
    }

    public k w(float f10) {
        return v().o(f10).m();
    }

    public k x(o4.c cVar) {
        return v().p(cVar).m();
    }

    public k y(c cVar) {
        return v().B(cVar.a(r())).F(cVar.a(t())).t(cVar.a(j())).x(cVar.a(l())).m();
    }

    private k(b bVar) {
        this.f33013a = bVar.f33025a;
        this.f33014b = bVar.f33026b;
        this.f33015c = bVar.f33027c;
        this.f33016d = bVar.f33028d;
        this.f33017e = bVar.f33029e;
        this.f33018f = bVar.f33030f;
        this.f33019g = bVar.f33031g;
        this.f33020h = bVar.f33032h;
        this.f33021i = bVar.f33033i;
        this.f33022j = bVar.f33034j;
        this.f33023k = bVar.f33035k;
        this.f33024l = bVar.f33036l;
    }

    /* JADX INFO: compiled from: ShapeAppearanceModel.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private d f33025a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private d f33026b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private d f33027c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private d f33028d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private o4.c f33029e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private o4.c f33030f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private o4.c f33031g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private o4.c f33032h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private f f33033i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private f f33034j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private f f33035k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private f f33036l;

        public b() {
            this.f33025a = h.b();
            this.f33026b = h.b();
            this.f33027c = h.b();
            this.f33028d = h.b();
            this.f33029e = new o4.a(0.0f);
            this.f33030f = new o4.a(0.0f);
            this.f33031g = new o4.a(0.0f);
            this.f33032h = new o4.a(0.0f);
            this.f33033i = h.c();
            this.f33034j = h.c();
            this.f33035k = h.c();
            this.f33036l = h.c();
        }

        private static float n(d dVar) {
            if (dVar instanceof j) {
                return ((j) dVar).f33011a;
            }
            if (dVar instanceof e) {
                return ((e) dVar).f32972a;
            }
            return -1.0f;
        }

        public b A(float f10) {
            this.f33029e = new o4.a(f10);
            return this;
        }

        public b B(o4.c cVar) {
            this.f33029e = cVar;
            return this;
        }

        public b C(int i10, o4.c cVar) {
            return D(h.a(i10)).F(cVar);
        }

        public b D(d dVar) {
            this.f33026b = dVar;
            float fN = n(dVar);
            if (fN != -1.0f) {
                E(fN);
            }
            return this;
        }

        public b E(float f10) {
            this.f33030f = new o4.a(f10);
            return this;
        }

        public b F(o4.c cVar) {
            this.f33030f = cVar;
            return this;
        }

        public k m() {
            return new k(this);
        }

        public b o(float f10) {
            return A(f10).E(f10).w(f10).s(f10);
        }

        public b p(o4.c cVar) {
            return B(cVar).F(cVar).x(cVar).t(cVar);
        }

        public b q(int i10, o4.c cVar) {
            return r(h.a(i10)).t(cVar);
        }

        public b r(d dVar) {
            this.f33028d = dVar;
            float fN = n(dVar);
            if (fN != -1.0f) {
                s(fN);
            }
            return this;
        }

        public b s(float f10) {
            this.f33032h = new o4.a(f10);
            return this;
        }

        public b t(o4.c cVar) {
            this.f33032h = cVar;
            return this;
        }

        public b u(int i10, o4.c cVar) {
            return v(h.a(i10)).x(cVar);
        }

        public b v(d dVar) {
            this.f33027c = dVar;
            float fN = n(dVar);
            if (fN != -1.0f) {
                w(fN);
            }
            return this;
        }

        public b w(float f10) {
            this.f33031g = new o4.a(f10);
            return this;
        }

        public b x(o4.c cVar) {
            this.f33031g = cVar;
            return this;
        }

        public b y(int i10, o4.c cVar) {
            return z(h.a(i10)).B(cVar);
        }

        public b z(d dVar) {
            this.f33025a = dVar;
            float fN = n(dVar);
            if (fN != -1.0f) {
                A(fN);
            }
            return this;
        }

        public b(k kVar) {
            this.f33025a = h.b();
            this.f33026b = h.b();
            this.f33027c = h.b();
            this.f33028d = h.b();
            this.f33029e = new o4.a(0.0f);
            this.f33030f = new o4.a(0.0f);
            this.f33031g = new o4.a(0.0f);
            this.f33032h = new o4.a(0.0f);
            this.f33033i = h.c();
            this.f33034j = h.c();
            this.f33035k = h.c();
            this.f33036l = h.c();
            this.f33025a = kVar.f33013a;
            this.f33026b = kVar.f33014b;
            this.f33027c = kVar.f33015c;
            this.f33028d = kVar.f33016d;
            this.f33029e = kVar.f33017e;
            this.f33030f = kVar.f33018f;
            this.f33031g = kVar.f33019g;
            this.f33032h = kVar.f33020h;
            this.f33033i = kVar.f33021i;
            this.f33034j = kVar.f33022j;
            this.f33035k = kVar.f33023k;
            this.f33036l = kVar.f33024l;
        }
    }

    public k() {
        this.f33013a = h.b();
        this.f33014b = h.b();
        this.f33015c = h.b();
        this.f33016d = h.b();
        this.f33017e = new o4.a(0.0f);
        this.f33018f = new o4.a(0.0f);
        this.f33019g = new o4.a(0.0f);
        this.f33020h = new o4.a(0.0f);
        this.f33021i = h.c();
        this.f33022j = h.c();
        this.f33023k = h.c();
        this.f33024l = h.c();
    }
}
