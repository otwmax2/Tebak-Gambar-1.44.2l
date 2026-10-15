package k2;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.util.EnumSet;
import java.util.Queue;
import java.util.Set;
import k2.l;

/* JADX INFO: compiled from: Downsampler.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class f implements k2.a<InputStream> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Set<l.a> f31313a = EnumSet.of(l.a.JPEG, l.a.PNG_A, l.a.PNG);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Queue<BitmapFactory.Options> f31314b = x2.h.d(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final f f31315c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final f f31316d = new b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final f f31317e = new c();

    /* JADX INFO: compiled from: Downsampler.java */
    static class a extends f {
        a() {
        }

        @Override // k2.a
        public String a() {
            return "AT_LEAST.com.bumptech.glide.load.data.bitmap";
        }

        @Override // k2.f
        protected int i(int i10, int i11, int i12, int i13) {
            return Math.min(i11 / i13, i10 / i12);
        }
    }

    /* JADX INFO: compiled from: Downsampler.java */
    static class b extends f {
        b() {
        }

        @Override // k2.a
        public String a() {
            return "AT_MOST.com.bumptech.glide.load.data.bitmap";
        }

        @Override // k2.f
        protected int i(int i10, int i11, int i12, int i13) {
            int iCeil = (int) Math.ceil(Math.max(i11 / i13, i10 / i12));
            int iMax = Math.max(1, Integer.highestOneBit(iCeil));
            return iMax << (iMax >= iCeil ? 0 : 1);
        }
    }

    /* JADX INFO: compiled from: Downsampler.java */
    static class c extends f {
        c() {
        }

        @Override // k2.a
        public String a() {
            return "NONE.com.bumptech.glide.load.data.bitmap";
        }

        @Override // k2.f
        protected int i(int i10, int i11, int i12, int i13) {
            return 0;
        }
    }

    private static Bitmap c(x2.f fVar, o oVar, BitmapFactory.Options options) {
        if (options.inJustDecodeBounds) {
            fVar.mark(5242880);
        } else {
            oVar.c();
        }
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(fVar, null, options);
        try {
            if (options.inJustDecodeBounds) {
                fVar.reset();
            }
        } catch (IOException e10) {
            if (Log.isLoggable("Downsampler", 6)) {
                Log.e("Downsampler", "Exception loading inDecodeBounds=" + options.inJustDecodeBounds + " sample=" + options.inSampleSize, e10);
            }
        }
        return bitmapDecodeStream;
    }

    private Bitmap d(x2.f fVar, o oVar, BitmapFactory.Options options, c2.c cVar, int i10, int i11, int i12, z1.a aVar) {
        Bitmap.Config configE = e(fVar, aVar);
        options.inSampleSize = i12;
        options.inPreferredConfig = configE;
        if ((i12 == 1 || 19 <= Build.VERSION.SDK_INT) && m(fVar)) {
            double d10 = i10;
            double d11 = i12;
            Double.isNaN(d10);
            Double.isNaN(d11);
            int iCeil = (int) Math.ceil(d10 / d11);
            double d12 = i11;
            Double.isNaN(d12);
            Double.isNaN(d11);
            l(options, cVar.e(iCeil, (int) Math.ceil(d12 / d11), configE));
        }
        return c(fVar, oVar, options);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002e A[PHI: r2 r7
      0x002e: PHI (r2v6 boolean) = (r2v3 boolean), (r2v8 boolean) binds: [B:27:0x0058, B:15:0x002c] A[DONT_GENERATE, DONT_INLINE]
      0x002e: PHI (r7v4 'e' java.io.IOException) = (r7v2 'e' java.io.IOException), (r7v7 'e' java.io.IOException) binds: [B:27:0x0058, B:15:0x002c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.graphics.Bitmap.Config e(java.io.InputStream r7, z1.a r8) {
        /*
            java.lang.String r0 = "Cannot reset the input stream"
            java.lang.String r1 = "Downsampler"
            z1.a r2 = z1.a.ALWAYS_ARGB_8888
            if (r8 == r2) goto L72
            z1.a r2 = z1.a.PREFER_ARGB_8888
            if (r8 == r2) goto L72
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 16
            if (r2 != r3) goto L13
            goto L72
        L13:
            r2 = 0
            r3 = 1024(0x400, float:1.435E-42)
            r7.mark(r3)
            r3 = 5
            k2.l r4 = new k2.l     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            r4.<init>(r7)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            boolean r2 = r4.f()     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            r7.reset()     // Catch: java.io.IOException -> L27
            goto L5b
        L27:
            r7 = move-exception
            boolean r8 = android.util.Log.isLoggable(r1, r3)
            if (r8 == 0) goto L5b
        L2e:
            android.util.Log.w(r1, r0, r7)
            goto L5b
        L32:
            r8 = move-exception
            goto L63
        L34:
            r4 = move-exception
            boolean r5 = android.util.Log.isLoggable(r1, r3)     // Catch: java.lang.Throwable -> L32
            if (r5 == 0) goto L4f
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L32
            r5.<init>()     // Catch: java.lang.Throwable -> L32
            java.lang.String r6 = "Cannot determine whether the image has alpha or not from header for format "
            r5.append(r6)     // Catch: java.lang.Throwable -> L32
            r5.append(r8)     // Catch: java.lang.Throwable -> L32
            java.lang.String r8 = r5.toString()     // Catch: java.lang.Throwable -> L32
            android.util.Log.w(r1, r8, r4)     // Catch: java.lang.Throwable -> L32
        L4f:
            r7.reset()     // Catch: java.io.IOException -> L53
            goto L5b
        L53:
            r7 = move-exception
            boolean r8 = android.util.Log.isLoggable(r1, r3)
            if (r8 == 0) goto L5b
            goto L2e
        L5b:
            if (r2 == 0) goto L60
            android.graphics.Bitmap$Config r7 = android.graphics.Bitmap.Config.ARGB_8888
            goto L62
        L60:
            android.graphics.Bitmap$Config r7 = android.graphics.Bitmap.Config.RGB_565
        L62:
            return r7
        L63:
            r7.reset()     // Catch: java.io.IOException -> L67
            goto L71
        L67:
            r7 = move-exception
            boolean r2 = android.util.Log.isLoggable(r1, r3)
            if (r2 == 0) goto L71
            android.util.Log.w(r1, r0, r7)
        L71:
            throw r8
        L72:
            android.graphics.Bitmap$Config r7 = android.graphics.Bitmap.Config.ARGB_8888
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: k2.f.e(java.io.InputStream, z1.a):android.graphics.Bitmap$Config");
    }

    @TargetApi(11)
    private static synchronized BitmapFactory.Options f() {
        BitmapFactory.Options optionsPoll;
        Queue<BitmapFactory.Options> queue = f31314b;
        synchronized (queue) {
            optionsPoll = queue.poll();
        }
        if (optionsPoll == null) {
            optionsPoll = new BitmapFactory.Options();
            k(optionsPoll);
        }
        return optionsPoll;
    }

    private int h(int i10, int i11, int i12, int i13, int i14) {
        if (i14 == Integer.MIN_VALUE) {
            i14 = i12;
        }
        if (i13 == Integer.MIN_VALUE) {
            i13 = i11;
        }
        int i15 = (i10 == 90 || i10 == 270) ? i(i12, i11, i13, i14) : i(i11, i12, i13, i14);
        return Math.max(1, i15 == 0 ? 0 : Integer.highestOneBit(i15));
    }

    private static void j(BitmapFactory.Options options) {
        k(options);
        Queue<BitmapFactory.Options> queue = f31314b;
        synchronized (queue) {
            queue.offer(options);
        }
    }

    @TargetApi(11)
    private static void k(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        if (11 <= Build.VERSION.SDK_INT) {
            options.inBitmap = null;
            options.inMutable = true;
        }
    }

    @TargetApi(11)
    private static void l(BitmapFactory.Options options, Bitmap bitmap) {
        if (11 <= Build.VERSION.SDK_INT) {
            options.inBitmap = bitmap;
        }
    }

    private static boolean m(InputStream inputStream) {
        if (19 <= Build.VERSION.SDK_INT) {
            return true;
        }
        inputStream.mark(1024);
        try {
            try {
                return f31313a.contains(new l(inputStream).d());
            } finally {
                try {
                    inputStream.reset();
                } catch (IOException e10) {
                    if (Log.isLoggable("Downsampler", 5)) {
                        Log.w("Downsampler", "Cannot reset the input stream", e10);
                    }
                }
            }
        } catch (IOException e11) {
            if (Log.isLoggable("Downsampler", 5)) {
                Log.w("Downsampler", "Cannot determine the image type from header", e11);
            }
            try {
                inputStream.reset();
                return false;
            } catch (IOException e12) {
                if (!Log.isLoggable("Downsampler", 5)) {
                    return false;
                }
                Log.w("Downsampler", "Cannot reset the input stream", e12);
                return false;
            }
        }
    }

    public Bitmap b(InputStream inputStream, c2.c cVar, int i10, int i11, z1.a aVar) {
        int i12;
        x2.a aVarA = x2.a.a();
        byte[] bArrB = aVarA.b();
        byte[] bArrB2 = aVarA.b();
        BitmapFactory.Options optionsF = f();
        o oVar = new o(inputStream, bArrB2);
        x2.c cVarC = x2.c.c(oVar);
        x2.f fVar = new x2.f(cVarC);
        try {
            cVarC.mark(5242880);
            try {
                try {
                    int iC = new l(cVarC).c();
                    try {
                        cVarC.reset();
                    } catch (IOException e10) {
                        if (Log.isLoggable("Downsampler", 5)) {
                            Log.w("Downsampler", "Cannot reset the input stream", e10);
                        }
                    }
                    i12 = iC;
                } finally {
                }
            } catch (IOException e11) {
                if (Log.isLoggable("Downsampler", 5)) {
                    Log.w("Downsampler", "Cannot determine the image orientation from header", e11);
                }
                try {
                    cVarC.reset();
                } catch (IOException e12) {
                    if (Log.isLoggable("Downsampler", 5)) {
                        Log.w("Downsampler", "Cannot reset the input stream", e12);
                    }
                }
                i12 = 0;
            }
            optionsF.inTempStorage = bArrB;
            int[] iArrG = g(fVar, oVar, optionsF);
            int i13 = iArrG[0];
            int i14 = iArrG[1];
            Bitmap bitmapD = d(fVar, oVar, optionsF, cVar, i13, i14, h(r.c(i12), i13, i14, i10, i11), aVar);
            IOException iOExceptionB = cVarC.b();
            if (iOExceptionB != null) {
                throw new RuntimeException(iOExceptionB);
            }
            Bitmap bitmapF = null;
            if (bitmapD != null) {
                bitmapF = r.f(bitmapD, cVar, i12);
                if (!bitmapD.equals(bitmapF) && !cVar.a(bitmapD)) {
                    bitmapD.recycle();
                }
            }
            return bitmapF;
        } finally {
            aVarA.c(bArrB);
            aVarA.c(bArrB2);
            cVarC.d();
            j(optionsF);
        }
    }

    public int[] g(x2.f fVar, o oVar, BitmapFactory.Options options) {
        options.inJustDecodeBounds = true;
        c(fVar, oVar, options);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    protected abstract int i(int i10, int i11, int i12, int i13);
}
