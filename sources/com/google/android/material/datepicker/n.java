package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.view.a0;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.datepicker.h;

/* JADX INFO: compiled from: MonthsPagerAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
class n extends RecyclerView.h<b> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f25401d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.google.android.material.datepicker.a f25402e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final d<?> f25403f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final h.l f25404g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f25405h;

    /* JADX INFO: compiled from: MonthsPagerAdapter.java */
    class a implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ MaterialCalendarGridView f25406o;

        a(MaterialCalendarGridView materialCalendarGridView) {
            this.f25406o = materialCalendarGridView;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
            if (this.f25406o.getAdapter().n(i10)) {
                n.this.f25404g.a(this.f25406o.getAdapter().getItem(i10).longValue());
            }
        }
    }

    /* JADX INFO: compiled from: MonthsPagerAdapter.java */
    public static class b extends RecyclerView.e0 {
        final TextView I;
        final MaterialCalendarGridView J;

        b(LinearLayout linearLayout, boolean z10) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(y3.f.f36716u);
            this.I = textView;
            a0.r0(textView, true);
            this.J = (MaterialCalendarGridView) linearLayout.findViewById(y3.f.f36712q);
            if (z10) {
                return;
            }
            textView.setVisibility(8);
        }
    }

    n(Context context, d<?> dVar, com.google.android.material.datepicker.a aVar, h.l lVar) {
        l lVarC = aVar.C();
        l lVarZ = aVar.z();
        l lVarB = aVar.B();
        if (lVarC.compareTo(lVarB) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (lVarB.compareTo(lVarZ) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        int iD = m.f25395t * h.D(context);
        int iD2 = i.D(context) ? h.D(context) : 0;
        this.f25401d = context;
        this.f25405h = iD + iD2;
        this.f25402e = aVar;
        this.f25403f = dVar;
        this.f25404g = lVar;
        t(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public b m(ViewGroup viewGroup, int i10) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(y3.h.f36737n, viewGroup, false);
        if (!i.D(viewGroup.getContext())) {
            return new b(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.q(-1, this.f25405h));
        return new b(linearLayout, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int d() {
        return this.f25402e.A();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public long e(int i10) {
        return this.f25402e.C().b0(i10).Z();
    }

    l w(int i10) {
        return this.f25402e.C().b0(i10);
    }

    CharSequence x(int i10) {
        return w(i10).X(this.f25401d);
    }

    int y(l lVar) {
        return this.f25402e.C().c0(lVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void k(b bVar, int i10) {
        l lVarB0 = this.f25402e.C().b0(i10);
        bVar.I.setText(lVarB0.X(bVar.f3727o.getContext()));
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) bVar.J.findViewById(y3.f.f36712q);
        if (materialCalendarGridView.getAdapter() == null || !lVarB0.equals(materialCalendarGridView.getAdapter().f25396o)) {
            m mVar = new m(lVarB0, this.f25403f, this.f25402e);
            materialCalendarGridView.setNumColumns(lVarB0.f25391r);
            materialCalendarGridView.setAdapter((ListAdapter) mVar);
        } else {
            materialCalendarGridView.invalidate();
            materialCalendarGridView.getAdapter().m(materialCalendarGridView);
        }
        materialCalendarGridView.setOnItemClickListener(new a(materialCalendarGridView));
    }
}
