package com.tebakgambar.levelselection;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.j;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.tebakgambar.R;
import com.tebakgambar.TGApplication;
import com.tebakgambar.model.BaseEvent;
import com.tebakgambar.model.ComingSoon;
import com.tebakgambar.model.Level;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import o8.c1;
import o8.w0;
import o8.y0;

/* JADX INFO: compiled from: LevelSelectionAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public class r extends RecyclerView.h<RecyclerView.e0> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private j f26984d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f26985e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<NativeAdView> f26987g = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Handler f26986f = new Handler();

    /* JADX INFO: compiled from: LevelSelectionAdapter.java */
    class a extends j.a {
        a() {
        }

        @Override // androidx.databinding.j.a
        public void d(androidx.databinding.j jVar, int i10) {
            r.this.y();
        }
    }

    /* JADX INFO: compiled from: LevelSelectionAdapter.java */
    class b extends j.a {
        b() {
        }

        @Override // androidx.databinding.j.a
        public void d(androidx.databinding.j jVar, int i10) {
            r.this.y();
        }
    }

    /* JADX INFO: compiled from: LevelSelectionAdapter.java */
    public interface c {
        void a();

        void b(Level level);

        void o(BaseEvent baseEvent);

        void p(Level level);

        void u();
    }

    /* JADX INFO: compiled from: LevelSelectionAdapter.java */
    class d extends RecyclerView.e0 implements View.OnClickListener {
        y0 I;
        BaseEvent J;

        d(View view) {
            super(view);
            y0 y0Var = (y0) androidx.databinding.g.a(view);
            this.I = y0Var;
            y0Var.V.setVisibility(0);
            this.I.W.setVisibility(8);
            this.I.X.setVisibility(8);
            this.I.P.setVisibility(8);
            view.setOnClickListener(this);
        }

        void W(BaseEvent baseEvent) {
            this.J = baseEvent;
            this.I.f33299c0.setText(baseEvent.title_event);
            this.I.V.setBackgroundColor(baseEvent.getColor());
            if (TextUtils.isEmpty(baseEvent.sub_title_event)) {
                this.I.f33298b0.setVisibility(8);
            } else {
                this.I.f33298b0.setVisibility(0);
                this.I.f33298b0.setText(baseEvent.sub_title_event);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (r.this.f26985e != null) {
                r.this.f26985e.o(this.J);
            }
        }
    }

    /* JADX INFO: compiled from: LevelSelectionAdapter.java */
    class e extends RecyclerView.e0 {
        y0 I;

        public e(View view) {
            super(view);
            y0 y0Var = (y0) androidx.databinding.g.a(view);
            this.I = y0Var;
            y0Var.V.setVisibility(0);
            this.I.W.setVisibility(8);
            this.I.X.setVisibility(8);
            this.I.P.setVisibility(8);
            this.I.f33299c0.setText(R.string.level_coming_soon_title);
            this.I.f33298b0.setVisibility(0);
            this.I.f33298b0.setText(R.string.level_coming_soon_message);
            this.I.V.setBackgroundColor(Color.parseColor("#03877A"));
            this.I.f33299c0.setTextColor(Color.parseColor("#feff00"));
            this.I.f33298b0.setTextColor(Color.parseColor("#feff00"));
            view.setOnClickListener(new View.OnClickListener() { // from class: com.tebakgambar.levelselection.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f26992o.X(view2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void X(View view) {
            if (r.this.f26985e != null) {
                r.this.f26985e.a();
            }
        }
    }

    /* JADX INFO: compiled from: LevelSelectionAdapter.java */
    class f extends RecyclerView.e0 implements View.OnClickListener {
        y0 I;
        Level J;

        f(View view) {
            super(view);
            this.I = (y0) androidx.databinding.g.a(view);
            view.setOnClickListener(this);
        }

        void W(Level level) {
            this.J = level;
            this.I.X.setVisibility(0);
            this.I.W.setVisibility(8);
            this.I.V.setVisibility(8);
            SpannableString spannableString = new SpannableString(level.title + "  ");
            if (level.isLocked()) {
                this.I.S().setAlpha(0.5f);
                Drawable drawableF = androidx.core.content.a.f(this.I.S().getContext(), R.drawable.ic_gembok_mini);
                drawableF.setBounds(0, 0, drawableF.getIntrinsicWidth(), drawableF.getIntrinsicHeight());
                spannableString.setSpan(new ImageSpan(drawableF, 0), level.title.length() + 1, level.title.length() + 2, 17);
            } else {
                this.I.S().setAlpha(1.0f);
            }
            if (level.isNew()) {
                this.I.P.setImageResource(R.drawable.ic_ribbon);
                this.I.P.setVisibility(0);
            } else {
                this.I.P.setImageResource(R.drawable.ic_ribbon_off);
                this.I.P.setVisibility(0);
            }
            if (level.isSpecial()) {
                this.I.Y.setVisibility(8);
                this.I.Q.setVisibility(0);
                this.I.Z.setText(spannableString);
                this.I.f33297a0.setText(level.subtitle);
                this.I.Z.setTextColor(level.getColor());
                this.I.f33297a0.setTextColor(level.getColor());
            } else {
                this.I.Q.setVisibility(8);
                this.I.Y.setVisibility(0);
                this.I.Y.setText(spannableString);
                this.I.Y.setTextColor(level.getColor());
            }
            TGApplication tGApplicationD = TGApplication.d();
            int backgroundColor = level.getBackgroundColor(tGApplicationD);
            this.I.V.setBackgroundColor(backgroundColor);
            this.I.X.setBackgroundColor(backgroundColor);
            this.I.W.setBackgroundColor(backgroundColor);
            v1.g.v(tGApplicationD).x(level.iconUrl).Q(level.getDefaultIconResource(tGApplicationD)).J(level.getDefaultIconResource(tGApplicationD)).p(this.I.O);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (r.this.f26985e != null) {
                r.this.f26985e.b(this.J);
            }
        }
    }

    /* JADX INFO: compiled from: LevelSelectionAdapter.java */
    class g extends RecyclerView.e0 {
        w0 I;

        g(View view) {
            super(view);
            w0 w0Var = (w0) androidx.databinding.g.a(view);
            this.I = w0Var;
            w0Var.S.setText(R.string.placeholder_ad_message);
            this.I.P.setText(R.string.open);
            this.I.P.setOnClickListener(new View.OnClickListener() { // from class: com.tebakgambar.levelselection.t
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f26993o.X(view2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void X(View view) {
            if (r.this.f26985e != null) {
                r.this.f26985e.u();
            }
        }
    }

    /* JADX INFO: compiled from: LevelSelectionAdapter.java */
    class h extends RecyclerView.e0 {
        w0 I;

        public h(View view) {
            super(view);
            w0 w0Var = (w0) androidx.databinding.g.a(view);
            this.I = w0Var;
            w0Var.O.setHeadlineView(w0Var.S);
            w0 w0Var2 = this.I;
            w0Var2.O.setCallToActionView(w0Var2.P);
        }

        void W(NativeAd nativeAd) {
            this.I.S.setText(nativeAd.c());
            this.I.P.setText(nativeAd.b());
            this.I.O.setNativeAd(nativeAd);
        }
    }

    /* JADX INFO: compiled from: LevelSelectionAdapter.java */
    class i extends RecyclerView.e0 implements View.OnClickListener {
        c1 I;
        Level J;

        public i(View view) {
            super(view);
            this.I = (c1) androidx.databinding.g.a(view);
            view.setOnClickListener(this);
        }

        public void W(Level level) {
            this.J = level;
            this.I.S.setText(level.title);
            ComingSoon comingSoon = level.comingSoon;
            if (comingSoon != null) {
                this.I.R.setBackgroundResource(comingSoon.displayReleaseBackground());
                this.I.R.setText(level.comingSoon.displayReleaseMessage());
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (r.this.f26985e != null) {
                r.this.f26985e.p(this.J);
            }
        }
    }

    /* JADX INFO: compiled from: LevelSelectionAdapter.java */
    public static class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        androidx.databinding.n f26990a = new androidx.databinding.n();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        androidx.databinding.m<List<Object>> f26991b = new androidx.databinding.m<>();

        /* JADX INFO: compiled from: LevelSelectionAdapter.java */
        static class a {
            a() {
            }
        }

        /* JADX INFO: compiled from: LevelSelectionAdapter.java */
        static class b {
            b() {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        this.f26986f.post(new Runnable() { // from class: com.tebakgambar.levelselection.q
            @Override // java.lang.Runnable
            public final void run() {
                this.f26983o.i();
            }
        });
    }

    public void A(j jVar) {
        this.f26984d = jVar;
        jVar.f26991b.h(new a());
        this.f26984d.f26990a.h(new b());
        i();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int d() {
        if (this.f26984d.f26991b.y() == null) {
            return 0;
        }
        return this.f26984d.f26991b.y().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int f(int i10) {
        List<Object> listY = this.f26984d.f26991b.y();
        if (listY.get(i10) instanceof BaseEvent) {
            return 0;
        }
        if (listY.get(i10) instanceof Level) {
            return ((Level) listY.get(i10)).isUpcomingLevel() ? 4 : 1;
        }
        if (listY.get(i10) instanceof j.b) {
            return 2;
        }
        if (listY.get(i10) instanceof NativeAd) {
            return 3;
        }
        return listY.get(i10) instanceof j.a ? 5 : -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void k(RecyclerView.e0 e0Var, int i10) {
        if (e0Var instanceof d) {
            ((d) e0Var).W((BaseEvent) this.f26984d.f26991b.y().get(i10));
            return;
        }
        if (e0Var instanceof f) {
            ((f) e0Var).W((Level) this.f26984d.f26991b.y().get(i10));
        } else if (e0Var instanceof i) {
            ((i) e0Var).W((Level) this.f26984d.f26991b.y().get(i10));
        } else if (e0Var instanceof h) {
            ((h) e0Var).W((NativeAd) this.f26984d.f26991b.y().get(i10));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public RecyclerView.e0 m(ViewGroup viewGroup, int i10) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(viewGroup.getContext());
        if (i10 == 0) {
            return new d(layoutInflaterFrom.inflate(R.layout.row_item_level, viewGroup, false));
        }
        if (i10 == 1) {
            return new f(layoutInflaterFrom.inflate(R.layout.row_item_level, viewGroup, false));
        }
        if (i10 == 4) {
            return new i(layoutInflaterFrom.inflate(R.layout.row_item_upcoming_level, viewGroup, false));
        }
        if (i10 == 2) {
            return new g(layoutInflaterFrom.inflate(R.layout.row_item_level_ad_unified, viewGroup, false));
        }
        if (i10 == 3) {
            h hVar = new h(layoutInflaterFrom.inflate(R.layout.row_item_level_ad_unified, viewGroup, false));
            this.f26987g.add(hVar.I.O);
            return hVar;
        }
        if (i10 == 5) {
            return new e(layoutInflaterFrom.inflate(R.layout.row_item_level, viewGroup, false));
        }
        return null;
    }

    public void x() {
        Iterator<NativeAdView> it = this.f26987g.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    public void z(c cVar) {
        this.f26985e = cVar;
    }
}
