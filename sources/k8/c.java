package k8;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.g;
import androidx.lifecycle.k0;
import androidx.lifecycle.u;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.gson.f;
import com.tebakgambar.R;
import com.tebakgambar.model.constant.RemoteConfigKey;
import com.vungle.mediation.BuildConfig;
import java.util.List;
import java.util.Random;
import o8.o0;

/* JADX INFO: compiled from: TGFreeAnswerDialogFragment.java */
/* JADX INFO: loaded from: classes2.dex */
public class c extends com.google.android.material.bottomsheet.b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    Handler f31617p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    o0 f31618q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    d f31619r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f31620s = 0;

    /* JADX INFO: compiled from: TGFreeAnswerDialogFragment.java */
    class a extends BottomSheetBehavior.f {
        a() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void a(View view, float f10) {
            if (f10 == -1.0f) {
                c.this.f31619r.I();
            }
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void b(View view, int i10) {
            if (i10 == 5) {
                c.this.f31619r.J();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(boolean z10) {
        dismiss();
    }

    private String v() {
        String strL = com.google.firebase.remoteconfig.a.i().l(RemoteConfigKey.FREE_ANSWER_BOTTOM_SHEET_DESCRIPTION);
        if (strL == null || strL.length() <= 0) {
            return BuildConfig.FLAVOR;
        }
        List list = (List) new f().k(strL, List.class);
        return list.size() == 0 ? BuildConfig.FLAVOR : (String) list.get(new Random().nextInt(list.size()));
    }

    public static c w(h8.a aVar, Handler handler) {
        c cVar = new c();
        cVar.f31617p = handler;
        Bundle bundle = new Bundle();
        bundle.putParcelable("notification", aVar);
        cVar.setArguments(bundle);
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(boolean z10) {
        if (getActivity() == null) {
            dismiss();
        } else {
            this.f31620s = 1;
            dismiss();
        }
    }

    private void y(Dialog dialog) {
        if (dialog instanceof com.google.android.material.bottomsheet.a) {
            com.google.android.material.bottomsheet.a aVar = (com.google.android.material.bottomsheet.a) dialog;
            aVar.j().q0(3);
            aVar.j().M(new a());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        setCancelable(this.f31619r.K);
        this.f31619r.H();
    }

    @Override // androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f31619r = (d) k0.a(this).a(d.class);
        if (getArguments() != null && ((h8.a) getArguments().getParcelable("notification")) != null) {
            this.f31619r.G();
        }
        this.f31619r.I.h(this, new u() { // from class: k8.a
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f31615a.u(((Boolean) obj).booleanValue());
            }
        });
        this.f31619r.J.h(this, new u() { // from class: k8.b
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f31616a.x(((Boolean) obj).booleanValue());
            }
        });
    }

    @Override // com.google.android.material.bottomsheet.b, androidx.appcompat.app.k, androidx.fragment.app.d
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        y(dialogOnCreateDialog);
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        o0 o0Var = (o0) g.h(layoutInflater, R.layout.layout_dialog_tg_free_answer, viewGroup, false);
        this.f31618q = o0Var;
        o0Var.w0(this.f31619r);
        this.f31618q.u0().D.z(v());
        return this.f31618q.S();
    }

    @Override // androidx.fragment.app.d, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        Handler handler = this.f31617p;
        if (handler == null) {
            return;
        }
        handler.sendEmptyMessage(this.f31620s);
        super.onDismiss(dialogInterface);
    }
}
