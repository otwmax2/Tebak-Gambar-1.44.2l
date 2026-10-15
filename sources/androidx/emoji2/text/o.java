package androidx.emoji2.text;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import java.util.stream.IntStream;

/* JADX INFO: compiled from: UnprecomputeTextOnModificationSpannable.java */
/* JADX INFO: loaded from: classes.dex */
class o implements Spannable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f3084o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Spannable f3085p;

    /* JADX INFO: compiled from: UnprecomputeTextOnModificationSpannable.java */
    private static class a {
        static IntStream a(CharSequence charSequence) {
            return charSequence.chars();
        }

        static IntStream b(CharSequence charSequence) {
            return charSequence.codePoints();
        }
    }

    /* JADX INFO: compiled from: UnprecomputeTextOnModificationSpannable.java */
    static class b {
        b() {
        }

        boolean a(CharSequence charSequence) {
            return charSequence instanceof androidx.core.text.c;
        }
    }

    /* JADX INFO: compiled from: UnprecomputeTextOnModificationSpannable.java */
    static class c extends b {
        c() {
        }

        @Override // androidx.emoji2.text.o.b
        boolean a(CharSequence charSequence) {
            return (charSequence instanceof PrecomputedText) || (charSequence instanceof androidx.core.text.c);
        }
    }

    o(Spannable spannable) {
        this.f3085p = spannable;
    }

    private void a() {
        Spannable spannable = this.f3085p;
        if (!this.f3084o && c().a(spannable)) {
            this.f3085p = new SpannableString(spannable);
        }
        this.f3084o = true;
    }

    static b c() {
        return Build.VERSION.SDK_INT < 28 ? new b() : new c();
    }

    Spannable b() {
        return this.f3085p;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i10) {
        return this.f3085p.charAt(i10);
    }

    @Override // java.lang.CharSequence
    public IntStream chars() {
        return a.a(this.f3085p);
    }

    @Override // java.lang.CharSequence
    public IntStream codePoints() {
        return a.b(this.f3085p);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f3085p.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f3085p.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f3085p.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i10, int i11, Class<T> cls) {
        return (T[]) this.f3085p.getSpans(i10, i11, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f3085p.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i10, int i11, Class cls) {
        return this.f3085p.nextSpanTransition(i10, i11, cls);
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        a();
        this.f3085p.removeSpan(obj);
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i10, int i11, int i12) {
        a();
        this.f3085p.setSpan(obj, i10, i11, i12);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i10, int i11) {
        return this.f3085p.subSequence(i10, i11);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.f3085p.toString();
    }

    o(CharSequence charSequence) {
        this.f3085p = new SpannableString(charSequence);
    }
}
