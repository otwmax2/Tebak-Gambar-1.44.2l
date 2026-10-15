package com.theartofdev.edmodo.cropper;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.DisplayMetrics;
import com.theartofdev.edmodo.cropper.c;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: BitmapLoadingWorkerTask.java */
/* JADX INFO: loaded from: classes2.dex */
final class b extends AsyncTask<Void, Void, a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<CropImageView> f27332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Uri f27333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f27334c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f27335d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f27336e;

    public b(CropImageView cropImageView, Uri uri) {
        this.f27333b = uri;
        this.f27332a = new WeakReference<>(cropImageView);
        this.f27334c = cropImageView.getContext();
        DisplayMetrics displayMetrics = cropImageView.getResources().getDisplayMetrics();
        double d10 = displayMetrics.density > 1.0f ? 1.0f / r6 : 1.0d;
        double d11 = displayMetrics.widthPixels;
        Double.isNaN(d11);
        this.f27335d = (int) (d11 * d10);
        double d12 = displayMetrics.heightPixels;
        Double.isNaN(d12);
        this.f27336e = (int) (d12 * d10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a doInBackground(Void... voidArr) throws Throwable {
        try {
            if (isCancelled()) {
                return null;
            }
            c.a aVarL = c.l(this.f27334c, this.f27333b, this.f27335d, this.f27336e);
            if (isCancelled()) {
                return null;
            }
            c.b bVarA = c.A(aVarL.f27349a, this.f27334c, this.f27333b);
            return new a(this.f27333b, bVarA.f27351a, aVarL.f27350b, bVarA.f27352b);
        } catch (Exception e10) {
            return new a(this.f27333b, e10);
        }
    }

    public Uri b() {
        return this.f27333b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(a aVar) {
        Bitmap bitmap;
        CropImageView cropImageView;
        if (aVar != null) {
            boolean z10 = false;
            if (!isCancelled() && (cropImageView = this.f27332a.get()) != null) {
                z10 = true;
                cropImageView.n(aVar);
            }
            if (z10 || (bitmap = aVar.f27338b) == null) {
                return;
            }
            bitmap.recycle();
        }
    }

    /* JADX INFO: compiled from: BitmapLoadingWorkerTask.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f27337a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Bitmap f27338b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f27339c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f27340d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Exception f27341e;

        a(Uri uri, Bitmap bitmap, int i10, int i11) {
            this.f27337a = uri;
            this.f27338b = bitmap;
            this.f27339c = i10;
            this.f27340d = i11;
            this.f27341e = null;
        }

        a(Uri uri, Exception exc) {
            this.f27337a = uri;
            this.f27338b = null;
            this.f27339c = 0;
            this.f27340d = 0;
            this.f27341e = exc;
        }
    }
}
