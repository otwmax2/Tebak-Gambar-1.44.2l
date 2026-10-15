package m0;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.emoji2.text.d;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: EmojiTextWatcher.java */
/* JADX INFO: loaded from: classes.dex */
final class g implements TextWatcher {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final EditText f32105o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f32106p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private d.e f32107q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f32108r = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f32109s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f32110t = true;

    /* JADX INFO: compiled from: EmojiTextWatcher.java */
    private static class a extends d.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Reference<EditText> f32111a;

        a(EditText editText) {
            this.f32111a = new WeakReference(editText);
        }

        @Override // androidx.emoji2.text.d.e
        public void b() {
            super.b();
            g.b(this.f32111a.get(), 1);
        }
    }

    g(EditText editText, boolean z10) {
        this.f32105o = editText;
        this.f32106p = z10;
    }

    private d.e a() {
        if (this.f32107q == null) {
            this.f32107q = new a(this.f32105o);
        }
        return this.f32107q;
    }

    static void b(EditText editText, int i10) {
        if (i10 == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            androidx.emoji2.text.d.b().o(editableText);
            d.b(editableText, selectionStart, selectionEnd);
        }
    }

    private boolean d() {
        return (this.f32110t && (this.f32106p || androidx.emoji2.text.d.h())) ? false : true;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    public void c(boolean z10) {
        if (this.f32110t != z10) {
            if (this.f32107q != null) {
                androidx.emoji2.text.d.b().t(this.f32107q);
            }
            this.f32110t = z10;
            if (z10) {
                b(this.f32105o, androidx.emoji2.text.d.b().d());
            }
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        if (this.f32105o.isInEditMode() || d() || i11 > i12 || !(charSequence instanceof Spannable)) {
            return;
        }
        int iD = androidx.emoji2.text.d.b().d();
        if (iD != 0) {
            if (iD == 1) {
                androidx.emoji2.text.d.b().r((Spannable) charSequence, i10, i10 + i12, this.f32108r, this.f32109s);
                return;
            } else if (iD != 3) {
                return;
            }
        }
        androidx.emoji2.text.d.b().s(a());
    }
}
