package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;

/* JADX INFO: compiled from: MaterialTextInputPicker.java */
/* JADX INFO: loaded from: classes2.dex */
public final class k<S> extends p<S> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f25384p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private d<S> f25385q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private com.google.android.material.datepicker.a f25386r;

    /* JADX INFO: compiled from: MaterialTextInputPicker.java */
    class a extends o<S> {
        a() {
        }

        @Override // com.google.android.material.datepicker.o
        public void a(S s10) {
            Iterator<o<S>> it = k.this.f25408o.iterator();
            while (it.hasNext()) {
                it.next().a(s10);
            }
        }
    }

    static <T> k<T> q(d<T> dVar, int i10, com.google.android.material.datepicker.a aVar) {
        k<T> kVar = new k<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i10);
        bundle.putParcelable("DATE_SELECTOR_KEY", dVar);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", aVar);
        kVar.setArguments(bundle);
        return kVar;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f25384p = bundle.getInt("THEME_RES_ID_KEY");
        this.f25385q = (d) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.f25386r = (com.google.android.material.datepicker.a) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.f25385q.N1(layoutInflater.cloneInContext(new ContextThemeWrapper(getContext(), this.f25384p)), viewGroup, bundle, this.f25386r, new a());
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f25384p);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f25385q);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f25386r);
    }
}
