package com.android.volley.toolbox;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;

/* JADX INFO: loaded from: classes.dex */
public class NetworkImageView extends ImageView {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f5229o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f5230p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Drawable f5231q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Bitmap f5232r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f5233s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Drawable f5234t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Bitmap f5235u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ImageLoader f5236v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private ImageLoader.ImageContainer f5237w;

    /* JADX INFO: renamed from: com.android.volley.toolbox.NetworkImageView$1, reason: invalid class name */
    class AnonymousClass1 implements ImageLoader.ImageListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ boolean f5238o;

        AnonymousClass1(boolean z10) {
            this.f5238o = z10;
        }

        @Override // com.android.volley.toolbox.ImageLoader.ImageListener
        public void a(final ImageLoader.ImageContainer imageContainer, boolean z10) {
            if (z10 && this.f5238o) {
                NetworkImageView.this.post(new Runnable() { // from class: com.android.volley.toolbox.NetworkImageView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass1.this.a(imageContainer, false);
                    }
                });
                return;
            }
            if (imageContainer.d() != null) {
                NetworkImageView.this.setImageBitmap(imageContainer.d());
                return;
            }
            if (NetworkImageView.this.f5230p != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.f5230p);
            } else if (NetworkImageView.this.f5231q != null) {
                NetworkImageView networkImageView2 = NetworkImageView.this;
                networkImageView2.setImageDrawable(networkImageView2.f5231q);
            } else if (NetworkImageView.this.f5232r != null) {
                NetworkImageView networkImageView3 = NetworkImageView.this;
                networkImageView3.setImageBitmap(networkImageView3.f5232r);
            }
        }

        @Override // com.android.volley.Response.ErrorListener
        public void c(VolleyError volleyError) {
            if (NetworkImageView.this.f5233s != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.f5233s);
            } else if (NetworkImageView.this.f5234t != null) {
                NetworkImageView networkImageView2 = NetworkImageView.this;
                networkImageView2.setImageDrawable(networkImageView2.f5234t);
            } else if (NetworkImageView.this.f5235u != null) {
                NetworkImageView networkImageView3 = NetworkImageView.this;
                networkImageView3.setImageBitmap(networkImageView3.f5235u);
            }
        }
    }

    private void h() {
        int i10 = this.f5230p;
        if (i10 != 0) {
            setImageResource(i10);
            return;
        }
        Drawable drawable = this.f5231q;
        if (drawable != null) {
            setImageDrawable(drawable);
            return;
        }
        Bitmap bitmap = this.f5232r;
        if (bitmap != null) {
            setImageBitmap(bitmap);
        } else {
            setImageBitmap(null);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void g(boolean r9) {
        /*
            r8 = this;
            int r0 = r8.getWidth()
            int r1 = r8.getHeight()
            android.widget.ImageView$ScaleType r7 = r8.getScaleType()
            android.view.ViewGroup$LayoutParams r2 = r8.getLayoutParams()
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L2a
            android.view.ViewGroup$LayoutParams r2 = r8.getLayoutParams()
            int r2 = r2.width
            r5 = -2
            if (r2 != r5) goto L1f
            r2 = 1
            goto L20
        L1f:
            r2 = 0
        L20:
            android.view.ViewGroup$LayoutParams r6 = r8.getLayoutParams()
            int r6 = r6.height
            if (r6 != r5) goto L2b
            r5 = 1
            goto L2c
        L2a:
            r2 = 0
        L2b:
            r5 = 0
        L2c:
            if (r2 == 0) goto L31
            if (r5 == 0) goto L31
            goto L32
        L31:
            r3 = 0
        L32:
            if (r0 != 0) goto L39
            if (r1 != 0) goto L39
            if (r3 != 0) goto L39
            return
        L39:
            java.lang.String r3 = r8.f5229o
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 == 0) goto L4f
            com.android.volley.toolbox.ImageLoader$ImageContainer r9 = r8.f5237w
            if (r9 == 0) goto L4b
            r9.c()
            r9 = 0
            r8.f5237w = r9
        L4b:
            r8.h()
            return
        L4f:
            com.android.volley.toolbox.ImageLoader$ImageContainer r3 = r8.f5237w
            if (r3 == 0) goto L70
            java.lang.String r3 = r3.e()
            if (r3 == 0) goto L70
            com.android.volley.toolbox.ImageLoader$ImageContainer r3 = r8.f5237w
            java.lang.String r3 = r3.e()
            java.lang.String r6 = r8.f5229o
            boolean r3 = r3.equals(r6)
            if (r3 == 0) goto L68
            return
        L68:
            com.android.volley.toolbox.ImageLoader$ImageContainer r3 = r8.f5237w
            r3.c()
            r8.h()
        L70:
            if (r2 == 0) goto L73
            r0 = 0
        L73:
            if (r5 == 0) goto L77
            r6 = 0
            goto L78
        L77:
            r6 = r1
        L78:
            com.android.volley.toolbox.ImageLoader r2 = r8.f5236v
            java.lang.String r3 = r8.f5229o
            com.android.volley.toolbox.NetworkImageView$1 r4 = new com.android.volley.toolbox.NetworkImageView$1
            r4.<init>(r9)
            r5 = r0
            com.android.volley.toolbox.ImageLoader$ImageContainer r9 = r2.e(r3, r4, r5, r6, r7)
            r8.f5237w = r9
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.volley.toolbox.NetworkImageView.g(boolean):void");
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        ImageLoader.ImageContainer imageContainer = this.f5237w;
        if (imageContainer != null) {
            imageContainer.c();
            setImageBitmap(null);
            this.f5237w = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        g(true);
    }

    public void setDefaultImageBitmap(Bitmap bitmap) {
        this.f5230p = 0;
        this.f5231q = null;
        this.f5232r = bitmap;
    }

    public void setDefaultImageDrawable(Drawable drawable) {
        this.f5230p = 0;
        this.f5232r = null;
        this.f5231q = drawable;
    }

    public void setDefaultImageResId(int i10) {
        this.f5232r = null;
        this.f5231q = null;
        this.f5230p = i10;
    }

    public void setErrorImageBitmap(Bitmap bitmap) {
        this.f5233s = 0;
        this.f5234t = null;
        this.f5235u = bitmap;
    }

    public void setErrorImageDrawable(Drawable drawable) {
        this.f5233s = 0;
        this.f5235u = null;
        this.f5234t = drawable;
    }

    public void setErrorImageResId(int i10) {
        this.f5235u = null;
        this.f5234t = null;
        this.f5233s = i10;
    }
}
