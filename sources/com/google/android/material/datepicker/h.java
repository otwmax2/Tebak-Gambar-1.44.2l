package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.view.a0;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;

/* JADX INFO: compiled from: MaterialCalendar.java */
/* JADX INFO: loaded from: classes2.dex */
public final class h<S> extends p<S> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f25339p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.google.android.material.datepicker.d<S> f25340q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private com.google.android.material.datepicker.a f25341r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private com.google.android.material.datepicker.l f25342s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private k f25343t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private com.google.android.material.datepicker.c f25344u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private RecyclerView f25345v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private RecyclerView f25346w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private View f25347x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private View f25348y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    static final Object f25338z = "MONTHS_VIEW_GROUP_TAG";
    static final Object A = "NAVIGATION_PREV_TAG";
    static final Object B = "NAVIGATION_NEXT_TAG";
    static final Object C = "SELECTOR_TOGGLE_TAG";

    /* JADX INFO: compiled from: MaterialCalendar.java */
    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ int f25349o;

        a(int i10) {
            this.f25349o = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.f25346w.p1(this.f25349o);
        }
    }

    /* JADX INFO: compiled from: MaterialCalendar.java */
    class b extends androidx.core.view.a {
        b() {
        }

        @Override // androidx.core.view.a
        public void g(View view, androidx.core.view.accessibility.c cVar) {
            super.g(view, cVar);
            cVar.Z(null);
        }
    }

    /* JADX INFO: compiled from: MaterialCalendar.java */
    class c extends q {
        final /* synthetic */ int I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Context context, int i10, boolean z10, int i11) {
            super(context, i10, z10);
            this.I = i11;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        protected void M1(RecyclerView.b0 b0Var, int[] iArr) {
            if (this.I == 0) {
                iArr[0] = h.this.f25346w.getWidth();
                iArr[1] = h.this.f25346w.getWidth();
            } else {
                iArr[0] = h.this.f25346w.getHeight();
                iArr[1] = h.this.f25346w.getHeight();
            }
        }
    }

    /* JADX INFO: compiled from: MaterialCalendar.java */
    class d implements l {
        d() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.datepicker.h.l
        public void a(long j10) {
            if (h.this.f25341r.y().w2(j10)) {
                h.this.f25340q.w3(j10);
                Iterator<o<S>> it = h.this.f25408o.iterator();
                while (it.hasNext()) {
                    it.next().a(h.this.f25340q.d3());
                }
                h.this.f25346w.getAdapter().i();
                if (h.this.f25345v != null) {
                    h.this.f25345v.getAdapter().i();
                }
            }
        }
    }

    /* JADX INFO: compiled from: MaterialCalendar.java */
    class e extends RecyclerView.o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Calendar f25353a = s.k();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Calendar f25354b = s.k();

        e() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.o
        public void g(Canvas canvas, RecyclerView recyclerView, RecyclerView.b0 b0Var) {
            if ((recyclerView.getAdapter() instanceof t) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                t tVar = (t) recyclerView.getAdapter();
                GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
                for (androidx.core.util.d<Long, Long> dVar : h.this.f25340q.t0()) {
                    Long l10 = dVar.f2381a;
                    if (l10 != null && dVar.f2382b != null) {
                        this.f25353a.setTimeInMillis(l10.longValue());
                        this.f25354b.setTimeInMillis(dVar.f2382b.longValue());
                        int iX = tVar.x(this.f25353a.get(1));
                        int iX2 = tVar.x(this.f25354b.get(1));
                        View viewC = gridLayoutManager.C(iX);
                        View viewC2 = gridLayoutManager.C(iX2);
                        int iT2 = iX / gridLayoutManager.T2();
                        int iT22 = iX2 / gridLayoutManager.T2();
                        int i10 = iT2;
                        while (i10 <= iT22) {
                            if (gridLayoutManager.C(gridLayoutManager.T2() * i10) != null) {
                                canvas.drawRect(i10 == iT2 ? viewC.getLeft() + (viewC.getWidth() / 2) : 0, r9.getTop() + h.this.f25344u.f25328d.c(), i10 == iT22 ? viewC2.getLeft() + (viewC2.getWidth() / 2) : recyclerView.getWidth(), r9.getBottom() - h.this.f25344u.f25328d.b(), h.this.f25344u.f25332h);
                            }
                            i10++;
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: compiled from: MaterialCalendar.java */
    class f extends androidx.core.view.a {
        f() {
        }

        @Override // androidx.core.view.a
        public void g(View view, androidx.core.view.accessibility.c cVar) {
            super.g(view, cVar);
            cVar.i0(h.this.f25348y.getVisibility() == 0 ? h.this.getString(y3.i.f36756o) : h.this.getString(y3.i.f36754m));
        }
    }

    /* JADX INFO: compiled from: MaterialCalendar.java */
    class g extends RecyclerView.u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f25357a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MaterialButton f25358b;

        g(n nVar, MaterialButton materialButton) {
            this.f25357a = nVar;
            this.f25358b = materialButton;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.u
        public void a(RecyclerView recyclerView, int i10) {
            if (i10 == 0) {
                CharSequence text = this.f25358b.getText();
                if (Build.VERSION.SDK_INT >= 16) {
                    recyclerView.announceForAccessibility(text);
                } else {
                    recyclerView.sendAccessibilityEvent(2048);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.u
        public void b(RecyclerView recyclerView, int i10, int i11) {
            int iY1 = i10 < 0 ? h.this.E().Y1() : h.this.E().a2();
            h.this.f25342s = this.f25357a.w(iY1);
            this.f25358b.setText(this.f25357a.x(iY1));
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.h$h, reason: collision with other inner class name */
    /* JADX INFO: compiled from: MaterialCalendar.java */
    class ViewOnClickListenerC0117h implements View.OnClickListener {
        ViewOnClickListenerC0117h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h.this.J();
        }
    }

    /* JADX INFO: compiled from: MaterialCalendar.java */
    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ n f25361o;

        i(n nVar) {
            this.f25361o = nVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iY1 = h.this.E().Y1() + 1;
            if (iY1 < h.this.f25346w.getAdapter().d()) {
                h.this.H(this.f25361o.w(iY1));
            }
        }
    }

    /* JADX INFO: compiled from: MaterialCalendar.java */
    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ n f25363o;

        j(n nVar) {
            this.f25363o = nVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iA2 = h.this.E().a2() - 1;
            if (iA2 >= 0) {
                h.this.H(this.f25363o.w(iA2));
            }
        }
    }

    /* JADX INFO: compiled from: MaterialCalendar.java */
    enum k {
        DAY,
        YEAR
    }

    /* JADX INFO: compiled from: MaterialCalendar.java */
    interface l {
        void a(long j10);
    }

    static int D(Context context) {
        return context.getResources().getDimensionPixelSize(y3.d.f36687y);
    }

    public static <T> h<T> F(com.google.android.material.datepicker.d<T> dVar, int i10, com.google.android.material.datepicker.a aVar) {
        h<T> hVar = new h<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i10);
        bundle.putParcelable("GRID_SELECTOR_KEY", dVar);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", aVar);
        bundle.putParcelable("CURRENT_MONTH_KEY", aVar.B());
        hVar.setArguments(bundle);
        return hVar;
    }

    private void G(int i10) {
        this.f25346w.post(new a(i10));
    }

    private void x(View view, n nVar) {
        MaterialButton materialButton = (MaterialButton) view.findViewById(y3.f.f36713r);
        materialButton.setTag(C);
        a0.q0(materialButton, new f());
        MaterialButton materialButton2 = (MaterialButton) view.findViewById(y3.f.f36715t);
        materialButton2.setTag(A);
        MaterialButton materialButton3 = (MaterialButton) view.findViewById(y3.f.f36714s);
        materialButton3.setTag(B);
        this.f25347x = view.findViewById(y3.f.A);
        this.f25348y = view.findViewById(y3.f.f36717v);
        I(k.DAY);
        materialButton.setText(this.f25342s.X(view.getContext()));
        this.f25346w.k(new g(nVar, materialButton));
        materialButton.setOnClickListener(new ViewOnClickListenerC0117h());
        materialButton3.setOnClickListener(new i(nVar));
        materialButton2.setOnClickListener(new j(nVar));
    }

    private RecyclerView.o y() {
        return new e();
    }

    com.google.android.material.datepicker.c A() {
        return this.f25344u;
    }

    com.google.android.material.datepicker.l B() {
        return this.f25342s;
    }

    public com.google.android.material.datepicker.d<S> C() {
        return this.f25340q;
    }

    LinearLayoutManager E() {
        return (LinearLayoutManager) this.f25346w.getLayoutManager();
    }

    void H(com.google.android.material.datepicker.l lVar) {
        n nVar = (n) this.f25346w.getAdapter();
        int iY = nVar.y(lVar);
        int iY2 = iY - nVar.y(this.f25342s);
        boolean z10 = Math.abs(iY2) > 3;
        boolean z11 = iY2 > 0;
        this.f25342s = lVar;
        if (z10 && z11) {
            this.f25346w.h1(iY - 3);
            G(iY);
        } else if (!z10) {
            G(iY);
        } else {
            this.f25346w.h1(iY + 3);
            G(iY);
        }
    }

    void I(k kVar) {
        this.f25343t = kVar;
        if (kVar == k.YEAR) {
            this.f25345v.getLayoutManager().x1(((t) this.f25345v.getAdapter()).x(this.f25342s.f25390q));
            this.f25347x.setVisibility(0);
            this.f25348y.setVisibility(8);
        } else if (kVar == k.DAY) {
            this.f25347x.setVisibility(8);
            this.f25348y.setVisibility(0);
            H(this.f25342s);
        }
    }

    void J() {
        k kVar = this.f25343t;
        k kVar2 = k.YEAR;
        if (kVar == kVar2) {
            I(k.DAY);
        } else if (kVar == k.DAY) {
            I(kVar2);
        }
    }

    @Override // com.google.android.material.datepicker.p
    public boolean o(o<S> oVar) {
        return super.o(oVar);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f25339p = bundle.getInt("THEME_RES_ID_KEY");
        this.f25340q = (com.google.android.material.datepicker.d) bundle.getParcelable("GRID_SELECTOR_KEY");
        this.f25341r = (com.google.android.material.datepicker.a) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f25342s = (com.google.android.material.datepicker.l) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i10;
        int i11;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f25339p);
        this.f25344u = new com.google.android.material.datepicker.c(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        com.google.android.material.datepicker.l lVarC = this.f25341r.C();
        if (com.google.android.material.datepicker.i.D(contextThemeWrapper)) {
            i10 = y3.h.f36738o;
            i11 = 1;
        } else {
            i10 = y3.h.f36736m;
            i11 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i10, viewGroup, false);
        GridView gridView = (GridView) viewInflate.findViewById(y3.f.f36718w);
        a0.q0(gridView, new b());
        gridView.setAdapter((ListAdapter) new com.google.android.material.datepicker.g());
        gridView.setNumColumns(lVarC.f25391r);
        gridView.setEnabled(false);
        this.f25346w = (RecyclerView) viewInflate.findViewById(y3.f.f36721z);
        this.f25346w.setLayoutManager(new c(getContext(), i11, false, i11));
        this.f25346w.setTag(f25338z);
        n nVar = new n(contextThemeWrapper, this.f25340q, this.f25341r, new d());
        this.f25346w.setAdapter(nVar);
        int integer = contextThemeWrapper.getResources().getInteger(y3.g.f36723b);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(y3.f.A);
        this.f25345v = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f25345v.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.f25345v.setAdapter(new t(this));
            this.f25345v.h(y());
        }
        if (viewInflate.findViewById(y3.f.f36713r) != null) {
            x(viewInflate, nVar);
        }
        if (!com.google.android.material.datepicker.i.D(contextThemeWrapper)) {
            new androidx.recyclerview.widget.j().b(this.f25346w);
        }
        this.f25346w.h1(nVar.y(this.f25342s));
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f25339p);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.f25340q);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f25341r);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.f25342s);
    }

    com.google.android.material.datepicker.a z() {
        return this.f25341r;
    }
}
