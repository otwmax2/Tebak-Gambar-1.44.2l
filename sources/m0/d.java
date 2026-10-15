package m0;

import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.widget.TextView;
import androidx.emoji2.text.d;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: EmojiInputFilter.java */
/* JADX INFO: loaded from: classes.dex */
final class d implements InputFilter {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final TextView f32094o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private d.e f32095p;

    /* JADX INFO: compiled from: EmojiInputFilter.java */
    private static class a extends d.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Reference<TextView> f32096a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Reference<d> f32097b;

        a(TextView textView, d dVar) {
            this.f32096a = new WeakReference(textView);
            this.f32097b = new WeakReference(dVar);
        }

        private boolean c(TextView textView, InputFilter inputFilter) {
            InputFilter[] filters;
            if (inputFilter == null || textView == null || (filters = textView.getFilters()) == null) {
                return false;
            }
            for (InputFilter inputFilter2 : filters) {
                if (inputFilter2 == inputFilter) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.emoji2.text.d.e
        public void b() {
            CharSequence text;
            CharSequence charSequenceO;
            super.b();
            TextView textView = this.f32096a.get();
            if (c(textView, this.f32097b.get()) && textView.isAttachedToWindow() && text != (charSequenceO = androidx.emoji2.text.d.b().o((text = textView.getText())))) {
                int selectionStart = Selection.getSelectionStart(charSequenceO);
                int selectionEnd = Selection.getSelectionEnd(charSequenceO);
                textView.setText(charSequenceO);
                if (charSequenceO instanceof Spannable) {
                    d.b((Spannable) charSequenceO, selectionStart, selectionEnd);
                }
            }
        }
    }

    d(TextView textView) {
        this.f32094o = textView;
    }

    private d.e a() {
        if (this.f32095p == null) {
            this.f32095p = new a(this.f32094o, this);
        }
        return this.f32095p;
    }

    static void b(Spannable spannable, int i10, int i11) {
        if (i10 >= 0 && i11 >= 0) {
            Selection.setSelection(spannable, i10, i11);
        } else if (i10 >= 0) {
            Selection.setSelection(spannable, i10);
        } else if (i11 >= 0) {
            Selection.setSelection(spannable, i11);
        }
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
        if (this.f32094o.isInEditMode()) {
            return charSequence;
        }
        int iD = androidx.emoji2.text.d.b().d();
        if (iD != 0) {
            boolean z10 = true;
            if (iD == 1) {
                if (i13 == 0 && i12 == 0 && spanned.length() == 0 && charSequence == this.f32094o.getText()) {
                    z10 = false;
                }
                if (!z10 || charSequence == null) {
                    return charSequence;
                }
                if (i10 != 0 || i11 != charSequence.length()) {
                    charSequence = charSequence.subSequence(i10, i11);
                }
                return androidx.emoji2.text.d.b().p(charSequence, 0, charSequence.length());
            }
            if (iD != 3) {
                return charSequence;
            }
        }
        androidx.emoji2.text.d.b().s(a());
        return charSequence;
    }
}
