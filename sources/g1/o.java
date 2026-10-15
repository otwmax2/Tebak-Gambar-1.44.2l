package g1;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: TransitionManager.java */
/* JADX INFO: loaded from: classes.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static m f29758a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ThreadLocal<WeakReference<o.a<ViewGroup, ArrayList<m>>>> f29759b = new ThreadLocal<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static ArrayList<ViewGroup> f29760c = new ArrayList<>();

    /* JADX INFO: compiled from: TransitionManager.java */
    private static class a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        m f29761o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        ViewGroup f29762p;

        /* JADX INFO: renamed from: g1.o$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: TransitionManager.java */
        class C0163a extends n {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ o.a f29763a;

            C0163a(o.a aVar) {
                this.f29763a = aVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // g1.m.f
            public void d(m mVar) {
                ((ArrayList) this.f29763a.get(a.this.f29762p)).remove(mVar);
                mVar.R(this);
            }
        }

        a(m mVar, ViewGroup viewGroup) {
            this.f29761o = mVar;
            this.f29762p = viewGroup;
        }

        private void a() {
            this.f29762p.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f29762p.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            a();
            if (!o.f29760c.remove(this.f29762p)) {
                return true;
            }
            o.a<ViewGroup, ArrayList<m>> aVarB = o.b();
            ArrayList<m> arrayList = aVarB.get(this.f29762p);
            ArrayList arrayList2 = null;
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                aVarB.put(this.f29762p, arrayList);
            } else if (arrayList.size() > 0) {
                arrayList2 = new ArrayList(arrayList);
            }
            arrayList.add(this.f29761o);
            this.f29761o.a(new C0163a(aVarB));
            this.f29761o.l(this.f29762p, false);
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((m) it.next()).T(this.f29762p);
                }
            }
            this.f29761o.Q(this.f29762p);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            a();
            o.f29760c.remove(this.f29762p);
            ArrayList<m> arrayList = o.b().get(this.f29762p);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<m> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().T(this.f29762p);
                }
            }
            this.f29761o.m(true);
        }
    }

    public static void a(ViewGroup viewGroup, m mVar) {
        if (f29760c.contains(viewGroup) || !androidx.core.view.a0.U(viewGroup)) {
            return;
        }
        f29760c.add(viewGroup);
        if (mVar == null) {
            mVar = f29758a;
        }
        m mVarClone = mVar.clone();
        d(viewGroup, mVarClone);
        l.c(viewGroup, null);
        c(viewGroup, mVarClone);
    }

    static o.a<ViewGroup, ArrayList<m>> b() {
        o.a<ViewGroup, ArrayList<m>> aVar;
        WeakReference<o.a<ViewGroup, ArrayList<m>>> weakReference = f29759b.get();
        if (weakReference != null && (aVar = weakReference.get()) != null) {
            return aVar;
        }
        o.a<ViewGroup, ArrayList<m>> aVar2 = new o.a<>();
        f29759b.set(new WeakReference<>(aVar2));
        return aVar2;
    }

    private static void c(ViewGroup viewGroup, m mVar) {
        if (mVar == null || viewGroup == null) {
            return;
        }
        a aVar = new a(mVar, viewGroup);
        viewGroup.addOnAttachStateChangeListener(aVar);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
    }

    private static void d(ViewGroup viewGroup, m mVar) {
        ArrayList<m> arrayList = b().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<m> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().P(viewGroup);
            }
        }
        if (mVar != null) {
            mVar.l(viewGroup, true);
        }
        l lVarB = l.b(viewGroup);
        if (lVarB != null) {
            lVarB.a();
        }
    }
}
