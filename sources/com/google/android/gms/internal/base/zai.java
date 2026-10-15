package com.google.android.gms.internal.base;

import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zai extends Drawable implements Drawable.Callback {
    private boolean A;
    private boolean B;
    private int C;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f21655p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f21656q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f21658s;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f21661v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private zah f21662w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Drawable f21663x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Drawable f21664y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f21665z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f21654o = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f21657r = 255;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f21659t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f21660u = true;

    zai(zah zahVar) {
        this.f21662w = new zah(zahVar);
    }

    public final boolean a() {
        if (!this.f21665z) {
            boolean z10 = false;
            if (this.f21663x.getConstantState() != null && this.f21664y.getConstantState() != null) {
                z10 = true;
            }
            this.A = z10;
            this.f21665z = true;
        }
        return this.A;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void draw(android.graphics.Canvas r8) {
        /*
            r7 = this;
            int r0 = r7.f21654o
            r1 = 2
            r2 = 0
            r3 = 1
            if (r0 == r3) goto L39
            if (r0 == r1) goto La
            goto L42
        La:
            long r0 = r7.f21655p
            r4 = 0
            int r6 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r6 < 0) goto L42
            long r0 = android.os.SystemClock.uptimeMillis()
            long r4 = r7.f21655p
            long r0 = r0 - r4
            float r0 = (float) r0
            int r1 = r7.f21658s
            float r1 = (float) r1
            float r0 = r0 / r1
            r1 = 1065353216(0x3f800000, float:1.0)
            int r4 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r4 < 0) goto L25
            goto L26
        L25:
            r3 = 0
        L26:
            if (r3 == 0) goto L2a
            r7.f21654o = r2
        L2a:
            float r0 = java.lang.Math.min(r0, r1)
            int r1 = r7.f21656q
            float r1 = (float) r1
            float r1 = r1 * r0
            r0 = 0
            float r1 = r1 + r0
            int r0 = (int) r1
            r7.f21659t = r0
            goto L42
        L39:
            long r3 = android.os.SystemClock.uptimeMillis()
            r7.f21655p = r3
            r7.f21654o = r1
            r3 = 0
        L42:
            int r0 = r7.f21659t
            boolean r1 = r7.f21660u
            android.graphics.drawable.Drawable r4 = r7.f21663x
            android.graphics.drawable.Drawable r5 = r7.f21664y
            if (r3 == 0) goto L61
            if (r1 == 0) goto L51
            if (r0 != 0) goto L56
            goto L52
        L51:
            r2 = r0
        L52:
            r4.draw(r8)
            r0 = r2
        L56:
            int r1 = r7.f21657r
            if (r0 != r1) goto L60
            r5.setAlpha(r1)
            r5.draw(r8)
        L60:
            return
        L61:
            if (r1 == 0) goto L69
            int r2 = r7.f21657r
            int r2 = r2 - r0
            r4.setAlpha(r2)
        L69:
            r4.draw(r8)
            if (r1 == 0) goto L73
            int r1 = r7.f21657r
            r4.setAlpha(r1)
        L73:
            if (r0 <= 0) goto L80
            r5.setAlpha(r0)
            r5.draw(r8)
            int r8 = r7.f21657r
            r5.setAlpha(r8)
        L80:
            r7.invalidateSelf()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.base.zai.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        zah zahVar = this.f21662w;
        return changingConfigurations | zahVar.f21652a | zahVar.f21653b;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!a()) {
            return null;
        }
        this.f21662w.f21652a = getChangingConfigurations();
        return this.f21662w;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return Math.max(this.f21663x.getIntrinsicHeight(), this.f21664y.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.max(this.f21663x.getIntrinsicWidth(), this.f21664y.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        if (!this.B) {
            this.C = Drawable.resolveOpacity(this.f21663x.getOpacity(), this.f21664y.getOpacity());
            this.B = true;
        }
        return this.C;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.f21661v && super.mutate() == this) {
            if (!a()) {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
            this.f21663x.mutate();
            this.f21664y.mutate();
            this.f21661v = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        this.f21663x.setBounds(rect);
        this.f21664y.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i10) {
        if (this.f21659t == this.f21657r) {
            this.f21659t = i10;
        }
        this.f21657r = i10;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f21663x.setColorFilter(colorFilter);
        this.f21664y.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }
}
