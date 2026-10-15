package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;

/* JADX INFO: compiled from: TypefaceEmojiSpan.java */
/* JADX INFO: loaded from: classes.dex */
public final class n extends h {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static Paint f3083t;

    public n(f fVar) {
        super(fVar);
    }

    private static Paint c() {
        if (f3083t == null) {
            TextPaint textPaint = new TextPaint();
            f3083t = textPaint;
            textPaint.setColor(d.b().c());
            f3083t.setStyle(Paint.Style.FILL);
        }
        return f3083t;
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, @SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i10, int i11, float f10, int i12, int i13, int i14, Paint paint) {
        if (d.b().i()) {
            canvas.drawRect(f10, i12, f10 + b(), i14, c());
        }
        a().a(canvas, f10, i13, paint);
    }
}
