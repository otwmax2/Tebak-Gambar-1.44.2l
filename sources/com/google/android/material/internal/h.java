package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: TextDrawableHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f25558c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private l4.d f25561f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextPaint f25556a = new TextPaint(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l4.f f25557b = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f25559d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WeakReference<b> f25560e = new WeakReference<>(null);

    /* JADX INFO: compiled from: TextDrawableHelper.java */
    class a extends l4.f {
        a() {
        }

        @Override // l4.f
        public void a(int i10) {
            h.this.f25559d = true;
            b bVar = (b) h.this.f25560e.get();
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override // l4.f
        public void b(Typeface typeface, boolean z10) {
            if (z10) {
                return;
            }
            h.this.f25559d = true;
            b bVar = (b) h.this.f25560e.get();
            if (bVar != null) {
                bVar.a();
            }
        }
    }

    /* JADX INFO: compiled from: TextDrawableHelper.java */
    public interface b {
        void a();

        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    public h(b bVar) {
        g(bVar);
    }

    private float c(CharSequence charSequence) {
        if (charSequence == null) {
            return 0.0f;
        }
        return this.f25556a.measureText(charSequence, 0, charSequence.length());
    }

    public l4.d d() {
        return this.f25561f;
    }

    public TextPaint e() {
        return this.f25556a;
    }

    public float f(String str) {
        if (!this.f25559d) {
            return this.f25558c;
        }
        float fC = c(str);
        this.f25558c = fC;
        this.f25559d = false;
        return fC;
    }

    public void g(b bVar) {
        this.f25560e = new WeakReference<>(bVar);
    }

    public void h(l4.d dVar, Context context) {
        if (this.f25561f != dVar) {
            this.f25561f = dVar;
            if (dVar != null) {
                dVar.k(context, this.f25556a, this.f25557b);
                b bVar = this.f25560e.get();
                if (bVar != null) {
                    this.f25556a.drawableState = bVar.getState();
                }
                dVar.j(context, this.f25556a, this.f25557b);
                this.f25559d = true;
            }
            b bVar2 = this.f25560e.get();
            if (bVar2 != null) {
                bVar2.a();
                bVar2.onStateChange(bVar2.getState());
            }
        }
    }

    public void i(boolean z10) {
        this.f25559d = z10;
    }

    public void j(Context context) {
        this.f25561f.j(context, this.f25556a, this.f25557b);
    }
}
