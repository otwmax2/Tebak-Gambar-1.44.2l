package com.google.android.material.textfield;

import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: PasswordToggleEndIconDelegate.java */
/* JADX INFO: loaded from: classes2.dex */
class i extends e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TextWatcher f25724d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final TextInputLayout.f f25725e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final TextInputLayout.g f25726f;

    /* JADX INFO: compiled from: PasswordToggleEndIconDelegate.java */
    class a extends com.google.android.material.internal.i {
        a() {
        }

        @Override // com.google.android.material.internal.i, android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            i.this.f25693c.setChecked(!r1.g());
        }
    }

    /* JADX INFO: compiled from: PasswordToggleEndIconDelegate.java */
    class b implements TextInputLayout.f {
        b() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public void a(TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(true);
            textInputLayout.setEndIconCheckable(true);
            i.this.f25693c.setChecked(!r4.g());
            editText.removeTextChangedListener(i.this.f25724d);
            editText.addTextChangedListener(i.this.f25724d);
        }
    }

    /* JADX INFO: compiled from: PasswordToggleEndIconDelegate.java */
    class c implements TextInputLayout.g {

        /* JADX INFO: compiled from: PasswordToggleEndIconDelegate.java */
        class a implements Runnable {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ EditText f25730o;

            a(EditText editText) {
                this.f25730o = editText;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f25730o.removeTextChangedListener(i.this.f25724d);
            }
        }

        c() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.g
        public void a(TextInputLayout textInputLayout, int i10) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i10 != 1) {
                return;
            }
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            editText.post(new a(editText));
        }
    }

    /* JADX INFO: compiled from: PasswordToggleEndIconDelegate.java */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EditText editText = i.this.f25691a.getEditText();
            if (editText == null) {
                return;
            }
            int selectionEnd = editText.getSelectionEnd();
            if (i.this.g()) {
                editText.setTransformationMethod(null);
            } else {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
            if (selectionEnd >= 0) {
                editText.setSelection(selectionEnd);
            }
            i.this.f25691a.V();
        }
    }

    i(TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.f25724d = new a();
        this.f25725e = new b();
        this.f25726f = new c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g() {
        EditText editText = this.f25691a.getEditText();
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    private static boolean h(EditText editText) {
        return editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224);
    }

    @Override // com.google.android.material.textfield.e
    void a() {
        this.f25691a.setEndIconDrawable(g.a.b(this.f25692b, y3.e.f36689a));
        TextInputLayout textInputLayout = this.f25691a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(y3.i.f36757p));
        this.f25691a.setEndIconOnClickListener(new d());
        this.f25691a.e(this.f25725e);
        this.f25691a.f(this.f25726f);
        EditText editText = this.f25691a.getEditText();
        if (h(editText)) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
