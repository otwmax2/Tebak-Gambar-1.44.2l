package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.material.chip.Chip;
import com.google.android.material.internal.i;
import com.google.android.material.textfield.TextInputLayout;
import y3.f;
import y3.h;

/* JADX INFO: loaded from: classes2.dex */
class ChipTextInputComboView extends FrameLayout implements Checkable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Chip f25733o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final TextInputLayout f25734p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final EditText f25735q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private TextWatcher f25736r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private TextView f25737s;

    private class b extends i {
        private b() {
        }

        @Override // com.google.android.material.internal.i, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                ChipTextInputComboView.this.f25733o.setText(ChipTextInputComboView.this.c("00"));
            } else {
                ChipTextInputComboView.this.f25733o.setText(ChipTextInputComboView.this.c(editable));
            }
        }
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c(CharSequence charSequence) {
        return c.h(getResources(), charSequence);
    }

    private void d() {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f25735q.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
        }
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f25733o.isChecked();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        d();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z10) {
        this.f25733o.setChecked(z10);
        this.f25735q.setVisibility(z10 ? 0 : 4);
        this.f25733o.setVisibility(z10 ? 8 : 0);
        if (isChecked()) {
            this.f25735q.requestFocus();
            if (TextUtils.isEmpty(this.f25735q.getText())) {
                return;
            }
            EditText editText = this.f25735q;
            editText.setSelection(editText.getText().length());
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f25733o.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setTag(int i10, Object obj) {
        this.f25733o.setTag(i10, obj);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this.f25733o.toggle();
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        Chip chip = (Chip) layoutInflaterFrom.inflate(h.f36731h, (ViewGroup) this, false);
        this.f25733o = chip;
        TextInputLayout textInputLayout = (TextInputLayout) layoutInflaterFrom.inflate(h.f36732i, (ViewGroup) this, false);
        this.f25734p = textInputLayout;
        EditText editText = textInputLayout.getEditText();
        this.f25735q = editText;
        editText.setVisibility(4);
        b bVar = new b();
        this.f25736r = bVar;
        editText.addTextChangedListener(bVar);
        d();
        addView(chip);
        addView(textInputLayout);
        this.f25737s = (TextView) findViewById(f.f36709n);
        editText.setSaveEnabled(false);
    }
}
