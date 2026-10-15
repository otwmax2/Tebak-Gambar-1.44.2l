package androidx.core.text;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;

/* JADX INFO: compiled from: PrecomputedTextCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class c implements Spannable {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Object f2355r = new Object();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Spannable f2356o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final a f2357p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final PrecomputedText f2358q;

    public a a() {
        return this.f2357p;
    }

    public PrecomputedText b() {
        Spannable spannable = this.f2356o;
        if (spannable instanceof PrecomputedText) {
            return (PrecomputedText) spannable;
        }
        return null;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i10) {
        return this.f2356o.charAt(i10);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f2356o.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f2356o.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f2356o.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i10, int i11, Class<T> cls) {
        return Build.VERSION.SDK_INT >= 29 ? (T[]) this.f2358q.getSpans(i10, i11, cls) : (T[]) this.f2356o.getSpans(i10, i11, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f2356o.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i10, int i11, Class cls) {
        return this.f2356o.nextSpanTransition(i10, i11, cls);
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.f2358q.removeSpan(obj);
        } else {
            this.f2356o.removeSpan(obj);
        }
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i10, int i11, int i12) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.f2358q.setSpan(obj, i10, i11, i12);
        } else {
            this.f2356o.setSpan(obj, i10, i11, i12);
        }
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i10, int i11) {
        return this.f2356o.subSequence(i10, i11);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.f2356o.toString();
    }

    /* JADX INFO: compiled from: PrecomputedTextCompat.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TextPaint f2359a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TextDirectionHeuristic f2360b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f2361c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f2362d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final PrecomputedText.Params f2363e;

        /* JADX INFO: renamed from: androidx.core.text.c$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: PrecomputedTextCompat.java */
        public static class C0036a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final TextPaint f2364a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private TextDirectionHeuristic f2365b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f2366c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f2367d;

            public C0036a(TextPaint textPaint) {
                this.f2364a = textPaint;
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 23) {
                    this.f2366c = 1;
                    this.f2367d = 1;
                } else {
                    this.f2367d = 0;
                    this.f2366c = 0;
                }
                if (i10 >= 18) {
                    this.f2365b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                } else {
                    this.f2365b = null;
                }
            }

            public a a() {
                return new a(this.f2364a, this.f2365b, this.f2366c, this.f2367d);
            }

            public C0036a b(int i10) {
                this.f2366c = i10;
                return this;
            }

            public C0036a c(int i10) {
                this.f2367d = i10;
                return this;
            }

            public C0036a d(TextDirectionHeuristic textDirectionHeuristic) {
                this.f2365b = textDirectionHeuristic;
                return this;
            }
        }

        a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i10, int i11) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f2363e = new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i10).setHyphenationFrequency(i11).setTextDirection(textDirectionHeuristic).build();
            } else {
                this.f2363e = null;
            }
            this.f2359a = textPaint;
            this.f2360b = textDirectionHeuristic;
            this.f2361c = i10;
            this.f2362d = i11;
        }

        public boolean a(a aVar) {
            int i10 = Build.VERSION.SDK_INT;
            if ((i10 >= 23 && (this.f2361c != aVar.b() || this.f2362d != aVar.c())) || this.f2359a.getTextSize() != aVar.e().getTextSize() || this.f2359a.getTextScaleX() != aVar.e().getTextScaleX() || this.f2359a.getTextSkewX() != aVar.e().getTextSkewX()) {
                return false;
            }
            if ((i10 >= 21 && (this.f2359a.getLetterSpacing() != aVar.e().getLetterSpacing() || !TextUtils.equals(this.f2359a.getFontFeatureSettings(), aVar.e().getFontFeatureSettings()))) || this.f2359a.getFlags() != aVar.e().getFlags()) {
                return false;
            }
            if (i10 >= 24) {
                if (!this.f2359a.getTextLocales().equals(aVar.e().getTextLocales())) {
                    return false;
                }
            } else if (i10 >= 17 && !this.f2359a.getTextLocale().equals(aVar.e().getTextLocale())) {
                return false;
            }
            return this.f2359a.getTypeface() == null ? aVar.e().getTypeface() == null : this.f2359a.getTypeface().equals(aVar.e().getTypeface());
        }

        public int b() {
            return this.f2361c;
        }

        public int c() {
            return this.f2362d;
        }

        public TextDirectionHeuristic d() {
            return this.f2360b;
        }

        public TextPaint e() {
            return this.f2359a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (a(aVar)) {
                return Build.VERSION.SDK_INT < 18 || this.f2360b == aVar.d();
            }
            return false;
        }

        public int hashCode() {
            int i10 = Build.VERSION.SDK_INT;
            return i10 >= 24 ? androidx.core.util.c.b(Float.valueOf(this.f2359a.getTextSize()), Float.valueOf(this.f2359a.getTextScaleX()), Float.valueOf(this.f2359a.getTextSkewX()), Float.valueOf(this.f2359a.getLetterSpacing()), Integer.valueOf(this.f2359a.getFlags()), this.f2359a.getTextLocales(), this.f2359a.getTypeface(), Boolean.valueOf(this.f2359a.isElegantTextHeight()), this.f2360b, Integer.valueOf(this.f2361c), Integer.valueOf(this.f2362d)) : i10 >= 21 ? androidx.core.util.c.b(Float.valueOf(this.f2359a.getTextSize()), Float.valueOf(this.f2359a.getTextScaleX()), Float.valueOf(this.f2359a.getTextSkewX()), Float.valueOf(this.f2359a.getLetterSpacing()), Integer.valueOf(this.f2359a.getFlags()), this.f2359a.getTextLocale(), this.f2359a.getTypeface(), Boolean.valueOf(this.f2359a.isElegantTextHeight()), this.f2360b, Integer.valueOf(this.f2361c), Integer.valueOf(this.f2362d)) : i10 >= 18 ? androidx.core.util.c.b(Float.valueOf(this.f2359a.getTextSize()), Float.valueOf(this.f2359a.getTextScaleX()), Float.valueOf(this.f2359a.getTextSkewX()), Integer.valueOf(this.f2359a.getFlags()), this.f2359a.getTextLocale(), this.f2359a.getTypeface(), this.f2360b, Integer.valueOf(this.f2361c), Integer.valueOf(this.f2362d)) : i10 >= 17 ? androidx.core.util.c.b(Float.valueOf(this.f2359a.getTextSize()), Float.valueOf(this.f2359a.getTextScaleX()), Float.valueOf(this.f2359a.getTextSkewX()), Integer.valueOf(this.f2359a.getFlags()), this.f2359a.getTextLocale(), this.f2359a.getTypeface(), this.f2360b, Integer.valueOf(this.f2361c), Integer.valueOf(this.f2362d)) : androidx.core.util.c.b(Float.valueOf(this.f2359a.getTextSize()), Float.valueOf(this.f2359a.getTextScaleX()), Float.valueOf(this.f2359a.getTextSkewX()), Integer.valueOf(this.f2359a.getFlags()), this.f2359a.getTypeface(), this.f2360b, Integer.valueOf(this.f2361c), Integer.valueOf(this.f2362d));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.f2359a.getTextSize());
            sb.append(", textScaleX=" + this.f2359a.getTextScaleX());
            sb.append(", textSkewX=" + this.f2359a.getTextSkewX());
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 21) {
                sb.append(", letterSpacing=" + this.f2359a.getLetterSpacing());
                sb.append(", elegantTextHeight=" + this.f2359a.isElegantTextHeight());
            }
            if (i10 >= 24) {
                sb.append(", textLocale=" + this.f2359a.getTextLocales());
            } else if (i10 >= 17) {
                sb.append(", textLocale=" + this.f2359a.getTextLocale());
            }
            sb.append(", typeface=" + this.f2359a.getTypeface());
            if (i10 >= 26) {
                sb.append(", variationSettings=" + this.f2359a.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.f2360b);
            sb.append(", breakStrategy=" + this.f2361c);
            sb.append(", hyphenationFrequency=" + this.f2362d);
            sb.append("}");
            return sb.toString();
        }

        public a(PrecomputedText.Params params) {
            this.f2359a = params.getTextPaint();
            this.f2360b = params.getTextDirection();
            this.f2361c = params.getBreakStrategy();
            this.f2362d = params.getHyphenationFrequency();
            this.f2363e = Build.VERSION.SDK_INT < 29 ? null : params;
        }
    }
}
