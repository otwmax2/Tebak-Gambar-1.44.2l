package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.core.view.a0;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: DefaultItemAnimator.java */
/* JADX INFO: loaded from: classes.dex */
public class c extends m {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static TimeInterpolator f3860s;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ArrayList<RecyclerView.e0> f3861h = new ArrayList<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ArrayList<RecyclerView.e0> f3862i = new ArrayList<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ArrayList<j> f3863j = new ArrayList<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ArrayList<i> f3864k = new ArrayList<>();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    ArrayList<ArrayList<RecyclerView.e0>> f3865l = new ArrayList<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    ArrayList<ArrayList<j>> f3866m = new ArrayList<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    ArrayList<ArrayList<i>> f3867n = new ArrayList<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    ArrayList<RecyclerView.e0> f3868o = new ArrayList<>();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    ArrayList<RecyclerView.e0> f3869p = new ArrayList<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    ArrayList<RecyclerView.e0> f3870q = new ArrayList<>();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    ArrayList<RecyclerView.e0> f3871r = new ArrayList<>();

    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ ArrayList f3872o;

        a(ArrayList arrayList) {
            this.f3872o = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (j jVar : this.f3872o) {
                c.this.S(jVar.f3906a, jVar.f3907b, jVar.f3908c, jVar.f3909d, jVar.f3910e);
            }
            this.f3872o.clear();
            c.this.f3866m.remove(this.f3872o);
        }
    }

    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    class b implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ ArrayList f3874o;

        b(ArrayList arrayList) {
            this.f3874o = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f3874o.iterator();
            while (it.hasNext()) {
                c.this.R((i) it.next());
            }
            this.f3874o.clear();
            c.this.f3867n.remove(this.f3874o);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    class RunnableC0063c implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ ArrayList f3876o;

        RunnableC0063c(ArrayList arrayList) {
            this.f3876o = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f3876o.iterator();
            while (it.hasNext()) {
                c.this.Q((RecyclerView.e0) it.next());
            }
            this.f3876o.clear();
            c.this.f3865l.remove(this.f3876o);
        }
    }

    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    class d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RecyclerView.e0 f3878a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f3879b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f3880c;

        d(RecyclerView.e0 e0Var, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f3878a = e0Var;
            this.f3879b = viewPropertyAnimator;
            this.f3880c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f3879b.setListener(null);
            this.f3880c.setAlpha(1.0f);
            c.this.G(this.f3878a);
            c.this.f3870q.remove(this.f3878a);
            c.this.V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            c.this.H(this.f3878a);
        }
    }

    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    class e extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RecyclerView.e0 f3882a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f3883b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f3884c;

        e(RecyclerView.e0 e0Var, View view, ViewPropertyAnimator viewPropertyAnimator) {
            this.f3882a = e0Var;
            this.f3883b = view;
            this.f3884c = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f3883b.setAlpha(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f3884c.setListener(null);
            c.this.A(this.f3882a);
            c.this.f3868o.remove(this.f3882a);
            c.this.V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            c.this.B(this.f3882a);
        }
    }

    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    class f extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RecyclerView.e0 f3886a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f3887b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f3888c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f3889d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f3890e;

        f(RecyclerView.e0 e0Var, int i10, View view, int i11, ViewPropertyAnimator viewPropertyAnimator) {
            this.f3886a = e0Var;
            this.f3887b = i10;
            this.f3888c = view;
            this.f3889d = i11;
            this.f3890e = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.f3887b != 0) {
                this.f3888c.setTranslationX(0.0f);
            }
            if (this.f3889d != 0) {
                this.f3888c.setTranslationY(0.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f3890e.setListener(null);
            c.this.E(this.f3886a);
            c.this.f3869p.remove(this.f3886a);
            c.this.V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            c.this.F(this.f3886a);
        }
    }

    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    class g extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ i f3892a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f3893b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f3894c;

        g(i iVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f3892a = iVar;
            this.f3893b = viewPropertyAnimator;
            this.f3894c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f3893b.setListener(null);
            this.f3894c.setAlpha(1.0f);
            this.f3894c.setTranslationX(0.0f);
            this.f3894c.setTranslationY(0.0f);
            c.this.C(this.f3892a.f3900a, true);
            c.this.f3871r.remove(this.f3892a.f3900a);
            c.this.V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            c.this.D(this.f3892a.f3900a, true);
        }
    }

    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    class h extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ i f3896a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f3897b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f3898c;

        h(i iVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f3896a = iVar;
            this.f3897b = viewPropertyAnimator;
            this.f3898c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f3897b.setListener(null);
            this.f3898c.setAlpha(1.0f);
            this.f3898c.setTranslationX(0.0f);
            this.f3898c.setTranslationY(0.0f);
            c.this.C(this.f3896a.f3901b, false);
            c.this.f3871r.remove(this.f3896a.f3901b);
            c.this.V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            c.this.D(this.f3896a.f3901b, false);
        }
    }

    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    private static class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public RecyclerView.e0 f3906a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f3907b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f3908c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f3909d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f3910e;

        j(RecyclerView.e0 e0Var, int i10, int i11, int i12, int i13) {
            this.f3906a = e0Var;
            this.f3907b = i10;
            this.f3908c = i11;
            this.f3909d = i12;
            this.f3910e = i13;
        }
    }

    private void T(RecyclerView.e0 e0Var) {
        View view = e0Var.f3727o;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f3870q.add(e0Var);
        viewPropertyAnimatorAnimate.setDuration(o()).alpha(0.0f).setListener(new d(e0Var, viewPropertyAnimatorAnimate, view)).start();
    }

    private void W(List<i> list, RecyclerView.e0 e0Var) {
        for (int size = list.size() - 1; size >= 0; size--) {
            i iVar = list.get(size);
            if (Y(iVar, e0Var) && iVar.f3900a == null && iVar.f3901b == null) {
                list.remove(iVar);
            }
        }
    }

    private void X(i iVar) {
        RecyclerView.e0 e0Var = iVar.f3900a;
        if (e0Var != null) {
            Y(iVar, e0Var);
        }
        RecyclerView.e0 e0Var2 = iVar.f3901b;
        if (e0Var2 != null) {
            Y(iVar, e0Var2);
        }
    }

    private boolean Y(i iVar, RecyclerView.e0 e0Var) {
        boolean z10 = false;
        if (iVar.f3901b == e0Var) {
            iVar.f3901b = null;
        } else {
            if (iVar.f3900a != e0Var) {
                return false;
            }
            iVar.f3900a = null;
            z10 = true;
        }
        e0Var.f3727o.setAlpha(1.0f);
        e0Var.f3727o.setTranslationX(0.0f);
        e0Var.f3727o.setTranslationY(0.0f);
        C(e0Var, z10);
        return true;
    }

    private void Z(RecyclerView.e0 e0Var) {
        if (f3860s == null) {
            f3860s = new ValueAnimator().getInterpolator();
        }
        e0Var.f3727o.animate().setInterpolator(f3860s);
        j(e0Var);
    }

    void Q(RecyclerView.e0 e0Var) {
        View view = e0Var.f3727o;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f3868o.add(e0Var);
        viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(l()).setListener(new e(e0Var, view, viewPropertyAnimatorAnimate)).start();
    }

    void R(i iVar) {
        RecyclerView.e0 e0Var = iVar.f3900a;
        View view = e0Var == null ? null : e0Var.f3727o;
        RecyclerView.e0 e0Var2 = iVar.f3901b;
        View view2 = e0Var2 != null ? e0Var2.f3727o : null;
        if (view != null) {
            ViewPropertyAnimator duration = view.animate().setDuration(m());
            this.f3871r.add(iVar.f3900a);
            duration.translationX(iVar.f3904e - iVar.f3902c);
            duration.translationY(iVar.f3905f - iVar.f3903d);
            duration.alpha(0.0f).setListener(new g(iVar, duration, view)).start();
        }
        if (view2 != null) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
            this.f3871r.add(iVar.f3901b);
            viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(m()).alpha(1.0f).setListener(new h(iVar, viewPropertyAnimatorAnimate, view2)).start();
        }
    }

    void S(RecyclerView.e0 e0Var, int i10, int i11, int i12, int i13) {
        View view = e0Var.f3727o;
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        if (i14 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i15 != 0) {
            view.animate().translationY(0.0f);
        }
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f3869p.add(e0Var);
        viewPropertyAnimatorAnimate.setDuration(n()).setListener(new f(e0Var, i14, view, i15, viewPropertyAnimatorAnimate)).start();
    }

    void U(List<RecyclerView.e0> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).f3727o.animate().cancel();
        }
    }

    void V() {
        if (p()) {
            return;
        }
        i();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean g(RecyclerView.e0 e0Var, List<Object> list) {
        return !list.isEmpty() || super.g(e0Var, list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void j(RecyclerView.e0 e0Var) {
        View view = e0Var.f3727o;
        view.animate().cancel();
        int size = this.f3863j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (this.f3863j.get(size).f3906a == e0Var) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                E(e0Var);
                this.f3863j.remove(size);
            }
        }
        W(this.f3864k, e0Var);
        if (this.f3861h.remove(e0Var)) {
            view.setAlpha(1.0f);
            G(e0Var);
        }
        if (this.f3862i.remove(e0Var)) {
            view.setAlpha(1.0f);
            A(e0Var);
        }
        for (int size2 = this.f3867n.size() - 1; size2 >= 0; size2--) {
            ArrayList<i> arrayList = this.f3867n.get(size2);
            W(arrayList, e0Var);
            if (arrayList.isEmpty()) {
                this.f3867n.remove(size2);
            }
        }
        for (int size3 = this.f3866m.size() - 1; size3 >= 0; size3--) {
            ArrayList<j> arrayList2 = this.f3866m.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (arrayList2.get(size4).f3906a == e0Var) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    E(e0Var);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f3866m.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f3865l.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.e0> arrayList3 = this.f3865l.get(size5);
            if (arrayList3.remove(e0Var)) {
                view.setAlpha(1.0f);
                A(e0Var);
                if (arrayList3.isEmpty()) {
                    this.f3865l.remove(size5);
                }
            }
        }
        this.f3870q.remove(e0Var);
        this.f3868o.remove(e0Var);
        this.f3871r.remove(e0Var);
        this.f3869p.remove(e0Var);
        V();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void k() {
        int size = this.f3863j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            j jVar = this.f3863j.get(size);
            View view = jVar.f3906a.f3727o;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            E(jVar.f3906a);
            this.f3863j.remove(size);
        }
        for (int size2 = this.f3861h.size() - 1; size2 >= 0; size2--) {
            G(this.f3861h.get(size2));
            this.f3861h.remove(size2);
        }
        int size3 = this.f3862i.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.e0 e0Var = this.f3862i.get(size3);
            e0Var.f3727o.setAlpha(1.0f);
            A(e0Var);
            this.f3862i.remove(size3);
        }
        for (int size4 = this.f3864k.size() - 1; size4 >= 0; size4--) {
            X(this.f3864k.get(size4));
        }
        this.f3864k.clear();
        if (p()) {
            for (int size5 = this.f3866m.size() - 1; size5 >= 0; size5--) {
                ArrayList<j> arrayList = this.f3866m.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    j jVar2 = arrayList.get(size6);
                    View view2 = jVar2.f3906a.f3727o;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    E(jVar2.f3906a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f3866m.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f3865l.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.e0> arrayList2 = this.f3865l.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.e0 e0Var2 = arrayList2.get(size8);
                    e0Var2.f3727o.setAlpha(1.0f);
                    A(e0Var2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f3865l.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.f3867n.size() - 1; size9 >= 0; size9--) {
                ArrayList<i> arrayList3 = this.f3867n.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    X(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.f3867n.remove(arrayList3);
                    }
                }
            }
            U(this.f3870q);
            U(this.f3869p);
            U(this.f3868o);
            U(this.f3871r);
            i();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean p() {
        return (this.f3862i.isEmpty() && this.f3864k.isEmpty() && this.f3863j.isEmpty() && this.f3861h.isEmpty() && this.f3869p.isEmpty() && this.f3870q.isEmpty() && this.f3868o.isEmpty() && this.f3871r.isEmpty() && this.f3866m.isEmpty() && this.f3865l.isEmpty() && this.f3867n.isEmpty()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void u() {
        boolean z10 = !this.f3861h.isEmpty();
        boolean z11 = !this.f3863j.isEmpty();
        boolean z12 = !this.f3864k.isEmpty();
        boolean z13 = !this.f3862i.isEmpty();
        if (z10 || z11 || z13 || z12) {
            Iterator<RecyclerView.e0> it = this.f3861h.iterator();
            while (it.hasNext()) {
                T(it.next());
            }
            this.f3861h.clear();
            if (z11) {
                ArrayList<j> arrayList = new ArrayList<>();
                arrayList.addAll(this.f3863j);
                this.f3866m.add(arrayList);
                this.f3863j.clear();
                a aVar = new a(arrayList);
                if (z10) {
                    a0.j0(arrayList.get(0).f3906a.f3727o, aVar, o());
                } else {
                    aVar.run();
                }
            }
            if (z12) {
                ArrayList<i> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.f3864k);
                this.f3867n.add(arrayList2);
                this.f3864k.clear();
                b bVar = new b(arrayList2);
                if (z10) {
                    a0.j0(arrayList2.get(0).f3900a.f3727o, bVar, o());
                } else {
                    bVar.run();
                }
            }
            if (z13) {
                ArrayList<RecyclerView.e0> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.f3862i);
                this.f3865l.add(arrayList3);
                this.f3862i.clear();
                RunnableC0063c runnableC0063c = new RunnableC0063c(arrayList3);
                if (z10 || z11 || z12) {
                    a0.j0(arrayList3.get(0).f3727o, runnableC0063c, (z10 ? o() : 0L) + Math.max(z11 ? n() : 0L, z12 ? m() : 0L));
                } else {
                    runnableC0063c.run();
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.m
    public boolean w(RecyclerView.e0 e0Var) {
        Z(e0Var);
        e0Var.f3727o.setAlpha(0.0f);
        this.f3862i.add(e0Var);
        return true;
    }

    @Override // androidx.recyclerview.widget.m
    public boolean x(RecyclerView.e0 e0Var, RecyclerView.e0 e0Var2, int i10, int i11, int i12, int i13) {
        if (e0Var == e0Var2) {
            return y(e0Var, i10, i11, i12, i13);
        }
        float translationX = e0Var.f3727o.getTranslationX();
        float translationY = e0Var.f3727o.getTranslationY();
        float alpha = e0Var.f3727o.getAlpha();
        Z(e0Var);
        int i14 = (int) ((i12 - i10) - translationX);
        int i15 = (int) ((i13 - i11) - translationY);
        e0Var.f3727o.setTranslationX(translationX);
        e0Var.f3727o.setTranslationY(translationY);
        e0Var.f3727o.setAlpha(alpha);
        if (e0Var2 != null) {
            Z(e0Var2);
            e0Var2.f3727o.setTranslationX(-i14);
            e0Var2.f3727o.setTranslationY(-i15);
            e0Var2.f3727o.setAlpha(0.0f);
        }
        this.f3864k.add(new i(e0Var, e0Var2, i10, i11, i12, i13));
        return true;
    }

    @Override // androidx.recyclerview.widget.m
    public boolean y(RecyclerView.e0 e0Var, int i10, int i11, int i12, int i13) {
        View view = e0Var.f3727o;
        int translationX = i10 + ((int) view.getTranslationX());
        int translationY = i11 + ((int) e0Var.f3727o.getTranslationY());
        Z(e0Var);
        int i14 = i12 - translationX;
        int i15 = i13 - translationY;
        if (i14 == 0 && i15 == 0) {
            E(e0Var);
            return false;
        }
        if (i14 != 0) {
            view.setTranslationX(-i14);
        }
        if (i15 != 0) {
            view.setTranslationY(-i15);
        }
        this.f3863j.add(new j(e0Var, translationX, translationY, i12, i13));
        return true;
    }

    @Override // androidx.recyclerview.widget.m
    public boolean z(RecyclerView.e0 e0Var) {
        Z(e0Var);
        this.f3861h.add(e0Var);
        return true;
    }

    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    private static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public RecyclerView.e0 f3900a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public RecyclerView.e0 f3901b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f3902c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f3903d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f3904e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f3905f;

        private i(RecyclerView.e0 e0Var, RecyclerView.e0 e0Var2) {
            this.f3900a = e0Var;
            this.f3901b = e0Var2;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f3900a + ", newHolder=" + this.f3901b + ", fromX=" + this.f3902c + ", fromY=" + this.f3903d + ", toX=" + this.f3904e + ", toY=" + this.f3905f + '}';
        }

        i(RecyclerView.e0 e0Var, RecyclerView.e0 e0Var2, int i10, int i11, int i12, int i13) {
            this(e0Var, e0Var2);
            this.f3902c = i10;
            this.f3903d = i11;
            this.f3904e = i12;
            this.f3905f = i13;
        }
    }
}
