package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;

/* JADX INFO: compiled from: EmojiSpan.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class h extends ReplacementSpan {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final f f3054p;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Paint.FontMetricsInt f3053o = new Paint.FontMetricsInt();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private short f3055q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private short f3056r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f3057s = 1.0f;

    h(f fVar) {
        androidx.core.util.h.g(fVar, "metadata cannot be null");
        this.f3054p = fVar;
    }

    public final f a() {
        return this.f3054p;
    }

    final int b() {
        return this.f3055q;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, @SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
        paint.getFontMetricsInt(this.f3053o);
        Paint.FontMetricsInt fontMetricsInt2 = this.f3053o;
        this.f3057s = (Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f) / this.f3054p.e();
        this.f3056r = (short) (this.f3054p.e() * this.f3057s);
        short sI = (short) (this.f3054p.i() * this.f3057s);
        this.f3055q = sI;
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt3 = this.f3053o;
            fontMetricsInt.ascent = fontMetricsInt3.ascent;
            fontMetricsInt.descent = fontMetricsInt3.descent;
            fontMetricsInt.top = fontMetricsInt3.top;
            fontMetricsInt.bottom = fontMetricsInt3.bottom;
        }
        return sI;
    }
}
