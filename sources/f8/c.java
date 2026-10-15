package f8;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.NetworkInfo;
import com.facebook.internal.NativeProtocol;
import f8.j;
import f8.r;
import f8.t;
import f8.y;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: BitmapHunter.java */
/* JADX INFO: loaded from: classes2.dex */
class c implements Runnable {
    private static final Object H = new Object();
    private static final ThreadLocal<StringBuilder> I = new a();
    private static final AtomicInteger J = new AtomicInteger();
    private static final y K = new b();
    Bitmap A;
    Future<?> B;
    t.e C;
    Exception D;
    int E;
    int F;
    t.f G;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final int f29328o = J.incrementAndGet();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final t f29329p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final i f29330q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final f8.d f29331r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final a0 f29332s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final String f29333t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final w f29334u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final int f29335v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    int f29336w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    final y f29337x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    f8.a f29338y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    List<f8.a> f29339z;

    /* JADX INFO: compiled from: BitmapHunter.java */
    static class a extends ThreadLocal<StringBuilder> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public StringBuilder initialValue() {
            return new StringBuilder("Picasso-");
        }
    }

    /* JADX INFO: compiled from: BitmapHunter.java */
    static class b extends y {
        b() {
        }

        @Override // f8.y
        public boolean c(w wVar) {
            return true;
        }

        @Override // f8.y
        public y.a f(w wVar, int i10) throws IOException {
            throw new IllegalStateException("Unrecognized type of request: " + wVar);
        }
    }

    /* JADX INFO: renamed from: f8.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BitmapHunter.java */
    static class RunnableC0158c implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ c0 f29340o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ RuntimeException f29341p;

        RunnableC0158c(c0 c0Var, RuntimeException runtimeException) {
            this.f29340o = c0Var;
            this.f29341p = runtimeException;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new RuntimeException("Transformation " + this.f29340o.b() + " crashed with exception.", this.f29341p);
        }
    }

    /* JADX INFO: compiled from: BitmapHunter.java */
    static class d implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ StringBuilder f29342o;

        d(StringBuilder sb) {
            this.f29342o = sb;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new NullPointerException(this.f29342o.toString());
        }
    }

    /* JADX INFO: compiled from: BitmapHunter.java */
    static class e implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ c0 f29343o;

        e(c0 c0Var) {
            this.f29343o = c0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new IllegalStateException("Transformation " + this.f29343o.b() + " returned input Bitmap but recycled it.");
        }
    }

    /* JADX INFO: compiled from: BitmapHunter.java */
    static class f implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ c0 f29344o;

        f(c0 c0Var) {
            this.f29344o = c0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new IllegalStateException("Transformation " + this.f29344o.b() + " mutated input Bitmap but failed to recycle the original.");
        }
    }

    c(t tVar, i iVar, f8.d dVar, a0 a0Var, f8.a aVar, y yVar) {
        this.f29329p = tVar;
        this.f29330q = iVar;
        this.f29331r = dVar;
        this.f29332s = a0Var;
        this.f29338y = aVar;
        this.f29333t = aVar.d();
        this.f29334u = aVar.i();
        this.G = aVar.h();
        this.f29335v = aVar.e();
        this.f29336w = aVar.f();
        this.f29337x = yVar;
        this.F = yVar.e();
    }

    static Bitmap a(List<c0> list, Bitmap bitmap) {
        int size = list.size();
        int i10 = 0;
        while (i10 < size) {
            c0 c0Var = list.get(i10);
            try {
                Bitmap bitmapA = c0Var.a(bitmap);
                if (bitmapA == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Transformation ");
                    sb.append(c0Var.b());
                    sb.append(" returned null after ");
                    sb.append(i10);
                    sb.append(" previous transformation(s).\n\nTransformation list:\n");
                    Iterator<c0> it = list.iterator();
                    while (it.hasNext()) {
                        sb.append(it.next().b());
                        sb.append('\n');
                    }
                    t.f29415p.post(new d(sb));
                    return null;
                }
                if (bitmapA == bitmap && bitmap.isRecycled()) {
                    t.f29415p.post(new e(c0Var));
                    return null;
                }
                if (bitmapA != bitmap && !bitmap.isRecycled()) {
                    t.f29415p.post(new f(c0Var));
                    return null;
                }
                i10++;
                bitmap = bitmapA;
            } catch (RuntimeException e10) {
                t.f29415p.post(new RunnableC0158c(c0Var, e10));
                return null;
            }
        }
        return bitmap;
    }

    private t.f d() {
        t.f fVarH = t.f.LOW;
        List<f8.a> list = this.f29339z;
        boolean z10 = true;
        boolean z11 = (list == null || list.isEmpty()) ? false : true;
        f8.a aVar = this.f29338y;
        if (aVar == null && !z11) {
            z10 = false;
        }
        if (!z10) {
            return fVarH;
        }
        if (aVar != null) {
            fVarH = aVar.h();
        }
        if (z11) {
            int size = this.f29339z.size();
            for (int i10 = 0; i10 < size; i10++) {
                t.f fVarH2 = this.f29339z.get(i10).h();
                if (fVarH2.ordinal() > fVarH.ordinal()) {
                    fVarH = fVarH2;
                }
            }
        }
        return fVarH;
    }

    static Bitmap e(InputStream inputStream, w wVar) throws IOException {
        n nVar = new n(inputStream);
        long jC = nVar.c(NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
        BitmapFactory.Options optionsD = y.d(wVar);
        boolean zG = y.g(optionsD);
        boolean zT = e0.t(nVar);
        nVar.b(jC);
        if (zT) {
            byte[] bArrX = e0.x(nVar);
            if (zG) {
                BitmapFactory.decodeByteArray(bArrX, 0, bArrX.length, optionsD);
                y.b(wVar.f29473h, wVar.f29474i, optionsD, wVar);
            }
            return BitmapFactory.decodeByteArray(bArrX, 0, bArrX.length, optionsD);
        }
        if (zG) {
            BitmapFactory.decodeStream(nVar, null, optionsD);
            y.b(wVar.f29473h, wVar.f29474i, optionsD, wVar);
            nVar.b(jC);
        }
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(nVar, null, optionsD);
        if (bitmapDecodeStream != null) {
            return bitmapDecodeStream;
        }
        throw new IOException("Failed to decode stream.");
    }

    static c g(t tVar, i iVar, f8.d dVar, a0 a0Var, f8.a aVar) {
        w wVarI = aVar.i();
        List<y> listH = tVar.h();
        int size = listH.size();
        for (int i10 = 0; i10 < size; i10++) {
            y yVar = listH.get(i10);
            if (yVar.c(wVarI)) {
                return new c(tVar, iVar, dVar, a0Var, aVar, yVar);
            }
        }
        return new c(tVar, iVar, dVar, a0Var, aVar, K);
    }

    private static boolean t(boolean z10, int i10, int i11, int i12, int i13) {
        return !z10 || i10 > i12 || i11 > i13;
    }

    static Bitmap w(w wVar, Bitmap bitmap, int i10) {
        int i11;
        int i12;
        int i13;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        int iCeil;
        int i14;
        int i15;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        boolean z10 = wVar.f29477l;
        Matrix matrix = new Matrix();
        int i16 = 0;
        if (wVar.e()) {
            int i17 = wVar.f29473h;
            int i18 = wVar.f29474i;
            float f15 = wVar.f29478m;
            if (f15 != 0.0f) {
                if (wVar.f29481p) {
                    matrix.setRotate(f15, wVar.f29479n, wVar.f29480o);
                } else {
                    matrix.setRotate(f15);
                }
            }
            if (wVar.f29475j) {
                float f16 = i17;
                float f17 = f16 / width;
                float f18 = i18;
                float f19 = f18 / height;
                if (f17 > f19) {
                    iCeil = (int) Math.ceil(r10 * (f19 / f17));
                    i15 = (height - iCeil) / 2;
                    f19 = f18 / iCeil;
                    f14 = f17;
                    i14 = width;
                } else {
                    int iCeil2 = (int) Math.ceil(r6 * (f17 / f19));
                    f14 = f16 / iCeil2;
                    iCeil = height;
                    i16 = (width - iCeil2) / 2;
                    i14 = iCeil2;
                    i15 = 0;
                }
                if (t(z10, width, height, i17, i18)) {
                    matrix.preScale(f14, f19);
                }
                i13 = i15;
                i11 = i14;
                i12 = iCeil;
            } else {
                if (wVar.f29476k) {
                    float f20 = i17 / width;
                    float f21 = i18 / height;
                    if (f20 >= f21) {
                        f20 = f21;
                    }
                    if (t(z10, width, height, i17, i18)) {
                        matrix.preScale(f20, f20);
                    }
                } else if ((i17 != 0 || i18 != 0) && (i17 != width || i18 != height)) {
                    if (i17 != 0) {
                        f10 = i17;
                        f11 = width;
                    } else {
                        f10 = i18;
                        f11 = height;
                    }
                    float f22 = f10 / f11;
                    if (i18 != 0) {
                        f12 = i18;
                        f13 = height;
                    } else {
                        f12 = i17;
                        f13 = width;
                    }
                    float f23 = f12 / f13;
                    if (t(z10, width, height, i17, i18)) {
                        matrix.preScale(f22, f23);
                    }
                }
                i11 = width;
                i12 = height;
                i13 = 0;
            }
        } else {
            i11 = width;
            i12 = height;
            i13 = 0;
        }
        if (i10 != 0) {
            matrix.preRotate(i10);
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, i16, i13, i11, i12, matrix, true);
        if (bitmapCreateBitmap == bitmap) {
            return bitmap;
        }
        bitmap.recycle();
        return bitmapCreateBitmap;
    }

    static void x(w wVar) {
        String strA = wVar.a();
        StringBuilder sb = I.get();
        sb.ensureCapacity(strA.length() + 8);
        sb.replace(8, sb.length(), strA);
        Thread.currentThread().setName(sb.toString());
    }

    void b(f8.a aVar) {
        boolean z10 = this.f29329p.f29430n;
        w wVar = aVar.f29283b;
        if (this.f29338y == null) {
            this.f29338y = aVar;
            if (z10) {
                List<f8.a> list = this.f29339z;
                if (list == null || list.isEmpty()) {
                    e0.v("Hunter", "joined", wVar.d(), "to empty hunter");
                    return;
                } else {
                    e0.v("Hunter", "joined", wVar.d(), e0.m(this, "to "));
                    return;
                }
            }
            return;
        }
        if (this.f29339z == null) {
            this.f29339z = new ArrayList(3);
        }
        this.f29339z.add(aVar);
        if (z10) {
            e0.v("Hunter", "joined", wVar.d(), e0.m(this, "to "));
        }
        t.f fVarH = aVar.h();
        if (fVarH.ordinal() > this.G.ordinal()) {
            this.G = fVarH;
        }
    }

    boolean c() {
        Future<?> future;
        if (this.f29338y != null) {
            return false;
        }
        List<f8.a> list = this.f29339z;
        return (list == null || list.isEmpty()) && (future = this.B) != null && future.cancel(false);
    }

    void f(f8.a aVar) {
        boolean zRemove;
        if (this.f29338y == aVar) {
            this.f29338y = null;
            zRemove = true;
        } else {
            List<f8.a> list = this.f29339z;
            zRemove = list != null ? list.remove(aVar) : false;
        }
        if (zRemove && aVar.h() == this.G) {
            this.G = d();
        }
        if (this.f29329p.f29430n) {
            e0.v("Hunter", "removed", aVar.f29283b.d(), e0.m(this, "from "));
        }
    }

    f8.a h() {
        return this.f29338y;
    }

    List<f8.a> i() {
        return this.f29339z;
    }

    w j() {
        return this.f29334u;
    }

    Exception k() {
        return this.D;
    }

    String l() {
        return this.f29333t;
    }

    t.e m() {
        return this.C;
    }

    int n() {
        return this.f29335v;
    }

    t o() {
        return this.f29329p;
    }

    t.f p() {
        return this.G;
    }

    Bitmap q() {
        return this.A;
    }

    Bitmap r() throws IOException {
        Bitmap bitmapW;
        if (p.c(this.f29335v)) {
            bitmapW = this.f29331r.a(this.f29333t);
            if (bitmapW != null) {
                this.f29332s.d();
                this.C = t.e.MEMORY;
                if (this.f29329p.f29430n) {
                    e0.v("Hunter", "decoded", this.f29334u.d(), "from cache");
                }
                return bitmapW;
            }
        } else {
            bitmapW = null;
        }
        w wVar = this.f29334u;
        wVar.f29468c = this.F == 0 ? q.OFFLINE.f29411o : this.f29336w;
        y.a aVarF = this.f29337x.f(wVar, this.f29336w);
        if (aVarF != null) {
            this.C = aVarF.c();
            this.E = aVarF.b();
            bitmapW = aVarF.a();
            if (bitmapW == null) {
                InputStream inputStreamD = aVarF.d();
                try {
                    Bitmap bitmapE = e(inputStreamD, this.f29334u);
                    e0.e(inputStreamD);
                    bitmapW = bitmapE;
                } catch (Throwable th) {
                    e0.e(inputStreamD);
                    throw th;
                }
            }
        }
        if (bitmapW != null) {
            if (this.f29329p.f29430n) {
                e0.u("Hunter", "decoded", this.f29334u.d());
            }
            this.f29332s.b(bitmapW);
            if (this.f29334u.f() || this.E != 0) {
                synchronized (H) {
                    if (this.f29334u.e() || this.E != 0) {
                        bitmapW = w(this.f29334u, bitmapW, this.E);
                        if (this.f29329p.f29430n) {
                            e0.u("Hunter", "transformed", this.f29334u.d());
                        }
                    }
                    if (this.f29334u.b()) {
                        bitmapW = a(this.f29334u.f29472g, bitmapW);
                        if (this.f29329p.f29430n) {
                            e0.v("Hunter", "transformed", this.f29334u.d(), "from custom transformations");
                        }
                    }
                }
                if (bitmapW != null) {
                    this.f29332s.c(bitmapW);
                }
            }
        }
        return bitmapW;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                try {
                    try {
                        x(this.f29334u);
                        if (this.f29329p.f29430n) {
                            e0.u("Hunter", "executing", e0.l(this));
                        }
                        Bitmap bitmapR = r();
                        this.A = bitmapR;
                        if (bitmapR == null) {
                            this.f29330q.e(this);
                        } else {
                            this.f29330q.d(this);
                        }
                    } catch (IOException e10) {
                        this.D = e10;
                        this.f29330q.g(this);
                    }
                } catch (r.a e11) {
                    this.D = e11;
                    this.f29330q.g(this);
                } catch (Exception e12) {
                    this.D = e12;
                    this.f29330q.e(this);
                }
            } catch (j.b e13) {
                if (!e13.f29380o || e13.f29381p != 504) {
                    this.D = e13;
                }
                this.f29330q.e(this);
            } catch (OutOfMemoryError e14) {
                StringWriter stringWriter = new StringWriter();
                this.f29332s.a().a(new PrintWriter(stringWriter));
                this.D = new RuntimeException(stringWriter.toString(), e14);
                this.f29330q.e(this);
            }
        } finally {
            Thread.currentThread().setName("Picasso-Idle");
        }
    }

    boolean s() {
        Future<?> future = this.B;
        return future != null && future.isCancelled();
    }

    boolean u(boolean z10, NetworkInfo networkInfo) {
        int i10 = this.F;
        if (!(i10 > 0)) {
            return false;
        }
        this.F = i10 - 1;
        return this.f29337x.h(z10, networkInfo);
    }

    boolean v() {
        return this.f29337x.i();
    }
}
