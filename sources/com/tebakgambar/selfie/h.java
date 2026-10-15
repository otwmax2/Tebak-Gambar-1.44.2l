package com.tebakgambar.selfie;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.k;
import androidx.databinding.n;
import androidx.databinding.o;
import androidx.recyclerview.widget.RecyclerView;
import com.tebakgambar.R;
import com.tebakgambar.model.Level;
import o8.g0;
import o8.u0;
import v2.j;

/* JADX INFO: compiled from: SelfieFrameChooserAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public class h extends RecyclerView.h<RecyclerView.e0> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private e f27160d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f27161e;

    /* JADX INFO: compiled from: SelfieFrameChooserAdapter.java */
    public interface a {
        void a();

        void r(Level level);

        void z();
    }

    /* JADX INFO: compiled from: SelfieFrameChooserAdapter.java */
    public class b extends RecyclerView.e0 implements View.OnClickListener {
        u0 I;

        b(View view) {
            super(view);
            u0 u0Var = (u0) androidx.databinding.g.a(view);
            this.I = u0Var;
            u0Var.R.setOnClickListener(this);
            this.I.S.setOnClickListener(this);
            this.I.P.setVisibility(8);
            this.I.O.setVisibility(8);
            this.I.T.setVisibility(0);
            this.I.S.setVisibility(8);
            this.I.T.setText(R.string.frame_coming_soon);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (h.this.f27161e != null) {
                h.this.f27161e.a();
            }
        }
    }

    /* JADX INFO: compiled from: SelfieFrameChooserAdapter.java */
    public class c extends RecyclerView.e0 implements View.OnClickListener {
        Level I;
        u0 J;

        /* JADX INFO: compiled from: SelfieFrameChooserAdapter.java */
        class a implements t2.f<Integer, l2.b> {
            a() {
            }

            @Override // t2.f
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public boolean b(Exception exc, Integer num, j<l2.b> jVar, boolean z10) {
                c.this.J.O.setVisibility(8);
                c.this.J.T.setVisibility(0);
                return false;
            }

            @Override // t2.f
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public boolean a(l2.b bVar, Integer num, j<l2.b> jVar, boolean z10, boolean z11) {
                c.this.J.O.setVisibility(0);
                c.this.J.P.setVisibility(0);
                c.this.J.T.setVisibility(8);
                return false;
            }
        }

        /* JADX INFO: compiled from: SelfieFrameChooserAdapter.java */
        class b implements t2.f<Integer, l2.b> {
            b() {
            }

            @Override // t2.f
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public boolean b(Exception exc, Integer num, j<l2.b> jVar, boolean z10) {
                c.this.J.O.setVisibility(0);
                c.this.J.P.setVisibility(0);
                c.this.J.T.setVisibility(8);
                return false;
            }

            @Override // t2.f
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public boolean a(l2.b bVar, Integer num, j<l2.b> jVar, boolean z10, boolean z11) {
                c.this.J.O.setVisibility(0);
                c.this.J.P.setVisibility(0);
                c.this.J.T.setVisibility(8);
                return false;
            }
        }

        /* JADX INFO: renamed from: com.tebakgambar.selfie.h$c$c, reason: collision with other inner class name */
        /* JADX INFO: compiled from: SelfieFrameChooserAdapter.java */
        class C0134c implements t2.f<String, l2.b> {
            C0134c() {
            }

            @Override // t2.f
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public boolean b(Exception exc, String str, j<l2.b> jVar, boolean z10) {
                c.this.J.O.setVisibility(0);
                c.this.J.P.setVisibility(0);
                c.this.J.T.setVisibility(8);
                return false;
            }

            @Override // t2.f
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public boolean a(l2.b bVar, String str, j<l2.b> jVar, boolean z10, boolean z11) {
                c.this.J.O.setVisibility(0);
                c.this.J.P.setVisibility(0);
                c.this.J.T.setVisibility(8);
                return false;
            }
        }

        c(View view) {
            super(view);
            u0 u0Var = (u0) androidx.databinding.g.a(view);
            this.J = u0Var;
            u0Var.R.setOnClickListener(this);
            this.J.S.setOnClickListener(this);
            this.J.O.setVisibility(8);
            this.J.T.setVisibility(0);
            this.J.S.setVisibility(0);
            this.J.P.setVisibility(8);
            this.J.T.setText(R.string.label_loading);
        }

        void W() {
        }

        void X(Level level) {
            this.I = level;
            if (level.id == 1) {
                this.J.S.setText(R.string.level_1_selfie_message);
            } else {
                this.J.S.setText(this.J.S().getContext().getResources().getString(R.string.label_frame_item) + " " + level.id);
            }
            this.J.P.setVisibility(8);
            this.J.O.setVisibility(8);
            this.J.T.setVisibility(0);
            int iY = h.this.f27160d.f27165a.y();
            int i10 = level.id;
            if (iY < i10 && i10 != 1) {
                v1.g.v(this.J.S().getContext()).w(Integer.valueOf(R.drawable.ic_frame_locked)).N(new a()).p(this.J.O);
            } else if (i10 == 1) {
                v1.g.v(this.J.S().getContext()).w(Integer.valueOf(level.getFrameResource(this.J.S().getContext()))).Q(R.drawable.ic_transparent).J(R.drawable.frame_offline).j(b2.b.ALL).N(new b()).p(this.J.O);
            } else {
                v1.g.v(this.J.S().getContext()).x(level.frameUrl).Q(R.drawable.ic_transparent).J(R.drawable.frame_offline).j(b2.b.ALL).N(new C0134c()).p(this.J.O);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (h.this.f27161e == null || this.I.id > h.this.f27160d.f27165a.y()) {
                return;
            }
            h.this.f27161e.r(this.I);
        }
    }

    /* JADX INFO: compiled from: SelfieFrameChooserAdapter.java */
    public class d extends RecyclerView.e0 implements View.OnClickListener {
        g0 I;

        d(View view) {
            super(view);
            g0 g0Var = (g0) androidx.databinding.g.a(view);
            this.I = g0Var;
            g0Var.O.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (h.this.f27161e != null) {
                h.this.f27161e.z();
            }
        }
    }

    /* JADX INFO: compiled from: SelfieFrameChooserAdapter.java */
    static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        n f27165a = new n();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        o<Level> f27166b = new k();

        e() {
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int d() {
        return this.f27160d.f27166b.size() + 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int f(int i10) {
        if (i10 == 0) {
            return 0;
        }
        return i10 == d() - 1 ? 1 : 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void k(RecyclerView.e0 e0Var, int i10) {
        if (e0Var instanceof c) {
            ((c) e0Var).X(this.f27160d.f27166b.get(i10 - 1));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public RecyclerView.e0 m(ViewGroup viewGroup, int i10) {
        if (i10 == 0) {
            return new d(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.header_selfie_frame_chooser, viewGroup, false));
        }
        if (i10 == 1) {
            return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.row_item_frame, viewGroup, false));
        }
        if (i10 == 2) {
            return new c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.row_item_frame, viewGroup, false));
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void r(RecyclerView.e0 e0Var) {
        super.r(e0Var);
        if (e0Var instanceof c) {
            ((c) e0Var).W();
        }
    }

    public void x(a aVar) {
        this.f27161e = aVar;
    }

    public void y(e eVar) {
        this.f27160d = eVar;
        i();
    }
}
