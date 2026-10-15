package l8;

import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RatingBar;
import android.widget.Toast;
import androidx.databinding.g;
import androidx.lifecycle.k0;
import androidx.lifecycle.u;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.tebakgambar.R;
import com.tebakgambar.model.enums.RatingType;
import com.vungle.mediation.BuildConfig;
import g5.s;
import o8.q0;

/* JADX INFO: compiled from: TGInAppReviewDialogFragment.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends com.google.android.material.bottomsheet.b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    q0 f32049p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    e f32050q;

    /* JADX INFO: compiled from: TGInAppReviewDialogFragment.java */
    class a extends BottomSheetBehavior.f {
        a() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void a(View view, float f10) {
            if (f10 == -1.0f) {
                d.this.f32050q.J();
            }
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void b(View view, int i10) {
            if (i10 == 5) {
                d.this.f32050q.K();
            }
        }
    }

    private void A(Activity activity) {
        Toast.makeText(activity, "Mengirimkan email...", 0).show();
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("mailto:info@tebakgambar.com").buildUpon().appendQueryParameter("subject", "Masukan untuk Tebak Gambar").appendQueryParameter("to", "info@tebakgambar.com").appendQueryParameter(SDKConstants.PARAM_A2U_BODY, w()).build());
        intent.putExtra("android.intent.extra.EMAIL", "info@tebakgambar.com");
        startActivity(Intent.createChooser(intent, "Mengirimkan email..."));
    }

    private void B(Dialog dialog) {
        if (dialog instanceof com.google.android.material.bottomsheet.a) {
            com.google.android.material.bottomsheet.a aVar = (com.google.android.material.bottomsheet.a) dialog;
            aVar.j().q0(3);
            aVar.j().M(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(boolean z10) {
        dismiss();
    }

    private String w() {
        s sVarP = this.f32050q.p();
        String strV3 = (sVarP == null || sVarP.V3() == null) ? "guest" : sVarP.V3();
        PackageInfo packageInfo = null;
        try {
            packageInfo = getActivity().getPackageManager().getPackageInfo(getActivity().getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
        }
        return "Menurutmu, apa yang masih bisa kami tingkatkan?\nRating saya: " + Integer.toString(this.f32050q.F()) + "\nVersi perangkat: " + Build.MODEL + ", version: " + Build.VERSION.SDK_INT + "\nVersi apps: " + packageInfo.versionName + "\nEmail: " + strV3 + "\n---\n(Tulis disini)";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(String str) {
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            dismiss();
            return;
        }
        if (this.f32050q.F() > 3) {
            String packageName = activity.getPackageName();
            try {
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + packageName)));
            } catch (ActivityNotFoundException unused) {
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + packageName)));
            }
        } else {
            A(activity);
        }
        this.f32050q.N();
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(RatingBar ratingBar, float f10, boolean z10) {
        int i10 = (int) f10;
        this.f32049p.u0().M(i10);
        this.f32049p.u0().E.z(i10 != 0 ? RatingType.castIntToEnum(i10).description() : BuildConfig.FLAVOR);
    }

    public static d z(h8.a aVar) {
        d dVar = new d();
        Bundle bundle = new Bundle();
        bundle.putParcelable("TGInAppReviewDialogFragment", aVar);
        dVar.setArguments(bundle);
        return dVar;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        setCancelable(this.f32050q.L);
        this.f32050q.I();
    }

    @Override // androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        h8.a aVar;
        super.onCreate(bundle);
        this.f32050q = (e) k0.a(this).a(e.class);
        if (getArguments() != null && (aVar = (h8.a) getArguments().getParcelable("TGInAppReviewDialogFragment")) != null) {
            this.f32050q.H(aVar);
        }
        this.f32050q.J.h(this, new u() { // from class: l8.b
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f32047a.v(((Boolean) obj).booleanValue());
            }
        });
        this.f32050q.K.h(this, new u() { // from class: l8.c
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f32048a.x((String) obj);
            }
        });
    }

    @Override // com.google.android.material.bottomsheet.b, androidx.appcompat.app.k, androidx.fragment.app.d
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        B(dialogOnCreateDialog);
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        q0 q0Var = (q0) g.h(layoutInflater, R.layout.layout_dialog_tg_in_app_review, viewGroup, false);
        this.f32049p = q0Var;
        q0Var.w0(this.f32050q);
        this.f32049p.u0().E.z(RatingType.castIntToEnum(this.f32050q.F()).description());
        this.f32049p.S.setOnRatingBarChangeListener(new RatingBar.OnRatingBarChangeListener() { // from class: l8.a
            @Override // android.widget.RatingBar.OnRatingBarChangeListener
            public final void onRatingChanged(RatingBar ratingBar, float f10, boolean z10) {
                this.f32046a.y(ratingBar, f10, z10);
            }
        });
        return this.f32049p.S();
    }
}
