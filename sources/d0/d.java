package d0;

import android.text.Editable;
import android.text.Spanned;
import android.text.TextWatcher;
import android.widget.TextView;
import androidx.databinding.h;

/* JADX INFO: compiled from: TextViewBindingAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: compiled from: TextViewBindingAdapter.java */
    class a implements TextWatcher {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ c f28599o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ InterfaceC0141d f28600p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ h f28601q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ b f28602r;

        a(c cVar, InterfaceC0141d interfaceC0141d, h hVar, b bVar) {
            this.f28599o = cVar;
            this.f28600p = interfaceC0141d;
            this.f28601q = hVar;
            this.f28602r = bVar;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            b bVar = this.f28602r;
            if (bVar != null) {
                bVar.afterTextChanged(editable);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            c cVar = this.f28599o;
            if (cVar != null) {
                cVar.beforeTextChanged(charSequence, i10, i11, i12);
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            InterfaceC0141d interfaceC0141d = this.f28600p;
            if (interfaceC0141d != null) {
                interfaceC0141d.onTextChanged(charSequence, i10, i11, i12);
            }
            h hVar = this.f28601q;
            if (hVar != null) {
                hVar.a();
            }
        }
    }

    /* JADX INFO: compiled from: TextViewBindingAdapter.java */
    public interface b {
        void afterTextChanged(Editable editable);
    }

    /* JADX INFO: compiled from: TextViewBindingAdapter.java */
    public interface c {
        void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12);
    }

    /* JADX INFO: renamed from: d0.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: TextViewBindingAdapter.java */
    public interface InterfaceC0141d {
        void onTextChanged(CharSequence charSequence, int i10, int i11, int i12);
    }

    public static String a(TextView textView) {
        return textView.getText().toString();
    }

    private static boolean b(CharSequence charSequence, CharSequence charSequence2) {
        if ((charSequence == null) != (charSequence2 == null)) {
            return true;
        }
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        if (length != charSequence2.length()) {
            return true;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (charSequence.charAt(i10) != charSequence2.charAt(i10)) {
                return true;
            }
        }
        return false;
    }

    public static void c(TextView textView, CharSequence charSequence) {
        CharSequence text = textView.getText();
        if (charSequence != text) {
            if (charSequence == null && text.length() == 0) {
                return;
            }
            if (charSequence instanceof Spanned) {
                if (charSequence.equals(text)) {
                    return;
                }
            } else if (!b(charSequence, text)) {
                return;
            }
            textView.setText(charSequence);
        }
    }

    public static void d(TextView textView, c cVar, InterfaceC0141d interfaceC0141d, b bVar, h hVar) {
        a aVar = (cVar == null && bVar == null && interfaceC0141d == null && hVar == null) ? null : new a(cVar, interfaceC0141d, hVar, bVar);
        TextWatcher textWatcher = (TextWatcher) d0.c.a(textView, aVar, f0.a.f29245a);
        if (textWatcher != null) {
            textView.removeTextChangedListener(textWatcher);
        }
        if (aVar != null) {
            textView.addTextChangedListener(aVar);
        }
    }
}
