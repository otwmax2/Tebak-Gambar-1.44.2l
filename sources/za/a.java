package za;

import android.util.Log;
import android.view.MotionEvent;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: MultiTouchController.java */
/* JADX INFO: loaded from: classes2.dex */
public class a<T> {
    private static Method A = null;
    private static Method B = null;
    private static Method C = null;
    private static Method D = null;
    private static int E = 6;
    private static int F = 8;
    private static final float[] G;
    private static final float[] H;
    private static final float[] I;
    private static final int[] J;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final boolean f37358v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static Method f37359w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static Method f37360x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static Method f37361y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static Method f37362z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    InterfaceC0311a<T> f37363a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f37364b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f37365c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f37366d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f37367e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f37368f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f37369g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f37370h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f37371i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f37372j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private T f37373k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private c f37374l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f37375m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f37376n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f37377o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f37378p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f37379q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f37380r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f37381s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f37382t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f37383u;

    /* JADX INFO: renamed from: za.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: MultiTouchController.java */
    public interface InterfaceC0311a<T> {
        void a(T t10, b bVar);

        T b(b bVar);

        void c(T t10, c cVar);

        boolean d(T t10, c cVar, b bVar);
    }

    /* JADX INFO: compiled from: MultiTouchController.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f37384a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float[] f37385b = new float[20];

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float[] f37386c = new float[20];

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float[] f37387d = new float[20];

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int[] f37388e = new int[20];

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private float f37389f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float f37390g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f37391h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private float f37392i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private float f37393j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private float f37394k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private float f37395l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private float f37396m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private boolean f37397n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private boolean f37398o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private boolean f37399p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private boolean f37400q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private boolean f37401r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private int f37402s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private long f37403t;

        private int m(int i10) {
            int i11 = 0;
            int i12 = 32768;
            int i13 = 15;
            while (true) {
                int i14 = i13 - 1;
                int i15 = ((i11 << 1) + i12) << i13;
                if (i10 >= i15) {
                    i11 += i12;
                    i10 -= i15;
                }
                i12 >>= 1;
                if (i12 <= 0) {
                    return i11;
                }
                i13 = i14;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void n(int i10, float[] fArr, float[] fArr2, float[] fArr3, int[] iArr, int i11, boolean z10, long j10) {
            this.f37403t = j10;
            this.f37402s = i11;
            this.f37384a = i10;
            for (int i12 = 0; i12 < i10; i12++) {
                this.f37385b[i12] = fArr[i12];
                this.f37386c[i12] = fArr2[i12];
                this.f37387d[i12] = fArr3[i12];
                this.f37388e[i12] = iArr[i12];
            }
            this.f37397n = z10;
            boolean z11 = i10 >= 2;
            this.f37398o = z11;
            if (z11) {
                this.f37389f = (fArr[0] + fArr[1]) * 0.5f;
                this.f37390g = (fArr2[0] + fArr2[1]) * 0.5f;
                this.f37391h = (fArr3[0] + fArr3[1]) * 0.5f;
                this.f37392i = Math.abs(fArr[1] - fArr[0]);
                this.f37393j = Math.abs(fArr2[1] - fArr2[0]);
            } else {
                this.f37389f = fArr[0];
                this.f37390g = fArr2[0];
                this.f37391h = fArr3[0];
                this.f37393j = 0.0f;
                this.f37392i = 0.0f;
            }
            this.f37401r = false;
            this.f37400q = false;
            this.f37399p = false;
        }

        public long c() {
            return this.f37403t;
        }

        public float d() {
            if (!this.f37401r) {
                if (this.f37398o) {
                    float[] fArr = this.f37386c;
                    double d10 = fArr[1] - fArr[0];
                    float[] fArr2 = this.f37385b;
                    this.f37396m = (float) Math.atan2(d10, fArr2[1] - fArr2[0]);
                } else {
                    this.f37396m = 0.0f;
                }
                this.f37401r = true;
            }
            return this.f37396m;
        }

        public float e() {
            if (!this.f37400q) {
                if (this.f37398o) {
                    float fM = f() != 0.0f ? m((int) (r0 * 256.0f)) / 16.0f : 0.0f;
                    this.f37394k = fM;
                    float f10 = this.f37392i;
                    if (fM < f10) {
                        this.f37394k = f10;
                    }
                    float f11 = this.f37394k;
                    float f12 = this.f37393j;
                    if (f11 < f12) {
                        this.f37394k = f12;
                    }
                } else {
                    this.f37394k = 0.0f;
                }
                this.f37400q = true;
            }
            return this.f37394k;
        }

        public float f() {
            float f10;
            if (!this.f37399p) {
                if (this.f37398o) {
                    float f11 = this.f37392i;
                    float f12 = this.f37393j;
                    f10 = (f11 * f11) + (f12 * f12);
                } else {
                    f10 = 0.0f;
                }
                this.f37395l = f10;
                this.f37399p = true;
            }
            return this.f37395l;
        }

        public float g() {
            if (this.f37398o) {
                return this.f37393j;
            }
            return 0.0f;
        }

        public float h() {
            if (this.f37398o) {
                return this.f37392i;
            }
            return 0.0f;
        }

        public float i() {
            return this.f37389f;
        }

        public float j() {
            return this.f37390g;
        }

        public boolean k() {
            return this.f37397n;
        }

        public boolean l() {
            return this.f37398o;
        }
    }

    /* JADX INFO: compiled from: MultiTouchController.java */
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private float f37404a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f37405b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f37406c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f37407d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private float f37408e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private float f37409f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f37410g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f37411h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f37412i;

        public float j() {
            if (this.f37412i) {
                return this.f37409f;
            }
            return 0.0f;
        }

        public float k() {
            if (this.f37410g) {
                return this.f37406c;
            }
            return 1.0f;
        }

        public float l() {
            if (this.f37411h) {
                return this.f37407d;
            }
            return 1.0f;
        }

        public float m() {
            if (this.f37411h) {
                return this.f37408e;
            }
            return 1.0f;
        }

        public float n() {
            return this.f37404a;
        }

        public float o() {
            return this.f37405b;
        }

        protected void p(float f10, float f11, float f12, float f13, float f14, float f15) {
            this.f37404a = f10;
            this.f37405b = f11;
            if (f12 == 0.0f) {
                f12 = 1.0f;
            }
            this.f37406c = f12;
            if (f13 == 0.0f) {
                f13 = 1.0f;
            }
            this.f37407d = f13;
            if (f14 == 0.0f) {
                f14 = 1.0f;
            }
            this.f37408e = f14;
            this.f37409f = f15;
        }

        public void q(float f10, float f11, boolean z10, float f12, boolean z11, float f13, float f14, boolean z12, float f15) {
            this.f37404a = f10;
            this.f37405b = f11;
            this.f37410g = z10;
            if (f12 == 0.0f) {
                f12 = 1.0f;
            }
            this.f37406c = f12;
            this.f37411h = z11;
            if (f13 == 0.0f) {
                f13 = 1.0f;
            }
            this.f37407d = f13;
            if (f14 == 0.0f) {
                f14 = 1.0f;
            }
            this.f37408e = f14;
            this.f37412i = z12;
            this.f37409f = f15;
        }
    }

    static {
        boolean z10 = true;
        try {
            f37359w = MotionEvent.class.getMethod("getPointerCount", new Class[0]);
            Class cls = Integer.TYPE;
            f37360x = MotionEvent.class.getMethod("getPointerId", cls);
            f37361y = MotionEvent.class.getMethod("getPressure", cls);
            f37362z = MotionEvent.class.getMethod("getHistoricalX", cls, cls);
            A = MotionEvent.class.getMethod("getHistoricalY", cls, cls);
            B = MotionEvent.class.getMethod("getHistoricalPressure", cls, cls);
            C = MotionEvent.class.getMethod("getX", cls);
            D = MotionEvent.class.getMethod("getY", cls);
        } catch (Exception e10) {
            Log.e("MultiTouchController", "static initializer failed", e10);
            z10 = false;
        }
        f37358v = z10;
        if (z10) {
            try {
                E = MotionEvent.class.getField("ACTION_POINTER_UP").getInt(null);
                F = MotionEvent.class.getField("ACTION_POINTER_INDEX_SHIFT").getInt(null);
            } catch (Exception unused) {
            }
        }
        G = new float[20];
        H = new float[20];
        I = new float[20];
        J = new int[20];
    }

    public a(InterfaceC0311a<T> interfaceC0311a) {
        this(interfaceC0311a, true);
    }

    private void a() {
        T t10 = this.f37373k;
        if (t10 == null) {
            return;
        }
        this.f37363a.c(t10, this.f37374l);
        float f10 = 1.0f / ((this.f37374l.f37410g && this.f37374l.f37406c != 0.0f) ? this.f37374l.f37406c : 1.0f);
        c();
        this.f37377o = (this.f37366d - this.f37374l.f37404a) * f10;
        this.f37378p = (this.f37367e - this.f37374l.f37405b) * f10;
        this.f37379q = this.f37374l.f37406c / this.f37368f;
        this.f37381s = this.f37374l.f37407d / this.f37369g;
        this.f37382t = this.f37374l.f37408e / this.f37370h;
        this.f37380r = this.f37374l.f37409f - this.f37371i;
    }

    private void b(int i10, float[] fArr, float[] fArr2, float[] fArr3, int[] iArr, int i11, boolean z10, long j10) {
        b bVar = this.f37365c;
        this.f37365c = this.f37364b;
        this.f37364b = bVar;
        bVar.n(i10, fArr, fArr2, fArr3, iArr, i11, z10, j10);
        d();
    }

    private void c() {
        this.f37366d = this.f37364b.i();
        this.f37367e = this.f37364b.j();
        this.f37368f = Math.max(21.3f, !this.f37374l.f37410g ? 0.0f : this.f37364b.e());
        this.f37369g = Math.max(30.0f, !this.f37374l.f37411h ? 0.0f : this.f37364b.h());
        this.f37370h = Math.max(30.0f, !this.f37374l.f37411h ? 0.0f : this.f37364b.g());
        this.f37371i = this.f37374l.f37412i ? this.f37364b.d() : 0.0f;
    }

    private void d() {
        int i10 = this.f37383u;
        if (i10 == 0) {
            if (this.f37364b.k()) {
                T tB = this.f37363a.b(this.f37364b);
                this.f37373k = tB;
                if (tB != null) {
                    this.f37383u = 1;
                    this.f37363a.a(tB, this.f37364b);
                    a();
                    long jC = this.f37364b.c();
                    this.f37376n = jC;
                    this.f37375m = jC;
                    return;
                }
                return;
            }
            return;
        }
        if (i10 == 1) {
            if (!this.f37364b.k()) {
                this.f37383u = 0;
                InterfaceC0311a<T> interfaceC0311a = this.f37363a;
                this.f37373k = null;
                interfaceC0311a.a(null, this.f37364b);
                return;
            }
            if (!this.f37364b.l()) {
                if (this.f37364b.c() < this.f37376n) {
                    a();
                    return;
                } else {
                    f();
                    return;
                }
            }
            this.f37383u = 2;
            a();
            long jC2 = this.f37364b.c();
            this.f37375m = jC2;
            this.f37376n = jC2 + 20;
            return;
        }
        if (i10 != 2) {
            return;
        }
        if (!this.f37364b.l() || !this.f37364b.k()) {
            if (!this.f37364b.k()) {
                this.f37383u = 0;
                InterfaceC0311a<T> interfaceC0311a2 = this.f37363a;
                this.f37373k = null;
                interfaceC0311a2.a(null, this.f37364b);
                return;
            }
            this.f37383u = 1;
            a();
            long jC3 = this.f37364b.c();
            this.f37375m = jC3;
            this.f37376n = jC3 + 20;
            return;
        }
        if (Math.abs(this.f37364b.i() - this.f37365c.i()) > 30.0f || Math.abs(this.f37364b.j() - this.f37365c.j()) > 30.0f || Math.abs(this.f37364b.h() - this.f37365c.h()) * 0.5f > 40.0f || Math.abs(this.f37364b.g() - this.f37365c.g()) * 0.5f > 40.0f) {
            a();
            long jC4 = this.f37364b.c();
            this.f37375m = jC4;
            this.f37376n = jC4 + 20;
            return;
        }
        if (this.f37364b.f37403t < this.f37376n) {
            a();
        } else {
            f();
        }
    }

    private void f() {
        if (this.f37373k == null) {
            return;
        }
        float f10 = 1.0f;
        if (this.f37374l.f37410g && this.f37374l.f37406c != 0.0f) {
            f10 = this.f37374l.f37406c;
        }
        c();
        this.f37374l.p(this.f37366d - (this.f37377o * f10), this.f37367e - (this.f37378p * f10), this.f37379q * this.f37368f, this.f37381s * this.f37369g, this.f37382t * this.f37370h, this.f37380r + this.f37371i);
        this.f37363a.d(this.f37373k, this.f37374l, this.f37364b);
    }

    public boolean e(MotionEvent motionEvent) {
        try {
            int iIntValue = f37358v ? ((Integer) f37359w.invoke(motionEvent, new Object[0])).intValue() : 1;
            if (this.f37383u == 0 && !this.f37372j && iIntValue == 1) {
                return false;
            }
            int action = motionEvent.getAction();
            int historySize = motionEvent.getHistorySize() / iIntValue;
            int i10 = 0;
            while (i10 <= historySize) {
                boolean z10 = i10 < historySize;
                if (!f37358v || iIntValue == 1) {
                    G[0] = z10 ? motionEvent.getHistoricalX(i10) : motionEvent.getX();
                    H[0] = z10 ? motionEvent.getHistoricalY(i10) : motionEvent.getY();
                    I[0] = z10 ? motionEvent.getHistoricalPressure(i10) : motionEvent.getPressure();
                } else {
                    int iMin = Math.min(iIntValue, 20);
                    for (int i11 = 0; i11 < iMin; i11++) {
                        J[i11] = ((Integer) f37360x.invoke(motionEvent, Integer.valueOf(i11))).intValue();
                        G[i11] = ((Float) (z10 ? f37362z.invoke(motionEvent, Integer.valueOf(i11), Integer.valueOf(i10)) : C.invoke(motionEvent, Integer.valueOf(i11)))).floatValue();
                        H[i11] = ((Float) (z10 ? A.invoke(motionEvent, Integer.valueOf(i11), Integer.valueOf(i10)) : D.invoke(motionEvent, Integer.valueOf(i11)))).floatValue();
                        I[i11] = ((Float) (z10 ? B.invoke(motionEvent, Integer.valueOf(i11), Integer.valueOf(i10)) : f37361y.invoke(motionEvent, Integer.valueOf(i11)))).floatValue();
                    }
                }
                float[] fArr = G;
                float[] fArr2 = H;
                float[] fArr3 = I;
                int[] iArr = J;
                int i12 = z10 ? 2 : action;
                int i13 = i12;
                boolean z11 = z10 || !(action == 1 || (((1 << F) - 1) & action) == E || action == 3);
                int i14 = historySize;
                int i15 = i10;
                b(iIntValue, fArr, fArr2, fArr3, iArr, i13, z11, z10 ? motionEvent.getHistoricalEventTime(i10) : motionEvent.getEventTime());
                i10 = i15 + 1;
                historySize = i14;
            }
            return true;
        } catch (Exception e10) {
            Log.e("MultiTouchController", "onTouchEvent() failed", e10);
            return false;
        }
    }

    public a(InterfaceC0311a<T> interfaceC0311a, boolean z10) {
        this.f37373k = null;
        this.f37374l = new c();
        this.f37383u = 0;
        this.f37364b = new b();
        this.f37365c = new b();
        this.f37372j = z10;
        this.f37363a = interfaceC0311a;
    }
}
