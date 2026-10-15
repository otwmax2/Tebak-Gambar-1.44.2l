package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.b;

/* JADX INFO: compiled from: ActionBar.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: compiled from: ActionBar.java */
    public interface b {
        void a(boolean z10);
    }

    /* JADX INFO: compiled from: ActionBar.java */
    @Deprecated
    public static abstract class c {
        public abstract CharSequence a();

        public abstract View b();

        public abstract Drawable c();

        public abstract CharSequence d();

        public abstract void e();
    }

    public boolean f() {
        return false;
    }

    public abstract boolean g();

    public abstract void h(boolean z10);

    public abstract int i();

    public abstract Context j();

    public boolean k() {
        return false;
    }

    public abstract void l(Configuration configuration);

    void m() {
    }

    public abstract boolean n(int i10, KeyEvent keyEvent);

    public boolean o(KeyEvent keyEvent) {
        return false;
    }

    public boolean p() {
        return false;
    }

    public abstract void q(boolean z10);

    public abstract void r(boolean z10);

    public abstract void s(boolean z10);

    public abstract void t(CharSequence charSequence);

    public abstract void u(CharSequence charSequence);

    public abstract androidx.appcompat.view.b v(b.a aVar);

    /* JADX INFO: renamed from: androidx.appcompat.app.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ActionBar.java */
    public static class C0011a extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f338a;

        public C0011a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f338a = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f.j.f29210t);
            this.f338a = typedArrayObtainStyledAttributes.getInt(f.j.f29215u, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public C0011a(int i10, int i11) {
            super(i10, i11);
            this.f338a = 0;
            this.f338a = 8388627;
        }

        public C0011a(C0011a c0011a) {
            super((ViewGroup.MarginLayoutParams) c0011a);
            this.f338a = 0;
            this.f338a = c0011a.f338a;
        }

        public C0011a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f338a = 0;
        }
    }
}
