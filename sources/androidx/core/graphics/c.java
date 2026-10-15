package androidx.core.graphics;

import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;

/* JADX INFO: compiled from: PaintCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<androidx.core.util.d<Rect, Rect>> f2200a = new ThreadLocal<>();

    /* JADX INFO: compiled from: PaintCompat.java */
    static class a {
        static boolean a(Paint paint, String str) {
            return paint.hasGlyph(str);
        }
    }

    public static boolean a(Paint paint, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return a.a(paint, str);
        }
        int length = str.length();
        if (length == 1 && Character.isWhitespace(str.charAt(0))) {
            return true;
        }
        float fMeasureText = paint.measureText("\udfffd");
        float fMeasureText2 = paint.measureText("m");
        float fMeasureText3 = paint.measureText(str);
        float fMeasureText4 = 0.0f;
        if (fMeasureText3 == 0.0f) {
            return false;
        }
        if (str.codePointCount(0, str.length()) > 1) {
            if (fMeasureText3 > fMeasureText2 * 2.0f) {
                return false;
            }
            int i10 = 0;
            while (i10 < length) {
                int iCharCount = Character.charCount(str.codePointAt(i10)) + i10;
                fMeasureText4 += paint.measureText(str, i10, iCharCount);
                i10 = iCharCount;
            }
            if (fMeasureText3 >= fMeasureText4) {
                return false;
            }
        }
        if (fMeasureText3 != fMeasureText) {
            return true;
        }
        androidx.core.util.d<Rect, Rect> dVarB = b();
        paint.getTextBounds("\udfffd", 0, 2, dVarB.f2381a);
        paint.getTextBounds(str, 0, length, dVarB.f2382b);
        return !dVarB.f2381a.equals(dVarB.f2382b);
    }

    private static androidx.core.util.d<Rect, Rect> b() {
        ThreadLocal<androidx.core.util.d<Rect, Rect>> threadLocal = f2200a;
        androidx.core.util.d<Rect, Rect> dVar = threadLocal.get();
        if (dVar == null) {
            androidx.core.util.d<Rect, Rect> dVar2 = new androidx.core.util.d<>(new Rect(), new Rect());
            threadLocal.set(dVar2);
            return dVar2;
        }
        dVar.f2381a.setEmpty();
        dVar.f2382b.setEmpty();
        return dVar;
    }
}
