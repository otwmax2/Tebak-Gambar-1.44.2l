package f8;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import f8.t;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: RequestHandler.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class y {

    /* JADX INFO: compiled from: RequestHandler.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final t.e f29512a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Bitmap f29513b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final InputStream f29514c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f29515d;

        public a(Bitmap bitmap, t.e eVar) {
            this((Bitmap) e0.d(bitmap, "bitmap == null"), null, eVar, 0);
        }

        public Bitmap a() {
            return this.f29513b;
        }

        int b() {
            return this.f29515d;
        }

        public t.e c() {
            return this.f29512a;
        }

        public InputStream d() {
            return this.f29514c;
        }

        public a(InputStream inputStream, t.e eVar) {
            this(null, (InputStream) e0.d(inputStream, "stream == null"), eVar, 0);
        }

        a(Bitmap bitmap, InputStream inputStream, t.e eVar, int i10) {
            if ((inputStream != null) ^ (bitmap != null)) {
                this.f29513b = bitmap;
                this.f29514c = inputStream;
                this.f29512a = (t.e) e0.d(eVar, "loadedFrom == null");
                this.f29515d = i10;
                return;
            }
            throw new AssertionError();
        }
    }

    static void a(int i10, int i11, int i12, int i13, BitmapFactory.Options options, w wVar) {
        int iMax;
        double dFloor;
        if (i13 > i11 || i12 > i10) {
            if (i11 == 0) {
                dFloor = Math.floor(i12 / i10);
            } else if (i10 == 0) {
                dFloor = Math.floor(i13 / i11);
            } else {
                int iFloor = (int) Math.floor(i13 / i11);
                int iFloor2 = (int) Math.floor(i12 / i10);
                iMax = wVar.f29476k ? Math.max(iFloor, iFloor2) : Math.min(iFloor, iFloor2);
            }
            iMax = (int) dFloor;
        } else {
            iMax = 1;
        }
        options.inSampleSize = iMax;
        options.inJustDecodeBounds = false;
    }

    static void b(int i10, int i11, BitmapFactory.Options options, w wVar) {
        a(i10, i11, options.outWidth, options.outHeight, options, wVar);
    }

    static BitmapFactory.Options d(w wVar) {
        boolean zC = wVar.c();
        boolean z10 = wVar.f29482q != null;
        BitmapFactory.Options options = null;
        if (zC || z10) {
            options = new BitmapFactory.Options();
            options.inJustDecodeBounds = zC;
            if (z10) {
                options.inPreferredConfig = wVar.f29482q;
            }
        }
        return options;
    }

    static boolean g(BitmapFactory.Options options) {
        return options != null && options.inJustDecodeBounds;
    }

    public abstract boolean c(w wVar);

    int e() {
        return 0;
    }

    public abstract a f(w wVar, int i10) throws IOException;

    boolean h(boolean z10, NetworkInfo networkInfo) {
        return false;
    }

    boolean i() {
        return false;
    }
}
