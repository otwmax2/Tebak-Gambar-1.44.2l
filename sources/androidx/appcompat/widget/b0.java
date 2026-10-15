package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.widget.TextView;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: AppCompatTextViewAutoSizeHelper.java */
/* JADX INFO: loaded from: classes.dex */
class b0 {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final RectF f962l = new RectF();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @SuppressLint({"BanConcurrentHashMap"})
    private static ConcurrentHashMap<String, Method> f963m = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @SuppressLint({"BanConcurrentHashMap"})
    private static ConcurrentHashMap<String, Field> f964n = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f965a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f966b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f967c = -1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f968d = -1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f969e = -1.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int[] f970f = new int[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f971g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TextPaint f972h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final TextView f973i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Context f974j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final f f975k;

    /* JADX INFO: compiled from: AppCompatTextViewAutoSizeHelper.java */
    private static final class a {
        static StaticLayout a(CharSequence charSequence, Layout.Alignment alignment, int i10, TextView textView, TextPaint textPaint) {
            return new StaticLayout(charSequence, textPaint, i10, alignment, textView.getLineSpacingMultiplier(), textView.getLineSpacingExtra(), textView.getIncludeFontPadding());
        }

        static int b(TextView textView) {
            return textView.getMaxLines();
        }
    }

    /* JADX INFO: compiled from: AppCompatTextViewAutoSizeHelper.java */
    private static final class b {
        static boolean a(View view) {
            return view.isInLayout();
        }
    }

    /* JADX INFO: compiled from: AppCompatTextViewAutoSizeHelper.java */
    private static final class c {
        static StaticLayout a(CharSequence charSequence, Layout.Alignment alignment, int i10, int i11, TextView textView, TextPaint textPaint, f fVar) {
            StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i10);
            StaticLayout.Builder hyphenationFrequency = builderObtain.setAlignment(alignment).setLineSpacing(textView.getLineSpacingExtra(), textView.getLineSpacingMultiplier()).setIncludePad(textView.getIncludeFontPadding()).setBreakStrategy(textView.getBreakStrategy()).setHyphenationFrequency(textView.getHyphenationFrequency());
            if (i11 == -1) {
                i11 = Integer.MAX_VALUE;
            }
            hyphenationFrequency.setMaxLines(i11);
            try {
                fVar.a(builderObtain, textView);
            } catch (ClassCastException unused) {
                Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
            }
            return builderObtain.build();
        }
    }

    /* JADX INFO: compiled from: AppCompatTextViewAutoSizeHelper.java */
    private static class d extends f {
        d() {
        }

        @Override // androidx.appcompat.widget.b0.f
        void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) b0.p(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    /* JADX INFO: compiled from: AppCompatTextViewAutoSizeHelper.java */
    private static class e extends d {
        e() {
        }

        @Override // androidx.appcompat.widget.b0.d, androidx.appcompat.widget.b0.f
        void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection(textView.getTextDirectionHeuristic());
        }

        @Override // androidx.appcompat.widget.b0.f
        boolean b(TextView textView) {
            return textView.isHorizontallyScrollable();
        }
    }

    /* JADX INFO: compiled from: AppCompatTextViewAutoSizeHelper.java */
    private static class f {
        f() {
        }

        void a(StaticLayout.Builder builder, TextView textView) {
        }

        boolean b(TextView textView) {
            return ((Boolean) b0.p(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }
    }

    b0(TextView textView) {
        this.f973i = textView;
        this.f974j = textView.getContext();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            this.f975k = new e();
        } else if (i10 >= 23) {
            this.f975k = new d();
        } else {
            this.f975k = new f();
        }
    }

    private boolean A(int i10, RectF rectF) {
        CharSequence transformation;
        CharSequence text = this.f973i.getText();
        TransformationMethod transformationMethod = this.f973i.getTransformationMethod();
        if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.f973i)) != null) {
            text = transformation;
        }
        int iB = Build.VERSION.SDK_INT >= 16 ? a.b(this.f973i) : -1;
        o(i10);
        StaticLayout staticLayoutE = e(text, (Layout.Alignment) p(this.f973i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), iB);
        return (iB == -1 || (staticLayoutE.getLineCount() <= iB && staticLayoutE.getLineEnd(staticLayoutE.getLineCount() - 1) == text.length())) && ((float) staticLayoutE.getHeight()) <= rectF.bottom;
    }

    private boolean B() {
        return !(this.f973i instanceof k);
    }

    private void C(float f10, float f11, float f12) throws IllegalArgumentException {
        if (f10 <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f10 + "px) is less or equal to (0px)");
        }
        if (f11 <= f10) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f11 + "px) is less or equal to minimum auto-size text size (" + f10 + "px)");
        }
        if (f12 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f12 + "px) is less or equal to (0px)");
        }
        this.f965a = 1;
        this.f968d = f10;
        this.f969e = f11;
        this.f967c = f12;
        this.f971g = false;
    }

    private static <T> T a(Object obj, String str, T t10) {
        try {
            Field fieldM = m(str);
            return fieldM == null ? t10 : (T) fieldM.get(obj);
        } catch (IllegalAccessException e10) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e10);
            return t10;
        }
    }

    private int[] c(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i10 : iArr) {
            if (i10 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i10)) < 0) {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i11 = 0; i11 < size; i11++) {
            iArr2[i11] = ((Integer) arrayList.get(i11)).intValue();
        }
        return iArr2;
    }

    private void d() {
        this.f965a = 0;
        this.f968d = -1.0f;
        this.f969e = -1.0f;
        this.f967c = -1.0f;
        this.f970f = new int[0];
        this.f966b = false;
    }

    private StaticLayout f(CharSequence charSequence, Layout.Alignment alignment, int i10) {
        return new StaticLayout(charSequence, this.f972h, i10, alignment, ((Float) a(this.f973i, "mSpacingMult", Float.valueOf(1.0f))).floatValue(), ((Float) a(this.f973i, "mSpacingAdd", Float.valueOf(0.0f))).floatValue(), ((Boolean) a(this.f973i, "mIncludePad", Boolean.TRUE)).booleanValue());
    }

    private int g(RectF rectF) {
        int length = this.f970f.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i10 = length - 1;
        int i11 = 1;
        int i12 = 0;
        while (i11 <= i10) {
            int i13 = (i11 + i10) / 2;
            if (A(this.f970f[i13], rectF)) {
                int i14 = i13 + 1;
                i12 = i11;
                i11 = i14;
            } else {
                i12 = i13 - 1;
                i10 = i12;
            }
        }
        return this.f970f[i12];
    }

    private static Field m(String str) {
        try {
            Field declaredField = f964n.get(str);
            if (declaredField == null && (declaredField = TextView.class.getDeclaredField(str)) != null) {
                declaredField.setAccessible(true);
                f964n.put(str, declaredField);
            }
            return declaredField;
        } catch (NoSuchFieldException e10) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e10);
            return null;
        }
    }

    private static Method n(String str) {
        try {
            Method declaredMethod = f963m.get(str);
            if (declaredMethod == null && (declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0])) != null) {
                declaredMethod.setAccessible(true);
                f963m.put(str, declaredMethod);
            }
            return declaredMethod;
        } catch (Exception e10) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e10);
            return null;
        }
    }

    static <T> T p(Object obj, String str, T t10) {
        try {
            return (T) n(str).invoke(obj, new Object[0]);
        } catch (Exception e10) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e10);
            return t10;
        }
    }

    private void v(float f10) {
        if (f10 != this.f973i.getPaint().getTextSize()) {
            this.f973i.getPaint().setTextSize(f10);
            boolean zA = Build.VERSION.SDK_INT >= 18 ? b.a(this.f973i) : false;
            if (this.f973i.getLayout() != null) {
                this.f966b = false;
                try {
                    Method methodN = n("nullLayouts");
                    if (methodN != null) {
                        methodN.invoke(this.f973i, new Object[0]);
                    }
                } catch (Exception e10) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e10);
                }
                if (zA) {
                    this.f973i.forceLayout();
                } else {
                    this.f973i.requestLayout();
                }
                this.f973i.invalidate();
            }
        }
    }

    private boolean x() {
        if (B() && this.f965a == 1) {
            if (!this.f971g || this.f970f.length == 0) {
                int iFloor = ((int) Math.floor((this.f969e - this.f968d) / this.f967c)) + 1;
                int[] iArr = new int[iFloor];
                for (int i10 = 0; i10 < iFloor; i10++) {
                    iArr[i10] = Math.round(this.f968d + (i10 * this.f967c));
                }
                this.f970f = c(iArr);
            }
            this.f966b = true;
        } else {
            this.f966b = false;
        }
        return this.f966b;
    }

    private void y(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i10 = 0; i10 < length; i10++) {
                iArr[i10] = typedArray.getDimensionPixelSize(i10, -1);
            }
            this.f970f = c(iArr);
            z();
        }
    }

    private boolean z() {
        boolean z10 = this.f970f.length > 0;
        this.f971g = z10;
        if (z10) {
            this.f965a = 1;
            this.f968d = r0[0];
            this.f969e = r0[r1 - 1];
            this.f967c = -1.0f;
        }
        return z10;
    }

    void b() {
        if (q()) {
            if (this.f966b) {
                if (this.f973i.getMeasuredHeight() <= 0 || this.f973i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.f975k.b(this.f973i) ? 1048576 : (this.f973i.getMeasuredWidth() - this.f973i.getTotalPaddingLeft()) - this.f973i.getTotalPaddingRight();
                int height = (this.f973i.getHeight() - this.f973i.getCompoundPaddingBottom()) - this.f973i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = f962l;
                synchronized (rectF) {
                    rectF.setEmpty();
                    rectF.right = measuredWidth;
                    rectF.bottom = height;
                    float fG = g(rectF);
                    if (fG != this.f973i.getTextSize()) {
                        w(0, fG);
                    }
                }
            }
            this.f966b = true;
        }
    }

    StaticLayout e(CharSequence charSequence, Layout.Alignment alignment, int i10, int i11) {
        int i12 = Build.VERSION.SDK_INT;
        return i12 >= 23 ? c.a(charSequence, alignment, i10, i11, this.f973i, this.f972h, this.f975k) : i12 >= 16 ? a.a(charSequence, alignment, i10, this.f973i, this.f972h) : f(charSequence, alignment, i10);
    }

    int h() {
        return Math.round(this.f969e);
    }

    int i() {
        return Math.round(this.f968d);
    }

    int j() {
        return Math.round(this.f967c);
    }

    int[] k() {
        return this.f970f;
    }

    int l() {
        return this.f965a;
    }

    void o(int i10) {
        TextPaint textPaint = this.f972h;
        if (textPaint == null) {
            this.f972h = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f972h.set(this.f973i.getPaint());
        this.f972h.setTextSize(i10);
    }

    boolean q() {
        return B() && this.f965a != 0;
    }

    void r(AttributeSet attributeSet, int i10) {
        int resourceId;
        Context context = this.f974j;
        int[] iArr = f.j.f29146g0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i10, 0);
        TextView textView = this.f973i;
        androidx.core.view.a0.o0(textView, textView.getContext(), iArr, attributeSet, typedArrayObtainStyledAttributes, i10, 0);
        int i11 = f.j.f29171l0;
        if (typedArrayObtainStyledAttributes.hasValue(i11)) {
            this.f965a = typedArrayObtainStyledAttributes.getInt(i11, 0);
        }
        int i12 = f.j.f29166k0;
        float dimension = typedArrayObtainStyledAttributes.hasValue(i12) ? typedArrayObtainStyledAttributes.getDimension(i12, -1.0f) : -1.0f;
        int i13 = f.j.f29156i0;
        float dimension2 = typedArrayObtainStyledAttributes.hasValue(i13) ? typedArrayObtainStyledAttributes.getDimension(i13, -1.0f) : -1.0f;
        int i14 = f.j.f29151h0;
        float dimension3 = typedArrayObtainStyledAttributes.hasValue(i14) ? typedArrayObtainStyledAttributes.getDimension(i14, -1.0f) : -1.0f;
        int i15 = f.j.f29161j0;
        if (typedArrayObtainStyledAttributes.hasValue(i15) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(i15, 0)) > 0) {
            TypedArray typedArrayObtainTypedArray = typedArrayObtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            y(typedArrayObtainTypedArray);
            typedArrayObtainTypedArray.recycle();
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!B()) {
            this.f965a = 0;
            return;
        }
        if (this.f965a == 1) {
            if (!this.f971g) {
                DisplayMetrics displayMetrics = this.f974j.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                }
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                C(dimension2, dimension3, dimension);
            }
            x();
        }
    }

    void s(int i10, int i11, int i12, int i13) throws IllegalArgumentException {
        if (B()) {
            DisplayMetrics displayMetrics = this.f974j.getResources().getDisplayMetrics();
            C(TypedValue.applyDimension(i13, i10, displayMetrics), TypedValue.applyDimension(i13, i11, displayMetrics), TypedValue.applyDimension(i13, i12, displayMetrics));
            if (x()) {
                b();
            }
        }
    }

    void t(int[] iArr, int i10) throws IllegalArgumentException {
        if (B()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i10 == 0) {
                    iArrCopyOf = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.f974j.getResources().getDisplayMetrics();
                    for (int i11 = 0; i11 < length; i11++) {
                        iArrCopyOf[i11] = Math.round(TypedValue.applyDimension(i10, iArr[i11], displayMetrics));
                    }
                }
                this.f970f = c(iArrCopyOf);
                if (!z()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f971g = false;
            }
            if (x()) {
                b();
            }
        }
    }

    void u(int i10) {
        if (B()) {
            if (i10 == 0) {
                d();
                return;
            }
            if (i10 != 1) {
                throw new IllegalArgumentException("Unknown auto-size text type: " + i10);
            }
            DisplayMetrics displayMetrics = this.f974j.getResources().getDisplayMetrics();
            C(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (x()) {
                b();
            }
        }
    }

    void w(int i10, float f10) {
        Context context = this.f974j;
        v(TypedValue.applyDimension(i10, f10, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }
}
