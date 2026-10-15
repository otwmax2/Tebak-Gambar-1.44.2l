package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;

/* JADX INFO: compiled from: EmojiMetadata.java */
/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ThreadLocal<l0.a> f3034d = new ThreadLocal<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3035a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l f3036b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile int f3037c = 0;

    f(l lVar, int i10) {
        this.f3036b = lVar;
        this.f3035a = i10;
    }

    private l0.a g() {
        ThreadLocal<l0.a> threadLocal = f3034d;
        l0.a aVar = threadLocal.get();
        if (aVar == null) {
            aVar = new l0.a();
            threadLocal.set(aVar);
        }
        this.f3036b.d().j(aVar, this.f3035a);
        return aVar;
    }

    public void a(Canvas canvas, float f10, float f11, Paint paint) {
        Typeface typefaceG = this.f3036b.g();
        Typeface typeface = paint.getTypeface();
        paint.setTypeface(typefaceG);
        canvas.drawText(this.f3036b.c(), this.f3035a * 2, 2, f10, f11, paint);
        paint.setTypeface(typeface);
    }

    public int b(int i10) {
        return g().h(i10);
    }

    public int c() {
        return g().i();
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public int d() {
        return this.f3037c;
    }

    public short e() {
        return g().k();
    }

    public int f() {
        return g().l();
    }

    public short h() {
        return g().m();
    }

    public short i() {
        return g().n();
    }

    public boolean j() {
        return g().j();
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public void k(boolean z10) {
        this.f3037c = z10 ? 2 : 1;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        sb.append(Integer.toHexString(f()));
        sb.append(", codepoints:");
        int iC = c();
        for (int i10 = 0; i10 < iC; i10++) {
            sb.append(Integer.toHexString(b(i10)));
            sb.append(" ");
        }
        return sb.toString();
    }
}
