package com.theartofdev.edmodo.cropper;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import com.theartofdev.edmodo.cropper.CropImageView;
import com.theartofdev.edmodo.cropper.c;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: BitmapCroppingWorkerTask.java */
/* JADX INFO: loaded from: classes2.dex */
final class a extends AsyncTask<Void, Void, C0136a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<CropImageView> f27308a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Bitmap f27309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Uri f27310c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f27311d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float[] f27312e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f27313f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f27314g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f27315h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f27316i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f27317j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f27318k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f27319l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f27320m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final boolean f27321n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f27322o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final CropImageView.j f27323p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Uri f27324q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Bitmap.CompressFormat f27325r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f27326s;

    a(CropImageView cropImageView, Bitmap bitmap, float[] fArr, int i10, boolean z10, int i11, int i12, int i13, int i14, boolean z11, boolean z12, CropImageView.j jVar, Uri uri, Bitmap.CompressFormat compressFormat, int i15) {
        this.f27308a = new WeakReference<>(cropImageView);
        this.f27311d = cropImageView.getContext();
        this.f27309b = bitmap;
        this.f27312e = fArr;
        this.f27310c = null;
        this.f27313f = i10;
        this.f27316i = z10;
        this.f27317j = i11;
        this.f27318k = i12;
        this.f27319l = i13;
        this.f27320m = i14;
        this.f27321n = z11;
        this.f27322o = z12;
        this.f27323p = jVar;
        this.f27324q = uri;
        this.f27325r = compressFormat;
        this.f27326s = i15;
        this.f27314g = 0;
        this.f27315h = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public C0136a doInBackground(Void... voidArr) {
        c.a aVarG;
        try {
            if (isCancelled()) {
                return null;
            }
            Uri uri = this.f27310c;
            if (uri != null) {
                aVarG = c.d(this.f27311d, uri, this.f27312e, this.f27313f, this.f27314g, this.f27315h, this.f27316i, this.f27317j, this.f27318k, this.f27319l, this.f27320m, this.f27321n, this.f27322o);
            } else {
                Bitmap bitmap = this.f27309b;
                if (bitmap == null) {
                    return new C0136a((Bitmap) null, 1);
                }
                aVarG = c.g(bitmap, this.f27312e, this.f27313f, this.f27316i, this.f27317j, this.f27318k, this.f27321n, this.f27322o);
            }
            Bitmap bitmapY = c.y(aVarG.f27349a, this.f27319l, this.f27320m, this.f27323p);
            Uri uri2 = this.f27324q;
            if (uri2 == null) {
                return new C0136a(bitmapY, aVarG.f27350b);
            }
            c.C(this.f27311d, bitmapY, uri2, this.f27325r, this.f27326s);
            if (bitmapY != null) {
                bitmapY.recycle();
            }
            return new C0136a(this.f27324q, aVarG.f27350b);
        } catch (Exception e10) {
            return new C0136a(e10, this.f27324q != null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(C0136a c0136a) {
        Bitmap bitmap;
        CropImageView cropImageView;
        if (c0136a != null) {
            boolean z10 = false;
            if (!isCancelled() && (cropImageView = this.f27308a.get()) != null) {
                z10 = true;
                cropImageView.m(c0136a);
            }
            if (z10 || (bitmap = c0136a.f27327a) == null) {
                return;
            }
            bitmap.recycle();
        }
    }

    /* JADX INFO: renamed from: com.theartofdev.edmodo.cropper.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BitmapCroppingWorkerTask.java */
    static final class C0136a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Bitmap f27327a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Uri f27328b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Exception f27329c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final boolean f27330d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final int f27331e;

        C0136a(Bitmap bitmap, int i10) {
            this.f27327a = bitmap;
            this.f27328b = null;
            this.f27329c = null;
            this.f27330d = false;
            this.f27331e = i10;
        }

        C0136a(Uri uri, int i10) {
            this.f27327a = null;
            this.f27328b = uri;
            this.f27329c = null;
            this.f27330d = true;
            this.f27331e = i10;
        }

        C0136a(Exception exc, boolean z10) {
            this.f27327a = null;
            this.f27328b = null;
            this.f27329c = exc;
            this.f27330d = z10;
            this.f27331e = 1;
        }
    }

    a(CropImageView cropImageView, Uri uri, float[] fArr, int i10, int i11, int i12, boolean z10, int i13, int i14, int i15, int i16, boolean z11, boolean z12, CropImageView.j jVar, Uri uri2, Bitmap.CompressFormat compressFormat, int i17) {
        this.f27308a = new WeakReference<>(cropImageView);
        this.f27311d = cropImageView.getContext();
        this.f27310c = uri;
        this.f27312e = fArr;
        this.f27313f = i10;
        this.f27316i = z10;
        this.f27317j = i13;
        this.f27318k = i14;
        this.f27314g = i11;
        this.f27315h = i12;
        this.f27319l = i15;
        this.f27320m = i16;
        this.f27321n = z11;
        this.f27322o = z12;
        this.f27323p = jVar;
        this.f27324q = uri2;
        this.f27325r = compressFormat;
        this.f27326s = i17;
        this.f27309b = null;
    }
}
