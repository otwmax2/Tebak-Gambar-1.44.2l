package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.datepicker.h;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: YearGridAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
class t extends RecyclerView.h<b> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final h<?> f25414d;

    /* JADX INFO: compiled from: YearGridAdapter.java */
    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ int f25415o;

        a(int i10) {
            this.f25415o = i10;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t.this.f25414d.H(t.this.f25414d.z().x(l.L(this.f25415o, t.this.f25414d.B().f25389p)));
            t.this.f25414d.I(h.k.DAY);
        }
    }

    /* JADX INFO: compiled from: YearGridAdapter.java */
    public static class b extends RecyclerView.e0 {
        final TextView I;

        b(TextView textView) {
            super(textView);
            this.I = textView;
        }
    }

    t(h<?> hVar) {
        this.f25414d = hVar;
    }

    private View.OnClickListener w(int i10) {
        return new a(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public b m(ViewGroup viewGroup, int i10) {
        return new b((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(y3.h.f36739p, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int d() {
        return this.f25414d.z().D();
    }

    int x(int i10) {
        return i10 - this.f25414d.z().C().f25390q;
    }

    int y(int i10) {
        return this.f25414d.z().C().f25390q + i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void k(b bVar, int i10) {
        int iY = y(i10);
        String string = bVar.I.getContext().getString(y3.i.f36752k);
        bVar.I.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(iY)));
        bVar.I.setContentDescription(String.format(string, Integer.valueOf(iY)));
        c cVarA = this.f25414d.A();
        Calendar calendarI = s.i();
        com.google.android.material.datepicker.b bVar2 = calendarI.get(1) == iY ? cVarA.f25330f : cVarA.f25328d;
        Iterator<Long> it = this.f25414d.C().S2().iterator();
        while (it.hasNext()) {
            calendarI.setTimeInMillis(it.next().longValue());
            if (calendarI.get(1) == iY) {
                bVar2 = cVarA.f25329e;
            }
        }
        bVar2.d(bVar.I);
        bVar.I.setOnClickListener(w(iY));
    }
}
