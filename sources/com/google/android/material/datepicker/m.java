package com.google.android.material.datepicker;

import android.content.Context;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: MonthAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
class m extends BaseAdapter {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    static final int f25395t = s.k().getMaximum(4);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final l f25396o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final d<?> f25397p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Collection<Long> f25398q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    c f25399r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final a f25400s;

    m(l lVar, d<?> dVar, a aVar) {
        this.f25396o = lVar;
        this.f25397p = dVar;
        this.f25400s = aVar;
        this.f25398q = dVar.S2();
    }

    private void e(Context context) {
        if (this.f25399r == null) {
            this.f25399r = new c(context);
        }
    }

    private boolean h(long j10) {
        Iterator<Long> it = this.f25397p.S2().iterator();
        while (it.hasNext()) {
            if (s.a(j10) == s.a(it.next().longValue())) {
                return true;
            }
        }
        return false;
    }

    private void k(TextView textView, long j10) {
        b bVar;
        if (textView == null) {
            return;
        }
        if (this.f25400s.y().w2(j10)) {
            textView.setEnabled(true);
            bVar = h(j10) ? this.f25399r.f25326b : s.i().getTimeInMillis() == j10 ? this.f25399r.f25327c : this.f25399r.f25325a;
        } else {
            textView.setEnabled(false);
            bVar = this.f25399r.f25331g;
        }
        bVar.d(textView);
    }

    private void l(MaterialCalendarGridView materialCalendarGridView, long j10) {
        if (l.N(j10).equals(this.f25396o)) {
            k((TextView) materialCalendarGridView.getChildAt(materialCalendarGridView.getAdapter().a(this.f25396o.W(j10)) - materialCalendarGridView.getFirstVisiblePosition()), j10);
        }
    }

    int a(int i10) {
        return b() + (i10 - 1);
    }

    int b() {
        return this.f25396o.S();
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Long getItem(int i10) {
        if (i10 < this.f25396o.S() || i10 > i()) {
            return null;
        }
        return Long.valueOf(this.f25396o.V(j(i10)));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0075  */
    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.widget.TextView getView(int r6, android.view.View r7, android.view.ViewGroup r8) {
        /*
            r5 = this;
            android.content.Context r0 = r8.getContext()
            r5.e(r0)
            r0 = r7
            android.widget.TextView r0 = (android.widget.TextView) r0
            r1 = 0
            if (r7 != 0) goto L1e
            android.content.Context r7 = r8.getContext()
            android.view.LayoutInflater r7 = android.view.LayoutInflater.from(r7)
            int r0 = y3.h.f36734k
            android.view.View r7 = r7.inflate(r0, r8, r1)
            r0 = r7
            android.widget.TextView r0 = (android.widget.TextView) r0
        L1e:
            int r7 = r5.b()
            int r7 = r6 - r7
            if (r7 < 0) goto L75
            com.google.android.material.datepicker.l r8 = r5.f25396o
            int r2 = r8.f25392s
            if (r7 < r2) goto L2d
            goto L75
        L2d:
            r2 = 1
            int r7 = r7 + r2
            r0.setTag(r8)
            android.content.res.Resources r8 = r0.getResources()
            android.content.res.Configuration r8 = r8.getConfiguration()
            java.util.Locale r8 = r8.locale
            java.lang.Object[] r3 = new java.lang.Object[r2]
            java.lang.Integer r4 = java.lang.Integer.valueOf(r7)
            r3[r1] = r4
            java.lang.String r4 = "%d"
            java.lang.String r8 = java.lang.String.format(r8, r4, r3)
            r0.setText(r8)
            com.google.android.material.datepicker.l r8 = r5.f25396o
            long r7 = r8.V(r7)
            com.google.android.material.datepicker.l r3 = r5.f25396o
            int r3 = r3.f25390q
            com.google.android.material.datepicker.l r4 = com.google.android.material.datepicker.l.Q()
            int r4 = r4.f25390q
            if (r3 != r4) goto L67
            java.lang.String r7 = com.google.android.material.datepicker.e.a(r7)
            r0.setContentDescription(r7)
            goto L6e
        L67:
            java.lang.String r7 = com.google.android.material.datepicker.e.d(r7)
            r0.setContentDescription(r7)
        L6e:
            r0.setVisibility(r1)
            r0.setEnabled(r2)
            goto L7d
        L75:
            r7 = 8
            r0.setVisibility(r7)
            r0.setEnabled(r1)
        L7d:
            java.lang.Long r6 = r5.getItem(r6)
            if (r6 != 0) goto L84
            return r0
        L84:
            long r6 = r6.longValue()
            r5.k(r0, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.m.getView(int, android.view.View, android.view.ViewGroup):android.widget.TextView");
    }

    boolean f(int i10) {
        return i10 % this.f25396o.f25391r == 0;
    }

    boolean g(int i10) {
        return (i10 + 1) % this.f25396o.f25391r == 0;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f25396o.f25392s + b();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10 / this.f25396o.f25391r;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    int i() {
        return (this.f25396o.S() + this.f25396o.f25392s) - 1;
    }

    int j(int i10) {
        return (i10 - this.f25396o.S()) + 1;
    }

    public void m(MaterialCalendarGridView materialCalendarGridView) {
        Iterator<Long> it = this.f25398q.iterator();
        while (it.hasNext()) {
            l(materialCalendarGridView, it.next().longValue());
        }
        d<?> dVar = this.f25397p;
        if (dVar != null) {
            Iterator<Long> it2 = dVar.S2().iterator();
            while (it2.hasNext()) {
                l(materialCalendarGridView, it2.next().longValue());
            }
            this.f25398q = this.f25397p.S2();
        }
    }

    boolean n(int i10) {
        return i10 >= b() && i10 <= i();
    }
}
