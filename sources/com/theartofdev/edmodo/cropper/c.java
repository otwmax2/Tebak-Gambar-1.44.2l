package com.theartofdev.edmodo.cropper;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.util.Log;
import android.util.Pair;
import com.theartofdev.edmodo.cropper.CropImageView;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

/* JADX INFO: compiled from: BitmapUtils.java */
/* JADX INFO: loaded from: classes2.dex */
final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Rect f27342a = new Rect();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final RectF f27343b = new RectF();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final RectF f27344c = new RectF();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final float[] f27345d = new float[6];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final float[] f27346e = new float[6];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f27347f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static Pair<String, WeakReference<Bitmap>> f27348g;

    /* JADX INFO: compiled from: BitmapUtils.java */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Bitmap f27349a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f27350b;

        a(Bitmap bitmap, int i10) {
            this.f27349a = bitmap;
            this.f27350b = i10;
        }
    }

    /* JADX INFO: compiled from: BitmapUtils.java */
    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Bitmap f27351a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f27352b;

        b(Bitmap bitmap, int i10) {
            this.f27351a = bitmap;
            this.f27352b = i10;
        }
    }

    static b A(Bitmap bitmap, Context context, Uri uri) {
        n0.a aVar = null;
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            if (inputStreamOpenInputStream != null) {
                n0.a aVar2 = new n0.a(inputStreamOpenInputStream);
                try {
                    inputStreamOpenInputStream.close();
                } catch (Exception unused) {
                }
                aVar = aVar2;
            }
        } catch (Exception unused2) {
        }
        return aVar != null ? B(bitmap, aVar) : new b(bitmap, 0);
    }

    static b B(Bitmap bitmap, n0.a aVar) {
        int iE = aVar.e("Orientation", 1);
        return new b(bitmap, iE != 3 ? iE != 6 ? iE != 8 ? 0 : 270 : 90 : 180);
    }

    static void C(Context context, Bitmap bitmap, Uri uri, Bitmap.CompressFormat compressFormat, int i10) throws FileNotFoundException {
        OutputStream outputStreamOpenOutputStream = null;
        try {
            outputStreamOpenOutputStream = context.getContentResolver().openOutputStream(uri);
            bitmap.compress(compressFormat, i10, outputStreamOpenOutputStream);
        } finally {
            c(outputStreamOpenOutputStream);
        }
    }

    static Uri D(Context context, Bitmap bitmap, Uri uri) {
        boolean z10 = true;
        try {
            if (uri == null) {
                uri = Uri.fromFile(File.createTempFile("aic_state_store_temp", ".jpg", context.getCacheDir()));
            } else if (new File(uri.getPath()).exists()) {
                z10 = false;
            }
            if (z10) {
                C(context, bitmap, uri, Bitmap.CompressFormat.JPEG, 95);
            }
            return uri;
        } catch (Exception e10) {
            Log.w("AIC", "Failed to write bitmap to temp file for image-cropper save instance state", e10);
            return null;
        }
    }

    private static int a(int i10, int i11) {
        if (f27347f == 0) {
            f27347f = o();
        }
        int i12 = 1;
        if (f27347f > 0) {
            while (true) {
                int i13 = i11 / i12;
                int i14 = f27347f;
                if (i13 <= i14 && i10 / i12 <= i14) {
                    break;
                }
                i12 *= 2;
            }
        }
        return i12;
    }

    private static int b(int i10, int i11, int i12, int i13) {
        int i14 = 1;
        if (i11 > i13 || i10 > i12) {
            while ((i11 / 2) / i14 > i13 && (i10 / 2) / i14 > i12) {
                i14 *= 2;
            }
        }
        return i14;
    }

    private static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    static a d(Context context, Uri uri, float[] fArr, int i10, int i11, int i12, boolean z10, int i13, int i14, int i15, int i16, boolean z11, boolean z12) {
        int i17 = 1;
        do {
            try {
                return e(context, uri, fArr, i10, i11, i12, z10, i13, i14, i15, i16, z11, z12, i17);
            } catch (OutOfMemoryError e10) {
                i17 *= 2;
            }
        } while (i17 <= 16);
        throw new RuntimeException("Failed to handle OOM by sampling (" + i17 + "): " + uri + "\r\n" + e10.getMessage(), e10);
    }

    private static a e(Context context, Uri uri, float[] fArr, int i10, int i11, int i12, boolean z10, int i13, int i14, int i15, int i16, boolean z11, boolean z12, int i17) throws Throwable {
        Rect rectS = s(fArr, i11, i12, z10, i13, i14);
        int iWidth = i15 > 0 ? i15 : rectS.width();
        int iHeight = i16 > 0 ? i16 : rectS.height();
        Bitmap bitmap = null;
        int i18 = 1;
        try {
            a aVarM = m(context, uri, rectS, iWidth, iHeight, i17);
            bitmap = aVarM.f27349a;
            i18 = aVarM.f27350b;
        } catch (Exception unused) {
        }
        if (bitmap == null) {
            return f(context, uri, fArr, i10, z10, i13, i14, i17, rectS, iWidth, iHeight, z11, z12);
        }
        try {
            Bitmap bitmapZ = z(bitmap, i10, z11, z12);
            try {
                if (i10 % 90 != 0) {
                    bitmapZ = i(bitmapZ, fArr, rectS, i10, z10, i13, i14);
                }
                return new a(bitmapZ, i18);
            } catch (OutOfMemoryError e10) {
                e = e10;
                bitmap = bitmapZ;
                if (bitmap != null) {
                    bitmap.recycle();
                }
                throw e;
            }
        } catch (OutOfMemoryError e11) {
            e = e11;
        }
    }

    private static a f(Context context, Uri uri, float[] fArr, int i10, boolean z10, int i11, int i12, int i13, Rect rect, int i14, int i15, boolean z11, boolean z12) {
        Bitmap bitmapH = null;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            int iB = b(rect.width(), rect.height(), i14, i15) * i13;
            options.inSampleSize = iB;
            Bitmap bitmapJ = j(context.getContentResolver(), uri, options);
            if (bitmapJ != null) {
                try {
                    int length = fArr.length;
                    float[] fArr2 = new float[length];
                    System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                    for (int i16 = 0; i16 < length; i16++) {
                        fArr2[i16] = fArr2[i16] / options.inSampleSize;
                    }
                    bitmapH = h(bitmapJ, fArr2, i10, z10, i11, i12, 1.0f, z11, z12);
                    if (bitmapH != bitmapJ) {
                        bitmapJ.recycle();
                    }
                } catch (Throwable th) {
                    bitmapJ.recycle();
                    throw th;
                }
            }
            return new a(bitmapH, iB);
        } catch (Exception e10) {
            throw new RuntimeException("Failed to load sampled bitmap: " + uri + "\r\n" + e10.getMessage(), e10);
        } catch (OutOfMemoryError e11) {
            if (0 != 0) {
                bitmapH.recycle();
            }
            throw e11;
        }
    }

    static a g(Bitmap bitmap, float[] fArr, int i10, boolean z10, int i11, int i12, boolean z11, boolean z12) {
        int i13 = 1;
        do {
            try {
                return new a(h(bitmap, fArr, i10, z10, i11, i12, 1.0f / i13, z11, z12), i13);
            } catch (OutOfMemoryError e10) {
                i13 *= 2;
            }
        } while (i13 <= 8);
        throw e10;
    }

    private static Bitmap h(Bitmap bitmap, float[] fArr, int i10, boolean z10, int i11, int i12, float f10, boolean z11, boolean z12) {
        float f11 = f10;
        Rect rectS = s(fArr, bitmap.getWidth(), bitmap.getHeight(), z10, i11, i12);
        Matrix matrix = new Matrix();
        matrix.setRotate(i10, bitmap.getWidth() / 2, bitmap.getHeight() / 2);
        float f12 = z11 ? -f11 : f11;
        if (z12) {
            f11 = -f11;
        }
        matrix.postScale(f12, f11);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, rectS.left, rectS.top, rectS.width(), rectS.height(), matrix, true);
        if (bitmapCreateBitmap == bitmap) {
            bitmapCreateBitmap = bitmap.copy(bitmap.getConfig(), false);
        }
        return i10 % 90 != 0 ? i(bitmapCreateBitmap, fArr, rectS, i10, z10, i11, i12) : bitmapCreateBitmap;
    }

    private static Bitmap i(Bitmap bitmap, float[] fArr, Rect rect, int i10, boolean z10, int i11, int i12) {
        int iAbs;
        int iAbs2;
        int iAbs3;
        if (i10 % 90 == 0) {
            return bitmap;
        }
        double radians = Math.toRadians(i10);
        int i13 = (i10 < 90 || (i10 > 180 && i10 < 270)) ? rect.left : rect.right;
        int iAbs4 = 0;
        int i14 = 0;
        while (true) {
            if (i14 >= fArr.length) {
                iAbs = 0;
                iAbs2 = 0;
                iAbs3 = 0;
                break;
            }
            if (fArr[i14] >= i13 - 1 && fArr[i14] <= i13 + 1) {
                double dSin = Math.sin(radians);
                int i15 = i14 + 1;
                double d10 = rect.bottom - fArr[i15];
                Double.isNaN(d10);
                iAbs4 = (int) Math.abs(dSin * d10);
                double dCos = Math.cos(radians);
                double d11 = fArr[i15] - rect.top;
                Double.isNaN(d11);
                iAbs2 = (int) Math.abs(dCos * d11);
                double d12 = fArr[i15] - rect.top;
                double dSin2 = Math.sin(radians);
                Double.isNaN(d12);
                iAbs3 = (int) Math.abs(d12 / dSin2);
                double d13 = rect.bottom - fArr[i15];
                double dCos2 = Math.cos(radians);
                Double.isNaN(d13);
                iAbs = (int) Math.abs(d13 / dCos2);
                break;
            }
            i14 += 2;
        }
        rect.set(iAbs4, iAbs2, iAbs3 + iAbs4, iAbs + iAbs2);
        if (z10) {
            n(rect, i11, i12);
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, rect.left, rect.top, rect.width(), rect.height());
        if (bitmap != bitmapCreateBitmap) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }

    private static Bitmap j(ContentResolver contentResolver, Uri uri, BitmapFactory.Options options) throws FileNotFoundException {
        do {
            InputStream inputStreamOpenInputStream = null;
            try {
                try {
                    inputStreamOpenInputStream = contentResolver.openInputStream(uri);
                    return BitmapFactory.decodeStream(inputStreamOpenInputStream, f27342a, options);
                } catch (OutOfMemoryError unused) {
                    options.inSampleSize *= 2;
                    c(inputStreamOpenInputStream);
                }
            } finally {
                c(inputStreamOpenInputStream);
            }
        } while (options.inSampleSize <= 512);
        throw new RuntimeException("Failed to decode image: " + uri);
    }

    private static BitmapFactory.Options k(ContentResolver contentResolver, Uri uri) throws Throwable {
        InputStream inputStreamOpenInputStream;
        try {
            inputStreamOpenInputStream = contentResolver.openInputStream(uri);
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeStream(inputStreamOpenInputStream, f27342a, options);
                options.inJustDecodeBounds = false;
                c(inputStreamOpenInputStream);
                return options;
            } catch (Throwable th) {
                th = th;
                c(inputStreamOpenInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStreamOpenInputStream = null;
        }
    }

    static a l(Context context, Uri uri, int i10, int i11) throws Throwable {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            BitmapFactory.Options optionsK = k(contentResolver, uri);
            int i12 = optionsK.outWidth;
            if (i12 == -1 && optionsK.outHeight == -1) {
                throw new RuntimeException("File is not a picture");
            }
            optionsK.inSampleSize = Math.max(b(i12, optionsK.outHeight, i10, i11), a(optionsK.outWidth, optionsK.outHeight));
            return new a(j(contentResolver, uri, optionsK), optionsK.inSampleSize);
        } catch (Exception e10) {
            throw new RuntimeException("Failed to load sampled bitmap: " + uri + "\r\n" + e10.getMessage(), e10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.theartofdev.edmodo.cropper.c.a m(android.content.Context r4, android.net.Uri r5, android.graphics.Rect r6, int r7, int r8, int r9) throws java.lang.Throwable {
        /*
            r0 = 0
            android.graphics.BitmapFactory$Options r1 = new android.graphics.BitmapFactory$Options     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5d
            r1.<init>()     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5d
            int r2 = r6.width()     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5d
            int r3 = r6.height()     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5d
            int r7 = b(r2, r3, r7, r8)     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5d
            int r9 = r9 * r7
            r1.inSampleSize = r9     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5d
            android.content.ContentResolver r4 = r4.getContentResolver()     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5d
            java.io.InputStream r4 = r4.openInputStream(r5)     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5d
            r7 = 0
            android.graphics.BitmapRegionDecoder r7 = android.graphics.BitmapRegionDecoder.newInstance(r4, r7)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L56
        L23:
            com.theartofdev.edmodo.cropper.c$a r8 = new com.theartofdev.edmodo.cropper.c$a     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37 java.lang.OutOfMemoryError -> L39
            android.graphics.Bitmap r9 = r7.decodeRegion(r6, r1)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37 java.lang.OutOfMemoryError -> L39
            int r2 = r1.inSampleSize     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37 java.lang.OutOfMemoryError -> L39
            r8.<init>(r9, r2)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37 java.lang.OutOfMemoryError -> L39
            c(r4)
            r7.recycle()
            return r8
        L35:
            r5 = move-exception
            goto L54
        L37:
            r6 = move-exception
            goto L58
        L39:
            int r8 = r1.inSampleSize     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
            int r8 = r8 * 2
            r1.inSampleSize = r8     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
            r9 = 512(0x200, float:7.17E-43)
            if (r8 <= r9) goto L23
            c(r4)
            if (r7 == 0) goto L4b
            r7.recycle()
        L4b:
            com.theartofdev.edmodo.cropper.c$a r4 = new com.theartofdev.edmodo.cropper.c$a
            r5 = 1
            r4.<init>(r0, r5)
            return r4
        L52:
            r5 = move-exception
            r7 = r0
        L54:
            r0 = r4
            goto L83
        L56:
            r6 = move-exception
            r7 = r0
        L58:
            r0 = r4
            goto L5f
        L5a:
            r5 = move-exception
            r7 = r0
            goto L83
        L5d:
            r6 = move-exception
            r7 = r0
        L5f:
            java.lang.RuntimeException r4 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> L82
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L82
            r8.<init>()     // Catch: java.lang.Throwable -> L82
            java.lang.String r9 = "Failed to load sampled bitmap: "
            r8.append(r9)     // Catch: java.lang.Throwable -> L82
            r8.append(r5)     // Catch: java.lang.Throwable -> L82
            java.lang.String r5 = "\r\n"
            r8.append(r5)     // Catch: java.lang.Throwable -> L82
            java.lang.String r5 = r6.getMessage()     // Catch: java.lang.Throwable -> L82
            r8.append(r5)     // Catch: java.lang.Throwable -> L82
            java.lang.String r5 = r8.toString()     // Catch: java.lang.Throwable -> L82
            r4.<init>(r5, r6)     // Catch: java.lang.Throwable -> L82
            throw r4     // Catch: java.lang.Throwable -> L82
        L82:
            r5 = move-exception
        L83:
            c(r0)
            if (r7 == 0) goto L8b
            r7.recycle()
        L8b:
            goto L8d
        L8c:
            throw r5
        L8d:
            goto L8c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.theartofdev.edmodo.cropper.c.m(android.content.Context, android.net.Uri, android.graphics.Rect, int, int, int):com.theartofdev.edmodo.cropper.c$a");
    }

    private static void n(Rect rect, int i10, int i11) {
        if (i10 != i11 || rect.width() == rect.height()) {
            return;
        }
        if (rect.height() > rect.width()) {
            rect.bottom -= rect.height() - rect.width();
        } else {
            rect.right -= rect.width() - rect.height();
        }
    }

    private static int o() {
        try {
            EGL10 egl10 = (EGL10) EGLContext.getEGL();
            EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            egl10.eglInitialize(eGLDisplayEglGetDisplay, new int[2]);
            int[] iArr = new int[1];
            egl10.eglGetConfigs(eGLDisplayEglGetDisplay, null, 0, iArr);
            EGLConfig[] eGLConfigArr = new EGLConfig[iArr[0]];
            egl10.eglGetConfigs(eGLDisplayEglGetDisplay, eGLConfigArr, iArr[0], iArr);
            int[] iArr2 = new int[1];
            int i10 = 0;
            for (int i11 = 0; i11 < iArr[0]; i11++) {
                egl10.eglGetConfigAttrib(eGLDisplayEglGetDisplay, eGLConfigArr[i11], 12332, iArr2);
                if (i10 < iArr2[0]) {
                    i10 = iArr2[0];
                }
            }
            egl10.eglTerminate(eGLDisplayEglGetDisplay);
            return Math.max(i10, 2048);
        } catch (Exception unused) {
            return 2048;
        }
    }

    static float p(float[] fArr) {
        return Math.max(Math.max(Math.max(fArr[1], fArr[3]), fArr[5]), fArr[7]);
    }

    static float q(float[] fArr) {
        return (v(fArr) + u(fArr)) / 2.0f;
    }

    static float r(float[] fArr) {
        return (p(fArr) + w(fArr)) / 2.0f;
    }

    static Rect s(float[] fArr, int i10, int i11, boolean z10, int i12, int i13) {
        Rect rect = new Rect(Math.round(Math.max(0.0f, u(fArr))), Math.round(Math.max(0.0f, w(fArr))), Math.round(Math.min(i10, v(fArr))), Math.round(Math.min(i11, p(fArr))));
        if (z10) {
            n(rect, i12, i13);
        }
        return rect;
    }

    static float t(float[] fArr) {
        return p(fArr) - w(fArr);
    }

    static float u(float[] fArr) {
        return Math.min(Math.min(Math.min(fArr[0], fArr[2]), fArr[4]), fArr[6]);
    }

    static float v(float[] fArr) {
        return Math.max(Math.max(Math.max(fArr[0], fArr[2]), fArr[4]), fArr[6]);
    }

    static float w(float[] fArr) {
        return Math.min(Math.min(Math.min(fArr[1], fArr[3]), fArr[5]), fArr[7]);
    }

    static float x(float[] fArr) {
        return v(fArr) - u(fArr);
    }

    static Bitmap y(Bitmap bitmap, int i10, int i11, CropImageView.j jVar) {
        if (i10 > 0 && i11 > 0) {
            try {
                CropImageView.j jVar2 = CropImageView.j.RESIZE_FIT;
                if (jVar == jVar2 || jVar == CropImageView.j.RESIZE_INSIDE || jVar == CropImageView.j.RESIZE_EXACT) {
                    Bitmap bitmapCreateScaledBitmap = null;
                    if (jVar == CropImageView.j.RESIZE_EXACT) {
                        bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, i10, i11, false);
                    } else {
                        float width = bitmap.getWidth();
                        float height = bitmap.getHeight();
                        float fMax = Math.max(width / i10, height / i11);
                        if (fMax > 1.0f || jVar == jVar2) {
                            bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) (width / fMax), (int) (height / fMax), false);
                        }
                    }
                    if (bitmapCreateScaledBitmap != null) {
                        if (bitmapCreateScaledBitmap != bitmap) {
                            bitmap.recycle();
                        }
                        return bitmapCreateScaledBitmap;
                    }
                }
            } catch (Exception e10) {
                Log.w("AIC", "Failed to resize cropped image, return bitmap before resize", e10);
            }
        }
        return bitmap;
    }

    private static Bitmap z(Bitmap bitmap, int i10, boolean z10, boolean z11) {
        if (i10 <= 0 && !z10 && !z11) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.setRotate(i10);
        matrix.postScale(z10 ? -1.0f : 1.0f, z11 ? -1.0f : 1.0f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, false);
        if (bitmapCreateBitmap != bitmap) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }
}
