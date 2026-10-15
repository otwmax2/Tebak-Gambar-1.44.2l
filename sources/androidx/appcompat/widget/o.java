package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageButton;

/* JADX INFO: compiled from: AppCompatImageButton.java */
/* JADX INFO: loaded from: classes.dex */
public class o extends ImageButton implements androidx.core.view.y, androidx.core.widget.o {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final e f1124o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final p f1125p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f1126q;

    public o(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, f.a.C);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f1124o;
        if (eVar != null) {
            eVar.b();
        }
        p pVar = this.f1125p;
        if (pVar != null) {
            pVar.c();
        }
    }

    @Override // androidx.core.view.y
    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f1124o;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // androidx.core.view.y
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f1124o;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    @Override // androidx.core.widget.o
    public ColorStateList getSupportImageTintList() {
        p pVar = this.f1125p;
        if (pVar != null) {
            return pVar.d();
        }
        return null;
    }

    @Override // androidx.core.widget.o
    public PorterDuff.Mode getSupportImageTintMode() {
        p pVar = this.f1125p;
        if (pVar != null) {
            return pVar.e();
        }
        return null;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.f1125p.f() && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f1124o;
        if (eVar != null) {
            eVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        e eVar = this.f1124o;
        if (eVar != null) {
            eVar.g(i10);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        p pVar = this.f1125p;
        if (pVar != null) {
            pVar.c();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        p pVar = this.f1125p;
        if (pVar != null && drawable != null && !this.f1126q) {
            pVar.h(drawable);
        }
        super.setImageDrawable(drawable);
        p pVar2 = this.f1125p;
        if (pVar2 != null) {
            pVar2.c();
            if (this.f1126q) {
                return;
            }
            this.f1125p.b();
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i10) {
        super.setImageLevel(i10);
        this.f1126q = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i10) {
        this.f1125p.i(i10);
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        p pVar = this.f1125p;
        if (pVar != null) {
            pVar.c();
        }
    }

    @Override // androidx.core.view.y
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f1124o;
        if (eVar != null) {
            eVar.i(colorStateList);
        }
    }

    @Override // androidx.core.view.y
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f1124o;
        if (eVar != null) {
            eVar.j(mode);
        }
    }

    @Override // androidx.core.widget.o
    public void setSupportImageTintList(ColorStateList colorStateList) {
        p pVar = this.f1125p;
        if (pVar != null) {
            pVar.j(colorStateList);
        }
    }

    @Override // androidx.core.widget.o
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        p pVar = this.f1125p;
        if (pVar != null) {
            pVar.k(mode);
        }
    }

    public o(Context context, AttributeSet attributeSet, int i10) {
        super(t0.b(context), attributeSet, i10);
        this.f1126q = false;
        r0.a(this, getContext());
        e eVar = new e(this);
        this.f1124o = eVar;
        eVar.e(attributeSet, i10);
        p pVar = new p(this);
        this.f1125p = pVar;
        pVar.g(attributeSet, i10);
    }
}
