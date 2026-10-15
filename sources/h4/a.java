package h4;

import android.content.Context;
import android.graphics.Color;
import l4.b;

/* JADX INFO: compiled from: ElevationOverlayProvider.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f30244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f30245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f30246c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f30247d;

    public a(Context context) {
        this.f30244a = b.b(context, y3.b.f36645o, false);
        this.f30245b = e4.a.a(context, y3.b.f36644n, 0);
        this.f30246c = e4.a.a(context, y3.b.f36642l, 0);
        this.f30247d = context.getResources().getDisplayMetrics().density;
    }

    private boolean e(int i10) {
        return androidx.core.graphics.a.f(i10, 255) == this.f30246c;
    }

    public float a(float f10) {
        if (this.f30247d <= 0.0f || f10 <= 0.0f) {
            return 0.0f;
        }
        return Math.min(((((float) Math.log1p(f10 / r0)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
    }

    public int b(int i10, float f10) {
        float fA = a(f10);
        return androidx.core.graphics.a.f(e4.a.f(androidx.core.graphics.a.f(i10, 255), this.f30245b, fA), Color.alpha(i10));
    }

    public int c(int i10, float f10) {
        return (this.f30244a && e(i10)) ? b(i10, f10) : i10;
    }

    public boolean d() {
        return this.f30244a;
    }
}
