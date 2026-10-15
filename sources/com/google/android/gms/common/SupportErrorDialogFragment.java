package com.google.android.gms.common;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public class SupportErrorDialogFragment extends androidx.fragment.app.d {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Dialog f6934o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private DialogInterface.OnCancelListener f6935p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Dialog f6936q;

    public static SupportErrorDialogFragment o(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        SupportErrorDialogFragment supportErrorDialogFragment = new SupportErrorDialogFragment();
        Dialog dialog2 = (Dialog) Preconditions.l(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        supportErrorDialogFragment.f6934o = dialog2;
        if (onCancelListener != null) {
            supportErrorDialogFragment.f6935p = onCancelListener;
        }
        return supportErrorDialogFragment;
    }

    @Override // androidx.fragment.app.d, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f6935p;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.d
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = this.f6934o;
        if (dialog != null) {
            return dialog;
        }
        setShowsDialog(false);
        if (this.f6936q == null) {
            this.f6936q = new AlertDialog.Builder((Context) Preconditions.k(getContext())).create();
        }
        return this.f6936q;
    }

    @Override // androidx.fragment.app.d
    public void show(androidx.fragment.app.n nVar, String str) {
        super.show(nVar, str);
    }
}
