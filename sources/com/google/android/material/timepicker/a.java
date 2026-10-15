package com.google.android.material.timepicker;

import android.text.InputFilter;
import android.text.Spanned;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: MaxInputValidator.java */
/* JADX INFO: loaded from: classes2.dex */
class a implements InputFilter {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f25763o;

    public a(int i10) {
        this.f25763o = i10;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
        try {
            StringBuilder sb = new StringBuilder(spanned);
            sb.replace(i12, i13, charSequence.subSequence(i10, i11).toString());
            if (Integer.parseInt(sb.toString()) <= this.f25763o) {
                return null;
            }
            return BuildConfig.FLAVOR;
        } catch (NumberFormatException unused) {
            return BuildConfig.FLAVOR;
        }
    }
}
