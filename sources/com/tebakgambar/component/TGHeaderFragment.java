package com.tebakgambar.component;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.g;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.e;
import com.tebakgambar.R;
import com.tebakgambar.component.b;
import java.text.DecimalFormat;
import o8.c0;

/* JADX INFO: loaded from: classes2.dex */
public class TGHeaderFragment extends Fragment implements b.c, View.OnClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private c0 f26849o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private m8.a f26850p = m8.a.f();

    private void o() {
        e activity = getActivity();
        if (activity != null) {
            new a(activity).show();
        }
    }

    private void p(long j10) {
        q(this.f26850p.g(), j10, this.f26850p.j());
    }

    private void q(int i10, long j10, long j11) {
        int i11;
        int i12 = R.drawable.bar_plus;
        if (i10 == 1) {
            i11 = R.drawable.hati_1;
        } else if (i10 == 2) {
            i11 = R.drawable.hati_2;
        } else if (i10 == 3) {
            i11 = R.drawable.hati_3;
        } else if (i10 == 4) {
            i11 = R.drawable.hati_4;
        } else if (i10 != 5) {
            i11 = R.drawable.hati;
        } else {
            i11 = R.drawable.hati_5;
            i12 = R.drawable.bar_full;
        }
        this.f26849o.P.setImageResource(i11);
        this.f26849o.O.setImageResource(i12);
        this.f26849o.R.setVisibility(i10 == 5 ? 8 : 0);
        if (i10 != 5) {
            DecimalFormat decimalFormat = new DecimalFormat("00");
            long j12 = (j11 - j10) / 1000;
            this.f26849o.R.setText(String.format("%s:%s ", decimalFormat.format(j12 / 60), decimalFormat.format(j12 % 60)));
        }
    }

    @Override // com.tebakgambar.component.b.c
    public void e(long j10) {
        p(j10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        b.f().e(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f26850p.g() < m8.a.f32206z) {
            o();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        c0 c0Var = (c0) g.h(layoutInflater, R.layout.fragment_header, viewGroup, false);
        this.f26849o = c0Var;
        c0Var.Q.setOnClickListener(this);
        return this.f26849o.S();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        b.f().g(this);
    }
}
