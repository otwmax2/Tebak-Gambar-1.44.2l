package com.google.android.gms.common;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public class ErrorDialogFragment extends DialogFragment {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Dialog f6903o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private DialogInterface.OnCancelListener f6904p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Dialog f6905q;

    public static ErrorDialogFragment a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        ErrorDialogFragment errorDialogFragment = new ErrorDialogFragment();
        Dialog dialog2 = (Dialog) Preconditions.l(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        errorDialogFragment.f6903o = dialog2;
        if (onCancelListener != null) {
            errorDialogFragment.f6904p = onCancelListener;
        }
        return errorDialogFragment;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f6904p;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = this.f6903o;
        if (dialog != null) {
            return dialog;
        }
        setShowsDialog(false);
        if (this.f6905q == null) {
            this.f6905q = new AlertDialog.Builder((Context) Preconditions.k(getActivity())).create();
        }
        return this.f6905q;
    }

    @Override // android.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}
