package com.android.volley.toolbox;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.NetworkResponse;
import com.android.volley.ParseError;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyLog;

/* JADX INFO: loaded from: classes.dex */
public class ImageRequest extends Request<Bitmap> {
    private static final Object K = new Object();
    private final Object E;
    private Response.Listener<Bitmap> F;
    private final Bitmap.Config G;
    private final int H;
    private final int I;
    private final ImageView.ScaleType J;

    public ImageRequest(String str, Response.Listener<Bitmap> listener, int i10, int i11, ImageView.ScaleType scaleType, Bitmap.Config config, Response.ErrorListener errorListener) {
        super(0, str, errorListener);
        this.E = new Object();
        d0(new DefaultRetryPolicy(1000, 2, 2.0f));
        this.F = listener;
        this.G = config;
        this.H = i10;
        this.I = i11;
        this.J = scaleType;
    }

    private Response<Bitmap> j0(NetworkResponse networkResponse) {
        Bitmap bitmapDecodeByteArray;
        byte[] bArr = networkResponse.f5095b;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.H == 0 && this.I == 0) {
            options.inPreferredConfig = this.G;
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i10 = options.outWidth;
            int i11 = options.outHeight;
            int iL0 = l0(this.H, this.I, i10, i11, this.J);
            int iL02 = l0(this.I, this.H, i11, i10, this.J);
            options.inJustDecodeBounds = false;
            options.inSampleSize = k0(i10, i11, iL0, iL02);
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (bitmapDecodeByteArray != null && (bitmapDecodeByteArray.getWidth() > iL0 || bitmapDecodeByteArray.getHeight() > iL02)) {
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, iL0, iL02, true);
                bitmapDecodeByteArray.recycle();
                bitmapDecodeByteArray = bitmapCreateScaledBitmap;
            }
        }
        return bitmapDecodeByteArray == null ? Response.a(new ParseError(networkResponse)) : Response.c(bitmapDecodeByteArray, HttpHeaderParser.e(networkResponse));
    }

    static int k0(int i10, int i11, int i12, int i13) {
        double d10 = i10;
        double d11 = i12;
        Double.isNaN(d10);
        Double.isNaN(d11);
        double d12 = i11;
        double d13 = i13;
        Double.isNaN(d12);
        Double.isNaN(d13);
        double dMin = Math.min(d10 / d11, d12 / d13);
        float f10 = 1.0f;
        while (true) {
            float f11 = 2.0f * f10;
            if (f11 > dMin) {
                return (int) f10;
            }
            f10 = f11;
        }
    }

    private static int l0(int i10, int i11, int i12, int i13, ImageView.ScaleType scaleType) {
        if (i10 == 0 && i11 == 0) {
            return i12;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i10 == 0 ? i12 : i10;
        }
        if (i10 == 0) {
            double d10 = i11;
            double d11 = i13;
            Double.isNaN(d10);
            Double.isNaN(d11);
            double d12 = i12;
            Double.isNaN(d12);
            return (int) (d12 * (d10 / d11));
        }
        if (i11 == 0) {
            return i10;
        }
        double d13 = i13;
        double d14 = i12;
        Double.isNaN(d13);
        Double.isNaN(d14);
        double d15 = d13 / d14;
        if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            double d16 = i10;
            Double.isNaN(d16);
            double d17 = i11;
            if (d16 * d15 >= d17) {
                return i10;
            }
            Double.isNaN(d17);
            return (int) (d17 / d15);
        }
        double d18 = i10;
        Double.isNaN(d18);
        double d19 = i11;
        if (d18 * d15 <= d19) {
            return i10;
        }
        Double.isNaN(d19);
        return (int) (d19 / d15);
    }

    @Override // com.android.volley.Request
    public Request.Priority N() {
        return Request.Priority.LOW;
    }

    @Override // com.android.volley.Request
    protected Response<Bitmap> Y(NetworkResponse networkResponse) {
        Response<Bitmap> responseJ0;
        synchronized (K) {
            try {
                try {
                    responseJ0 = j0(networkResponse);
                } catch (OutOfMemoryError e10) {
                    VolleyLog.c("Caught OOM for %d byte image, url=%s", Integer.valueOf(networkResponse.f5095b.length), R());
                    return Response.a(new ParseError(e10));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return responseJ0;
    }

    @Override // com.android.volley.Request
    public void f() {
        super.f();
        synchronized (this.E) {
            this.F = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.Request
    /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
    public void j(Bitmap bitmap) {
        Response.Listener<Bitmap> listener;
        synchronized (this.E) {
            listener = this.F;
        }
        if (listener != null) {
            listener.b(bitmap);
        }
    }
}
