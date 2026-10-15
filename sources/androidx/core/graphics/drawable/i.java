package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;

/* JADX INFO: compiled from: WrappedDrawableState.java */
/* JADX INFO: loaded from: classes.dex */
final class i extends Drawable.ConstantState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f2241a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Drawable.ConstantState f2242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ColorStateList f2243c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    PorterDuff.Mode f2244d;

    i(i iVar) {
        this.f2243c = null;
        this.f2244d = g.f2233u;
        if (iVar != null) {
            this.f2241a = iVar.f2241a;
            this.f2242b = iVar.f2242b;
            this.f2243c = iVar.f2243c;
            this.f2244d = iVar.f2244d;
        }
    }

    boolean a() {
        return this.f2242b != null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        int i10 = this.f2241a;
        Drawable.ConstantState constantState = this.f2242b;
        return i10 | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        return Build.VERSION.SDK_INT >= 21 ? new h(this, resources) : new g(this, resources);
    }
}
