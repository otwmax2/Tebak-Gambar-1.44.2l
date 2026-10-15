package com.tebakgambar.levelselection;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.j;
import androidx.recyclerview.widget.RecyclerView;
import com.tebakgambar.R;
import com.tebakgambar.model.QuestionSavedData;
import java.util.List;
import o8.a1;

/* JADX INFO: compiled from: QuestionSelectionAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public class c0 extends RecyclerView.h<RecyclerView.e0> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f26923d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f26924e;

    /* JADX INFO: compiled from: QuestionSelectionAdapter.java */
    class a extends j.a {
        a() {
        }

        @Override // androidx.databinding.j.a
        public void d(androidx.databinding.j jVar, int i10) {
            c0.this.i();
        }
    }

    /* JADX INFO: compiled from: QuestionSelectionAdapter.java */
    interface b {
        void s(QuestionSavedData questionSavedData);
    }

    /* JADX INFO: compiled from: QuestionSelectionAdapter.java */
    class c extends RecyclerView.e0 implements View.OnClickListener {
        QuestionSavedData I;
        a1 J;

        public c(View view) {
            super(view);
            this.J = (a1) androidx.databinding.g.a(view);
            view.setOnClickListener(this);
        }

        void W(QuestionSavedData questionSavedData) {
            this.I = questionSavedData;
            if (questionSavedData.open) {
                this.J.P.setVisibility(0);
                this.J.O.setVisibility(8);
            } else {
                this.J.P.setVisibility(8);
                this.J.O.setVisibility(0);
            }
            this.J.P.setText(String.valueOf(questionSavedData.order));
            if (questionSavedData.isCheckPoint && questionSavedData.solved) {
                this.J.P.setBackgroundResource(R.drawable.bg_circle_yellow);
            } else if (questionSavedData.isBoss) {
                this.J.P.setBackgroundResource(R.drawable.bg_circle_red);
            } else {
                this.J.P.setBackgroundResource(R.drawable.bg_circle_white);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (c0.this.f26924e == null || !this.I.open) {
                return;
            }
            c0.this.f26924e.s(this.I);
        }
    }

    /* JADX INFO: compiled from: QuestionSelectionAdapter.java */
    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public androidx.databinding.m<List<QuestionSavedData>> f26926a = new androidx.databinding.m<>();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int d() {
        if (this.f26923d.f26926a.y() == null) {
            return 0;
        }
        return this.f26923d.f26926a.y().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void k(RecyclerView.e0 e0Var, int i10) {
        if (e0Var instanceof c) {
            ((c) e0Var).W(this.f26923d.f26926a.y().get(i10));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public RecyclerView.e0 m(ViewGroup viewGroup, int i10) {
        return new c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.row_item_question, viewGroup, false));
    }

    public void w(b bVar) {
        this.f26924e = bVar;
    }

    public void x(d dVar) {
        this.f26923d = dVar;
        dVar.f26926a.h(new a());
        i();
    }
}
