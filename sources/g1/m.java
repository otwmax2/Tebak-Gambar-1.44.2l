package g1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: Transition.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class m implements Cloneable {
    private static final int[] V = {2, 1, 3, 4};
    private static final g W = new a();
    private static ThreadLocal<o.a<Animator, d>> X = new ThreadLocal<>();
    private ArrayList<s> H;
    private ArrayList<s> I;
    p R;
    private e S;
    private o.a<String, String> T;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f29738o = getClass().getName();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f29739p = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    long f29740q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private TimeInterpolator f29741r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    ArrayList<Integer> f29742s = new ArrayList<>();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    ArrayList<View> f29743t = new ArrayList<>();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ArrayList<String> f29744u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ArrayList<Class<?>> f29745v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private ArrayList<Integer> f29746w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private ArrayList<View> f29747x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private ArrayList<Class<?>> f29748y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private ArrayList<String> f29749z = null;
    private ArrayList<Integer> A = null;
    private ArrayList<View> B = null;
    private ArrayList<Class<?>> C = null;
    private t D = new t();
    private t E = new t();
    q F = null;
    private int[] G = V;
    private ViewGroup J = null;
    boolean K = false;
    ArrayList<Animator> L = new ArrayList<>();
    private int M = 0;
    private boolean N = false;
    private boolean O = false;
    private ArrayList<f> P = null;
    private ArrayList<Animator> Q = new ArrayList<>();
    private g U = W;

    /* JADX INFO: compiled from: Transition.java */
    static class a extends g {
        a() {
        }

        @Override // g1.g
        public Path a(float f10, float f11, float f12, float f13) {
            Path path = new Path();
            path.moveTo(f10, f11);
            path.lineTo(f12, f13);
            return path;
        }
    }

    /* JADX INFO: compiled from: Transition.java */
    class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ o.a f29750a;

        b(o.a aVar) {
            this.f29750a = aVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f29750a.remove(animator);
            m.this.L.remove(animator);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            m.this.L.add(animator);
        }
    }

    /* JADX INFO: compiled from: Transition.java */
    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            m.this.q();
            animator.removeListener(this);
        }
    }

    /* JADX INFO: compiled from: Transition.java */
    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        View f29753a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f29754b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        s f29755c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        m0 f29756d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        m f29757e;

        d(View view, String str, m mVar, m0 m0Var, s sVar) {
            this.f29753a = view;
            this.f29754b = str;
            this.f29755c = sVar;
            this.f29756d = m0Var;
            this.f29757e = mVar;
        }
    }

    /* JADX INFO: compiled from: Transition.java */
    public static abstract class e {
    }

    /* JADX INFO: compiled from: Transition.java */
    public interface f {
        void a(m mVar);

        void b(m mVar);

        void c(m mVar);

        void d(m mVar);

        void e(m mVar);
    }

    private static boolean I(s sVar, s sVar2, String str) {
        Object obj = sVar.f29774a.get(str);
        Object obj2 = sVar2.f29774a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return true ^ obj.equals(obj2);
    }

    private void J(o.a<View, s> aVar, o.a<View, s> aVar2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            View viewValueAt = sparseArray.valueAt(i10);
            if (viewValueAt != null && H(viewValueAt) && (view = sparseArray2.get(sparseArray.keyAt(i10))) != null && H(view)) {
                s sVar = aVar.get(viewValueAt);
                s sVar2 = aVar2.get(view);
                if (sVar != null && sVar2 != null) {
                    this.H.add(sVar);
                    this.I.add(sVar2);
                    aVar.remove(viewValueAt);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void K(o.a<View, s> aVar, o.a<View, s> aVar2) {
        s sVarRemove;
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View viewK = aVar.k(size);
            if (viewK != null && H(viewK) && (sVarRemove = aVar2.remove(viewK)) != null && H(sVarRemove.f29775b)) {
                this.H.add(aVar.m(size));
                this.I.add(sVarRemove);
            }
        }
    }

    private void M(o.a<View, s> aVar, o.a<View, s> aVar2, o.d<View> dVar, o.d<View> dVar2) {
        View viewG;
        int iN = dVar.n();
        for (int i10 = 0; i10 < iN; i10++) {
            View viewO = dVar.o(i10);
            if (viewO != null && H(viewO) && (viewG = dVar2.g(dVar.j(i10))) != null && H(viewG)) {
                s sVar = aVar.get(viewO);
                s sVar2 = aVar2.get(viewG);
                if (sVar != null && sVar2 != null) {
                    this.H.add(sVar);
                    this.I.add(sVar2);
                    aVar.remove(viewO);
                    aVar2.remove(viewG);
                }
            }
        }
    }

    private void N(o.a<View, s> aVar, o.a<View, s> aVar2, o.a<String, View> aVar3, o.a<String, View> aVar4) {
        View view;
        int size = aVar3.size();
        for (int i10 = 0; i10 < size; i10++) {
            View viewO = aVar3.o(i10);
            if (viewO != null && H(viewO) && (view = aVar4.get(aVar3.k(i10))) != null && H(view)) {
                s sVar = aVar.get(viewO);
                s sVar2 = aVar2.get(view);
                if (sVar != null && sVar2 != null) {
                    this.H.add(sVar);
                    this.I.add(sVar2);
                    aVar.remove(viewO);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void O(t tVar, t tVar2) {
        o.a<View, s> aVar = new o.a<>(tVar.f29777a);
        o.a<View, s> aVar2 = new o.a<>(tVar2.f29777a);
        int i10 = 0;
        while (true) {
            int[] iArr = this.G;
            if (i10 >= iArr.length) {
                d(aVar, aVar2);
                return;
            }
            int i11 = iArr[i10];
            if (i11 == 1) {
                K(aVar, aVar2);
            } else if (i11 == 2) {
                N(aVar, aVar2, tVar.f29780d, tVar2.f29780d);
            } else if (i11 == 3) {
                J(aVar, aVar2, tVar.f29778b, tVar2.f29778b);
            } else if (i11 == 4) {
                M(aVar, aVar2, tVar.f29779c, tVar2.f29779c);
            }
            i10++;
        }
    }

    private void U(Animator animator, o.a<Animator, d> aVar) {
        if (animator != null) {
            animator.addListener(new b(aVar));
            g(animator);
        }
    }

    private void d(o.a<View, s> aVar, o.a<View, s> aVar2) {
        for (int i10 = 0; i10 < aVar.size(); i10++) {
            s sVarO = aVar.o(i10);
            if (H(sVarO.f29775b)) {
                this.H.add(sVarO);
                this.I.add(null);
            }
        }
        for (int i11 = 0; i11 < aVar2.size(); i11++) {
            s sVarO2 = aVar2.o(i11);
            if (H(sVarO2.f29775b)) {
                this.I.add(sVarO2);
                this.H.add(null);
            }
        }
    }

    private static void f(t tVar, View view, s sVar) {
        tVar.f29777a.put(view, sVar);
        int id = view.getId();
        if (id >= 0) {
            if (tVar.f29778b.indexOfKey(id) >= 0) {
                tVar.f29778b.put(id, null);
            } else {
                tVar.f29778b.put(id, view);
            }
        }
        String strM = androidx.core.view.a0.M(view);
        if (strM != null) {
            if (tVar.f29780d.containsKey(strM)) {
                tVar.f29780d.put(strM, null);
            } else {
                tVar.f29780d.put(strM, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (tVar.f29779c.i(itemIdAtPosition) < 0) {
                    androidx.core.view.a0.z0(view, true);
                    tVar.f29779c.k(itemIdAtPosition, view);
                    return;
                }
                View viewG = tVar.f29779c.g(itemIdAtPosition);
                if (viewG != null) {
                    androidx.core.view.a0.z0(viewG, false);
                    tVar.f29779c.k(itemIdAtPosition, null);
                }
            }
        }
    }

    private void i(View view, boolean z10) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        ArrayList<Integer> arrayList = this.f29746w;
        if (arrayList == null || !arrayList.contains(Integer.valueOf(id))) {
            ArrayList<View> arrayList2 = this.f29747x;
            if (arrayList2 == null || !arrayList2.contains(view)) {
                ArrayList<Class<?>> arrayList3 = this.f29748y;
                if (arrayList3 != null) {
                    int size = arrayList3.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        if (this.f29748y.get(i10).isInstance(view)) {
                            return;
                        }
                    }
                }
                if (view.getParent() instanceof ViewGroup) {
                    s sVar = new s(view);
                    if (z10) {
                        k(sVar);
                    } else {
                        h(sVar);
                    }
                    sVar.f29776c.add(this);
                    j(sVar);
                    if (z10) {
                        f(this.D, view, sVar);
                    } else {
                        f(this.E, view, sVar);
                    }
                }
                if (view instanceof ViewGroup) {
                    ArrayList<Integer> arrayList4 = this.A;
                    if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id))) {
                        ArrayList<View> arrayList5 = this.B;
                        if (arrayList5 == null || !arrayList5.contains(view)) {
                            ArrayList<Class<?>> arrayList6 = this.C;
                            if (arrayList6 != null) {
                                int size2 = arrayList6.size();
                                for (int i11 = 0; i11 < size2; i11++) {
                                    if (this.C.get(i11).isInstance(view)) {
                                        return;
                                    }
                                }
                            }
                            ViewGroup viewGroup = (ViewGroup) view;
                            for (int i12 = 0; i12 < viewGroup.getChildCount(); i12++) {
                                i(viewGroup.getChildAt(i12), z10);
                            }
                        }
                    }
                }
            }
        }
    }

    private static o.a<Animator, d> y() {
        o.a<Animator, d> aVar = X.get();
        if (aVar != null) {
            return aVar;
        }
        o.a<Animator, d> aVar2 = new o.a<>();
        X.set(aVar2);
        return aVar2;
    }

    public List<Integer> A() {
        return this.f29742s;
    }

    public List<String> B() {
        return this.f29744u;
    }

    public List<Class<?>> C() {
        return this.f29745v;
    }

    public List<View> D() {
        return this.f29743t;
    }

    public String[] E() {
        return null;
    }

    public s F(View view, boolean z10) {
        q qVar = this.F;
        if (qVar != null) {
            return qVar.F(view, z10);
        }
        return (z10 ? this.D : this.E).f29777a.get(view);
    }

    public boolean G(s sVar, s sVar2) {
        if (sVar == null || sVar2 == null) {
            return false;
        }
        String[] strArrE = E();
        if (strArrE == null) {
            Iterator<String> it = sVar.f29774a.keySet().iterator();
            while (it.hasNext()) {
                if (I(sVar, sVar2, it.next())) {
                }
            }
            return false;
        }
        for (String str : strArrE) {
            if (!I(sVar, sVar2, str)) {
            }
        }
        return false;
        return true;
    }

    boolean H(View view) {
        ArrayList<Class<?>> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.f29746w;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id))) {
            return false;
        }
        ArrayList<View> arrayList4 = this.f29747x;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList<Class<?>> arrayList5 = this.f29748y;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (this.f29748y.get(i10).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.f29749z != null && androidx.core.view.a0.M(view) != null && this.f29749z.contains(androidx.core.view.a0.M(view))) {
            return false;
        }
        if ((this.f29742s.size() == 0 && this.f29743t.size() == 0 && (((arrayList = this.f29745v) == null || arrayList.isEmpty()) && ((arrayList2 = this.f29744u) == null || arrayList2.isEmpty()))) || this.f29742s.contains(Integer.valueOf(id)) || this.f29743t.contains(view)) {
            return true;
        }
        ArrayList<String> arrayList6 = this.f29744u;
        if (arrayList6 != null && arrayList6.contains(androidx.core.view.a0.M(view))) {
            return true;
        }
        if (this.f29745v != null) {
            for (int i11 = 0; i11 < this.f29745v.size(); i11++) {
                if (this.f29745v.get(i11).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void P(View view) {
        if (this.O) {
            return;
        }
        o.a<Animator, d> aVarY = y();
        int size = aVarY.size();
        m0 m0VarD = c0.d(view);
        for (int i10 = size - 1; i10 >= 0; i10--) {
            d dVarO = aVarY.o(i10);
            if (dVarO.f29753a != null && m0VarD.equals(dVarO.f29756d)) {
                g1.a.b(aVarY.k(i10));
            }
        }
        ArrayList<f> arrayList = this.P;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.P.clone();
            int size2 = arrayList2.size();
            for (int i11 = 0; i11 < size2; i11++) {
                ((f) arrayList2.get(i11)).c(this);
            }
        }
        this.N = true;
    }

    void Q(ViewGroup viewGroup) {
        d dVar;
        this.H = new ArrayList<>();
        this.I = new ArrayList<>();
        O(this.D, this.E);
        o.a<Animator, d> aVarY = y();
        int size = aVarY.size();
        m0 m0VarD = c0.d(viewGroup);
        for (int i10 = size - 1; i10 >= 0; i10--) {
            Animator animatorK = aVarY.k(i10);
            if (animatorK != null && (dVar = aVarY.get(animatorK)) != null && dVar.f29753a != null && m0VarD.equals(dVar.f29756d)) {
                s sVar = dVar.f29755c;
                View view = dVar.f29753a;
                s sVarF = F(view, true);
                s sVarU = u(view, true);
                if (sVarF == null && sVarU == null) {
                    sVarU = this.E.f29777a.get(view);
                }
                if (!(sVarF == null && sVarU == null) && dVar.f29757e.G(sVar, sVarU)) {
                    if (animatorK.isRunning() || animatorK.isStarted()) {
                        animatorK.cancel();
                    } else {
                        aVarY.remove(animatorK);
                    }
                }
            }
        }
        p(viewGroup, this.D, this.E, this.H, this.I);
        V();
    }

    public m R(f fVar) {
        ArrayList<f> arrayList = this.P;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(fVar);
        if (this.P.size() == 0) {
            this.P = null;
        }
        return this;
    }

    public m S(View view) {
        this.f29743t.remove(view);
        return this;
    }

    public void T(View view) {
        if (this.N) {
            if (!this.O) {
                o.a<Animator, d> aVarY = y();
                int size = aVarY.size();
                m0 m0VarD = c0.d(view);
                for (int i10 = size - 1; i10 >= 0; i10--) {
                    d dVarO = aVarY.o(i10);
                    if (dVarO.f29753a != null && m0VarD.equals(dVarO.f29756d)) {
                        g1.a.c(aVarY.k(i10));
                    }
                }
                ArrayList<f> arrayList = this.P;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.P.clone();
                    int size2 = arrayList2.size();
                    for (int i11 = 0; i11 < size2; i11++) {
                        ((f) arrayList2.get(i11)).a(this);
                    }
                }
            }
            this.N = false;
        }
    }

    protected void V() {
        d0();
        o.a<Animator, d> aVarY = y();
        for (Animator animator : this.Q) {
            if (aVarY.containsKey(animator)) {
                d0();
                U(animator, aVarY);
            }
        }
        this.Q.clear();
        q();
    }

    public m W(long j10) {
        this.f29740q = j10;
        return this;
    }

    public void Y(e eVar) {
        this.S = eVar;
    }

    public m Z(TimeInterpolator timeInterpolator) {
        this.f29741r = timeInterpolator;
        return this;
    }

    public m a(f fVar) {
        if (this.P == null) {
            this.P = new ArrayList<>();
        }
        this.P.add(fVar);
        return this;
    }

    public void a0(g gVar) {
        if (gVar == null) {
            this.U = W;
        } else {
            this.U = gVar;
        }
    }

    public m b(View view) {
        this.f29743t.add(view);
        return this;
    }

    public void b0(p pVar) {
    }

    public m c0(long j10) {
        this.f29739p = j10;
        return this;
    }

    protected void cancel() {
        for (int size = this.L.size() - 1; size >= 0; size--) {
            this.L.get(size).cancel();
        }
        ArrayList<f> arrayList = this.P;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) this.P.clone();
        int size2 = arrayList2.size();
        for (int i10 = 0; i10 < size2; i10++) {
            ((f) arrayList2.get(i10)).b(this);
        }
    }

    protected void d0() {
        if (this.M == 0) {
            ArrayList<f> arrayList = this.P;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.P.clone();
                int size = arrayList2.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((f) arrayList2.get(i10)).e(this);
                }
            }
            this.O = false;
        }
        this.M++;
    }

    String e0(String str) {
        String str2 = str + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
        if (this.f29740q != -1) {
            str2 = str2 + "dur(" + this.f29740q + ") ";
        }
        if (this.f29739p != -1) {
            str2 = str2 + "dly(" + this.f29739p + ") ";
        }
        if (this.f29741r != null) {
            str2 = str2 + "interp(" + this.f29741r + ") ";
        }
        if (this.f29742s.size() <= 0 && this.f29743t.size() <= 0) {
            return str2;
        }
        String str3 = str2 + "tgts(";
        if (this.f29742s.size() > 0) {
            for (int i10 = 0; i10 < this.f29742s.size(); i10++) {
                if (i10 > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + this.f29742s.get(i10);
            }
        }
        if (this.f29743t.size() > 0) {
            for (int i11 = 0; i11 < this.f29743t.size(); i11++) {
                if (i11 > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + this.f29743t.get(i11);
            }
        }
        return str3 + ")";
    }

    protected void g(Animator animator) {
        if (animator == null) {
            q();
            return;
        }
        if (r() >= 0) {
            animator.setDuration(r());
        }
        if (z() >= 0) {
            animator.setStartDelay(z() + animator.getStartDelay());
        }
        if (t() != null) {
            animator.setInterpolator(t());
        }
        animator.addListener(new c());
        animator.start();
    }

    public abstract void h(s sVar);

    void j(s sVar) {
    }

    public abstract void k(s sVar);

    void l(ViewGroup viewGroup, boolean z10) {
        ArrayList<String> arrayList;
        ArrayList<Class<?>> arrayList2;
        o.a<String, String> aVar;
        m(z10);
        if ((this.f29742s.size() > 0 || this.f29743t.size() > 0) && (((arrayList = this.f29744u) == null || arrayList.isEmpty()) && ((arrayList2 = this.f29745v) == null || arrayList2.isEmpty()))) {
            for (int i10 = 0; i10 < this.f29742s.size(); i10++) {
                View viewFindViewById = viewGroup.findViewById(this.f29742s.get(i10).intValue());
                if (viewFindViewById != null) {
                    s sVar = new s(viewFindViewById);
                    if (z10) {
                        k(sVar);
                    } else {
                        h(sVar);
                    }
                    sVar.f29776c.add(this);
                    j(sVar);
                    if (z10) {
                        f(this.D, viewFindViewById, sVar);
                    } else {
                        f(this.E, viewFindViewById, sVar);
                    }
                }
            }
            for (int i11 = 0; i11 < this.f29743t.size(); i11++) {
                View view = this.f29743t.get(i11);
                s sVar2 = new s(view);
                if (z10) {
                    k(sVar2);
                } else {
                    h(sVar2);
                }
                sVar2.f29776c.add(this);
                j(sVar2);
                if (z10) {
                    f(this.D, view, sVar2);
                } else {
                    f(this.E, view, sVar2);
                }
            }
        } else {
            i(viewGroup, z10);
        }
        if (z10 || (aVar = this.T) == null) {
            return;
        }
        int size = aVar.size();
        ArrayList arrayList3 = new ArrayList(size);
        for (int i12 = 0; i12 < size; i12++) {
            arrayList3.add(this.D.f29780d.remove(this.T.k(i12)));
        }
        for (int i13 = 0; i13 < size; i13++) {
            View view2 = (View) arrayList3.get(i13);
            if (view2 != null) {
                this.D.f29780d.put(this.T.o(i13), view2);
            }
        }
    }

    void m(boolean z10) {
        if (z10) {
            this.D.f29777a.clear();
            this.D.f29778b.clear();
            this.D.f29779c.b();
        } else {
            this.E.f29777a.clear();
            this.E.f29778b.clear();
            this.E.f29779c.b();
        }
    }

    @Override // 
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public m clone() {
        try {
            m mVar = (m) super.clone();
            mVar.Q = new ArrayList<>();
            mVar.D = new t();
            mVar.E = new t();
            mVar.H = null;
            mVar.I = null;
            return mVar;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public Animator o(ViewGroup viewGroup, s sVar, s sVar2) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void p(android.view.ViewGroup r20, g1.t r21, g1.t r22, java.util.ArrayList<g1.s> r23, java.util.ArrayList<g1.s> r24) {
        /*
            Method dump skipped, instruction units count: 320
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: g1.m.p(android.view.ViewGroup, g1.t, g1.t, java.util.ArrayList, java.util.ArrayList):void");
    }

    protected void q() {
        int i10 = this.M - 1;
        this.M = i10;
        if (i10 == 0) {
            ArrayList<f> arrayList = this.P;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.P.clone();
                int size = arrayList2.size();
                for (int i11 = 0; i11 < size; i11++) {
                    ((f) arrayList2.get(i11)).d(this);
                }
            }
            for (int i12 = 0; i12 < this.D.f29779c.n(); i12++) {
                View viewO = this.D.f29779c.o(i12);
                if (viewO != null) {
                    androidx.core.view.a0.z0(viewO, false);
                }
            }
            for (int i13 = 0; i13 < this.E.f29779c.n(); i13++) {
                View viewO2 = this.E.f29779c.o(i13);
                if (viewO2 != null) {
                    androidx.core.view.a0.z0(viewO2, false);
                }
            }
            this.O = true;
        }
    }

    public long r() {
        return this.f29740q;
    }

    public e s() {
        return this.S;
    }

    public TimeInterpolator t() {
        return this.f29741r;
    }

    public String toString() {
        return e0(BuildConfig.FLAVOR);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x002e, code lost:
    
        if (r3 < 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0030, code lost:
    
        if (r8 == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
    
        r7 = r6.I;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0035, code lost:
    
        r7 = r6.H;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003e, code lost:
    
        return r7.get(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    g1.s u(android.view.View r7, boolean r8) {
        /*
            r6 = this;
            g1.q r0 = r6.F
            if (r0 == 0) goto L9
            g1.s r7 = r0.u(r7, r8)
            return r7
        L9:
            if (r8 == 0) goto Le
            java.util.ArrayList<g1.s> r0 = r6.H
            goto L10
        Le:
            java.util.ArrayList<g1.s> r0 = r6.I
        L10:
            r1 = 0
            if (r0 != 0) goto L14
            return r1
        L14:
            int r2 = r0.size()
            r3 = -1
            r4 = 0
        L1a:
            if (r4 >= r2) goto L2e
            java.lang.Object r5 = r0.get(r4)
            g1.s r5 = (g1.s) r5
            if (r5 != 0) goto L25
            return r1
        L25:
            android.view.View r5 = r5.f29775b
            if (r5 != r7) goto L2b
            r3 = r4
            goto L2e
        L2b:
            int r4 = r4 + 1
            goto L1a
        L2e:
            if (r3 < 0) goto L3e
            if (r8 == 0) goto L35
            java.util.ArrayList<g1.s> r7 = r6.I
            goto L37
        L35:
            java.util.ArrayList<g1.s> r7 = r6.H
        L37:
            java.lang.Object r7 = r7.get(r3)
            r1 = r7
            g1.s r1 = (g1.s) r1
        L3e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: g1.m.u(android.view.View, boolean):g1.s");
    }

    public String v() {
        return this.f29738o;
    }

    public g w() {
        return this.U;
    }

    public p x() {
        return this.R;
    }

    public long z() {
        return this.f29739p;
    }
}
