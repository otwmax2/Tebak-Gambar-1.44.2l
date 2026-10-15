package g1;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import g1.m;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: FragmentTransitionSupport.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"RestrictedApi"})
public class e extends androidx.fragment.app.z {

    /* JADX INFO: compiled from: FragmentTransitionSupport.java */
    class a extends m.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Rect f29685a;

        a(Rect rect) {
            this.f29685a = rect;
        }
    }

    /* JADX INFO: compiled from: FragmentTransitionSupport.java */
    class b implements m.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f29687a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f29688b;

        b(View view, ArrayList arrayList) {
            this.f29687a = view;
            this.f29688b = arrayList;
        }

        @Override // g1.m.f
        public void a(m mVar) {
        }

        @Override // g1.m.f
        public void b(m mVar) {
        }

        @Override // g1.m.f
        public void c(m mVar) {
        }

        @Override // g1.m.f
        public void d(m mVar) {
            mVar.R(this);
            this.f29687a.setVisibility(8);
            int size = this.f29688b.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((View) this.f29688b.get(i10)).setVisibility(0);
            }
        }

        @Override // g1.m.f
        public void e(m mVar) {
        }
    }

    /* JADX INFO: compiled from: FragmentTransitionSupport.java */
    class c extends n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f29690a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f29691b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Object f29692c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ArrayList f29693d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Object f29694e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ ArrayList f29695f;

        c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.f29690a = obj;
            this.f29691b = arrayList;
            this.f29692c = obj2;
            this.f29693d = arrayList2;
            this.f29694e = obj3;
            this.f29695f = arrayList3;
        }

        @Override // g1.m.f
        public void d(m mVar) {
            mVar.R(this);
        }

        @Override // g1.n, g1.m.f
        public void e(m mVar) {
            Object obj = this.f29690a;
            if (obj != null) {
                e.this.q(obj, this.f29691b, null);
            }
            Object obj2 = this.f29692c;
            if (obj2 != null) {
                e.this.q(obj2, this.f29693d, null);
            }
            Object obj3 = this.f29694e;
            if (obj3 != null) {
                e.this.q(obj3, this.f29695f, null);
            }
        }
    }

    /* JADX INFO: compiled from: FragmentTransitionSupport.java */
    class d extends m.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Rect f29697a;

        d(Rect rect) {
            this.f29697a = rect;
        }
    }

    private static boolean C(m mVar) {
        return (androidx.fragment.app.z.l(mVar.A()) && androidx.fragment.app.z.l(mVar.B()) && androidx.fragment.app.z.l(mVar.C())) ? false : true;
    }

    @Override // androidx.fragment.app.z
    public void A(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        q qVar = (q) obj;
        if (qVar != null) {
            qVar.D().clear();
            qVar.D().addAll(arrayList2);
            q(qVar, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.z
    public Object B(Object obj) {
        if (obj == null) {
            return null;
        }
        q qVar = new q();
        qVar.h0((m) obj);
        return qVar;
    }

    @Override // androidx.fragment.app.z
    public void a(Object obj, View view) {
        if (obj != null) {
            ((m) obj).b(view);
        }
    }

    @Override // androidx.fragment.app.z
    public void b(Object obj, ArrayList<View> arrayList) {
        m mVar = (m) obj;
        if (mVar == null) {
            return;
        }
        int i10 = 0;
        if (mVar instanceof q) {
            q qVar = (q) mVar;
            int iK0 = qVar.k0();
            while (i10 < iK0) {
                b(qVar.j0(i10), arrayList);
                i10++;
            }
            return;
        }
        if (C(mVar) || !androidx.fragment.app.z.l(mVar.D())) {
            return;
        }
        int size = arrayList.size();
        while (i10 < size) {
            mVar.b(arrayList.get(i10));
            i10++;
        }
    }

    @Override // androidx.fragment.app.z
    public void c(ViewGroup viewGroup, Object obj) {
        o.a(viewGroup, (m) obj);
    }

    @Override // androidx.fragment.app.z
    public boolean e(Object obj) {
        return obj instanceof m;
    }

    @Override // androidx.fragment.app.z
    public Object g(Object obj) {
        if (obj != null) {
            return ((m) obj).clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.z
    public Object m(Object obj, Object obj2, Object obj3) {
        m mVarQ0 = (m) obj;
        m mVar = (m) obj2;
        m mVar2 = (m) obj3;
        if (mVarQ0 != null && mVar != null) {
            mVarQ0 = new q().h0(mVarQ0).h0(mVar).q0(1);
        } else if (mVarQ0 == null) {
            mVarQ0 = mVar != null ? mVar : null;
        }
        if (mVar2 == null) {
            return mVarQ0;
        }
        q qVar = new q();
        if (mVarQ0 != null) {
            qVar.h0(mVarQ0);
        }
        qVar.h0(mVar2);
        return qVar;
    }

    @Override // androidx.fragment.app.z
    public Object n(Object obj, Object obj2, Object obj3) {
        q qVar = new q();
        if (obj != null) {
            qVar.h0((m) obj);
        }
        if (obj2 != null) {
            qVar.h0((m) obj2);
        }
        if (obj3 != null) {
            qVar.h0((m) obj3);
        }
        return qVar;
    }

    @Override // androidx.fragment.app.z
    public void p(Object obj, View view) {
        if (obj != null) {
            ((m) obj).S(view);
        }
    }

    @Override // androidx.fragment.app.z
    public void q(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        m mVar = (m) obj;
        int i10 = 0;
        if (mVar instanceof q) {
            q qVar = (q) mVar;
            int iK0 = qVar.k0();
            while (i10 < iK0) {
                q(qVar.j0(i10), arrayList, arrayList2);
                i10++;
            }
            return;
        }
        if (C(mVar)) {
            return;
        }
        List<View> listD = mVar.D();
        if (listD.size() == arrayList.size() && listD.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            while (i10 < size) {
                mVar.b(arrayList2.get(i10));
                i10++;
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                mVar.S(arrayList.get(size2));
            }
        }
    }

    @Override // androidx.fragment.app.z
    public void r(Object obj, View view, ArrayList<View> arrayList) {
        ((m) obj).a(new b(view, arrayList));
    }

    @Override // androidx.fragment.app.z
    public void t(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((m) obj).a(new c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.z
    public void u(Object obj, Rect rect) {
        if (obj != null) {
            ((m) obj).Y(new d(rect));
        }
    }

    @Override // androidx.fragment.app.z
    public void v(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            k(view, rect);
            ((m) obj).Y(new a(rect));
        }
    }

    @Override // androidx.fragment.app.z
    public void z(Object obj, View view, ArrayList<View> arrayList) {
        q qVar = (q) obj;
        List<View> listD = qVar.D();
        listD.clear();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            androidx.fragment.app.z.d(listD, arrayList.get(i10));
        }
        listD.add(view);
        arrayList.add(view);
        b(qVar, arrayList);
    }
}
