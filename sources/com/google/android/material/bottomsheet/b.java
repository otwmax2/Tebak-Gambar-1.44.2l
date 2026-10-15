package com.google.android.material.bottomsheet;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.app.k;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* JADX INFO: compiled from: BottomSheetDialogFragment.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends k {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f25200o;

    /* JADX INFO: renamed from: com.google.android.material.bottomsheet.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BottomSheetDialogFragment.java */
    private class C0113b extends BottomSheetBehavior.f {
        private C0113b() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void a(View view, float f10) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void b(View view, int i10) {
            if (i10 == 5) {
                b.this.p();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (this.f25200o) {
            super.dismissAllowingStateLoss();
        } else {
            super.dismiss();
        }
    }

    private void q(BottomSheetBehavior<?> bottomSheetBehavior, boolean z10) {
        this.f25200o = z10;
        if (bottomSheetBehavior.Y() == 5) {
            p();
            return;
        }
        if (getDialog() instanceof com.google.android.material.bottomsheet.a) {
            ((com.google.android.material.bottomsheet.a) getDialog()).l();
        }
        bottomSheetBehavior.M(new C0113b());
        bottomSheetBehavior.q0(5);
    }

    private boolean r(boolean z10) {
        Dialog dialog = getDialog();
        if (!(dialog instanceof com.google.android.material.bottomsheet.a)) {
            return false;
        }
        com.google.android.material.bottomsheet.a aVar = (com.google.android.material.bottomsheet.a) dialog;
        BottomSheetBehavior<FrameLayout> bottomSheetBehaviorJ = aVar.j();
        if (!bottomSheetBehaviorJ.b0() || !aVar.k()) {
            return false;
        }
        q(bottomSheetBehaviorJ, z10);
        return true;
    }

    @Override // androidx.fragment.app.d
    public void dismiss() {
        if (r(false)) {
            return;
        }
        super.dismiss();
    }

    @Override // androidx.fragment.app.d
    public void dismissAllowingStateLoss() {
        if (r(true)) {
            return;
        }
        super.dismissAllowingStateLoss();
    }

    @Override // androidx.appcompat.app.k, androidx.fragment.app.d
    public Dialog onCreateDialog(Bundle bundle) {
        return new com.google.android.material.bottomsheet.a(getContext(), getTheme());
    }
}
