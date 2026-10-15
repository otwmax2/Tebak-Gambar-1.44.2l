package androidx.emoji2.text;

import android.os.Build;
import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import androidx.emoji2.text.d;
import androidx.emoji2.text.l;
import java.util.Arrays;

/* JADX INFO: compiled from: EmojiProcessor.java */
/* JADX INFO: loaded from: classes.dex */
final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d.i f3038a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l f3039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d.InterfaceC0050d f3040c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f3041d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int[] f3042e;

    /* JADX INFO: compiled from: EmojiProcessor.java */
    private static final class a {
        static int a(CharSequence charSequence, int i10, int i11) {
            int length = charSequence.length();
            if (i10 < 0 || length < i10 || i11 < 0) {
                return -1;
            }
            while (true) {
                boolean z10 = false;
                while (i11 != 0) {
                    i10--;
                    if (i10 < 0) {
                        return z10 ? -1 : 0;
                    }
                    char cCharAt = charSequence.charAt(i10);
                    if (z10) {
                        if (!Character.isHighSurrogate(cCharAt)) {
                            return -1;
                        }
                        i11--;
                    } else if (!Character.isSurrogate(cCharAt)) {
                        i11--;
                    } else {
                        if (Character.isHighSurrogate(cCharAt)) {
                            return -1;
                        }
                        z10 = true;
                    }
                }
                return i10;
            }
        }

        static int b(CharSequence charSequence, int i10, int i11) {
            int length = charSequence.length();
            if (i10 < 0 || length < i10 || i11 < 0) {
                return -1;
            }
            while (true) {
                boolean z10 = false;
                while (i11 != 0) {
                    if (i10 >= length) {
                        if (z10) {
                            return -1;
                        }
                        return length;
                    }
                    char cCharAt = charSequence.charAt(i10);
                    if (z10) {
                        if (!Character.isLowSurrogate(cCharAt)) {
                            return -1;
                        }
                        i11--;
                        i10++;
                    } else if (!Character.isSurrogate(cCharAt)) {
                        i11--;
                        i10++;
                    } else {
                        if (Character.isLowSurrogate(cCharAt)) {
                            return -1;
                        }
                        i10++;
                        z10 = true;
                    }
                }
                return i10;
            }
        }
    }

    /* JADX INFO: compiled from: EmojiProcessor.java */
    public static class b implements d.InterfaceC0050d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final ThreadLocal<StringBuilder> f3043b = new ThreadLocal<>();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TextPaint f3044a;

        b() {
            TextPaint textPaint = new TextPaint();
            this.f3044a = textPaint;
            textPaint.setTextSize(10.0f);
        }

        private static StringBuilder b() {
            ThreadLocal<StringBuilder> threadLocal = f3043b;
            if (threadLocal.get() == null) {
                threadLocal.set(new StringBuilder());
            }
            return threadLocal.get();
        }

        @Override // androidx.emoji2.text.d.InterfaceC0050d
        public boolean a(CharSequence charSequence, int i10, int i11, int i12) {
            int i13 = Build.VERSION.SDK_INT;
            if (i13 < 23 && i12 > i13) {
                return false;
            }
            StringBuilder sbB = b();
            sbB.setLength(0);
            while (i10 < i11) {
                sbB.append(charSequence.charAt(i10));
                i10++;
            }
            return androidx.core.graphics.c.a(this.f3044a, sbB.toString());
        }
    }

    /* JADX INFO: compiled from: EmojiProcessor.java */
    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f3045a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final l.a f3046b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private l.a f3047c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private l.a f3048d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f3049e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f3050f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f3051g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final int[] f3052h;

        c(l.a aVar, boolean z10, int[] iArr) {
            this.f3046b = aVar;
            this.f3047c = aVar;
            this.f3051g = z10;
            this.f3052h = iArr;
        }

        private static boolean d(int i10) {
            return i10 == 65039;
        }

        private static boolean f(int i10) {
            return i10 == 65038;
        }

        private int g() {
            this.f3045a = 1;
            this.f3047c = this.f3046b;
            this.f3050f = 0;
            return 1;
        }

        private boolean h() {
            if (this.f3047c.b().j() || d(this.f3049e)) {
                return true;
            }
            if (this.f3051g) {
                if (this.f3052h == null) {
                    return true;
                }
                if (Arrays.binarySearch(this.f3052h, this.f3047c.b().b(0)) < 0) {
                    return true;
                }
            }
            return false;
        }

        int a(int i10) {
            l.a aVarA = this.f3047c.a(i10);
            int iG = 3;
            if (this.f3045a == 2) {
                if (aVarA != null) {
                    this.f3047c = aVarA;
                    this.f3050f++;
                } else if (f(i10)) {
                    iG = g();
                } else if (!d(i10)) {
                    if (this.f3047c.b() == null) {
                        iG = g();
                    } else if (this.f3050f != 1 || h()) {
                        this.f3048d = this.f3047c;
                        g();
                    } else {
                        iG = g();
                    }
                }
                iG = 2;
            } else if (aVarA == null) {
                iG = g();
            } else {
                this.f3045a = 2;
                this.f3047c = aVarA;
                this.f3050f = 1;
                iG = 2;
            }
            this.f3049e = i10;
            return iG;
        }

        f b() {
            return this.f3047c.b();
        }

        f c() {
            return this.f3048d.b();
        }

        boolean e() {
            return this.f3045a == 2 && this.f3047c.b() != null && (this.f3050f > 1 || h());
        }
    }

    g(l lVar, d.i iVar, d.InterfaceC0050d interfaceC0050d, boolean z10, int[] iArr) {
        this.f3038a = iVar;
        this.f3039b = lVar;
        this.f3040c = interfaceC0050d;
        this.f3041d = z10;
        this.f3042e = iArr;
    }

    private void a(Spannable spannable, f fVar, int i10, int i11) {
        spannable.setSpan(this.f3038a.a(fVar), i10, i11, 33);
    }

    private static boolean b(Editable editable, KeyEvent keyEvent, boolean z10) {
        h[] hVarArr;
        if (g(keyEvent)) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (!f(selectionStart, selectionEnd) && (hVarArr = (h[]) editable.getSpans(selectionStart, selectionEnd, h.class)) != null && hVarArr.length > 0) {
            for (h hVar : hVarArr) {
                int spanStart = editable.getSpanStart(hVar);
                int spanEnd = editable.getSpanEnd(hVar);
                if ((z10 && spanStart == selectionStart) || ((!z10 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    static boolean c(InputConnection inputConnection, Editable editable, int i10, int i11, boolean z10) {
        int iMax;
        int iMin;
        if (editable != null && inputConnection != null && i10 >= 0 && i11 >= 0) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (f(selectionStart, selectionEnd)) {
                return false;
            }
            if (z10) {
                iMax = a.a(editable, selectionStart, Math.max(i10, 0));
                iMin = a.b(editable, selectionEnd, Math.max(i11, 0));
                if (iMax == -1 || iMin == -1) {
                    return false;
                }
            } else {
                iMax = Math.max(selectionStart - i10, 0);
                iMin = Math.min(selectionEnd + i11, editable.length());
            }
            h[] hVarArr = (h[]) editable.getSpans(iMax, iMin, h.class);
            if (hVarArr != null && hVarArr.length > 0) {
                for (h hVar : hVarArr) {
                    int spanStart = editable.getSpanStart(hVar);
                    int spanEnd = editable.getSpanEnd(hVar);
                    iMax = Math.min(spanStart, iMax);
                    iMin = Math.max(spanEnd, iMin);
                }
                int iMax2 = Math.max(iMax, 0);
                int iMin2 = Math.min(iMin, editable.length());
                inputConnection.beginBatchEdit();
                editable.delete(iMax2, iMin2);
                inputConnection.endBatchEdit();
                return true;
            }
        }
        return false;
    }

    static boolean d(Editable editable, int i10, KeyEvent keyEvent) {
        if (!(i10 != 67 ? i10 != 112 ? false : b(editable, keyEvent, true) : b(editable, keyEvent, false))) {
            return false;
        }
        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        return true;
    }

    private boolean e(CharSequence charSequence, int i10, int i11, f fVar) {
        if (fVar.d() == 0) {
            fVar.k(this.f3040c.a(charSequence, i10, i11, fVar.h()));
        }
        return fVar.d() == 2;
    }

    private static boolean f(int i10, int i11) {
        return i10 == -1 || i11 == -1 || i10 != i11;
    }

    private static boolean g(KeyEvent keyEvent) {
        return !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState());
    }

    CharSequence h(CharSequence charSequence, int i10, int i11, int i12, boolean z10) {
        int iCharCount;
        h[] hVarArr;
        boolean z11 = charSequence instanceof m;
        if (z11) {
            ((m) charSequence).a();
        }
        o oVar = null;
        if (z11) {
            oVar = new o((Spannable) charSequence);
        } else {
            try {
                if (charSequence instanceof Spannable) {
                    oVar = new o((Spannable) charSequence);
                } else if ((charSequence instanceof Spanned) && ((Spanned) charSequence).nextSpanTransition(i10 - 1, i11 + 1, h.class) <= i11) {
                    oVar = new o(charSequence);
                }
            } finally {
                if (z11) {
                    ((m) charSequence).d();
                }
            }
        }
        if (oVar != null && (hVarArr = (h[]) oVar.getSpans(i10, i11, h.class)) != null && hVarArr.length > 0) {
            for (h hVar : hVarArr) {
                int spanStart = oVar.getSpanStart(hVar);
                int spanEnd = oVar.getSpanEnd(hVar);
                if (spanStart != i11) {
                    oVar.removeSpan(hVar);
                }
                i10 = Math.min(spanStart, i10);
                i11 = Math.max(spanEnd, i11);
            }
        }
        if (i10 != i11 && i10 < charSequence.length()) {
            if (i12 != Integer.MAX_VALUE && oVar != null) {
                i12 -= ((h[]) oVar.getSpans(0, oVar.length(), h.class)).length;
            }
            c cVar = new c(this.f3039b.f(), this.f3041d, this.f3042e);
            o oVar2 = oVar;
            int iCodePointAt = Character.codePointAt(charSequence, i10);
            int i13 = 0;
            loop1: while (true) {
                iCharCount = i10;
                while (i10 < i11 && i13 < i12) {
                    int iA = cVar.a(iCodePointAt);
                    if (iA == 1) {
                        iCharCount += Character.charCount(Character.codePointAt(charSequence, iCharCount));
                        if (iCharCount < i11) {
                            iCodePointAt = Character.codePointAt(charSequence, iCharCount);
                        }
                        i10 = iCharCount;
                    } else if (iA == 2) {
                        i10 += Character.charCount(iCodePointAt);
                        if (i10 < i11) {
                            iCodePointAt = Character.codePointAt(charSequence, i10);
                        }
                    } else if (iA == 3) {
                        if (z10 || !e(charSequence, iCharCount, i10, cVar.c())) {
                            if (oVar2 == null) {
                                oVar2 = new o((Spannable) new SpannableString(charSequence));
                            }
                            a(oVar2, cVar.c(), iCharCount, i10);
                            i13++;
                        }
                    }
                }
                break loop1;
            }
            if (cVar.e() && i13 < i12 && (z10 || !e(charSequence, iCharCount, i10, cVar.b()))) {
                if (oVar2 == null) {
                    oVar2 = new o(charSequence);
                }
                a(oVar2, cVar.b(), iCharCount, i10);
            }
            if (oVar2 != null) {
                return oVar2.b();
            }
            if (z11) {
                ((m) charSequence).d();
            }
            return charSequence;
        }
        if (z11) {
            ((m) charSequence).d();
        }
        return charSequence;
    }
}
