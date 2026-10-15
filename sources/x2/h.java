package x2;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Looper;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;

/* JADX INFO: compiled from: Util.java */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f36256a = "0123456789abcdef".toCharArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final char[] f36257b = new char[64];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final char[] f36258c = new char[40];

    /* JADX INFO: compiled from: Util.java */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f36259a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f36259a = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f36259a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f36259a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f36259a[Bitmap.Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static void a() {
        if (!i()) {
            throw new IllegalArgumentException("YOu must call this method on a background thread");
        }
    }

    public static void b() {
        if (!j()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    private static String c(byte[] bArr, char[] cArr) {
        for (int i10 = 0; i10 < bArr.length; i10++) {
            int i11 = bArr[i10] & 255;
            int i12 = i10 * 2;
            char[] cArr2 = f36256a;
            cArr[i12] = cArr2[i11 >>> 4];
            cArr[i12 + 1] = cArr2[i11 & 15];
        }
        return new String(cArr);
    }

    public static <T> Queue<T> d(int i10) {
        return new ArrayDeque(i10);
    }

    public static int e(int i10, int i11, Bitmap.Config config) {
        return i10 * i11 * g(config);
    }

    @TargetApi(19)
    public static int f(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException unused) {
            }
        }
        return bitmap.getHeight() * bitmap.getRowBytes();
    }

    private static int g(Bitmap.Config config) {
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i10 = a.f36259a[config.ordinal()];
        if (i10 != 1) {
            return (i10 == 2 || i10 == 3) ? 2 : 4;
        }
        return 1;
    }

    public static <T> List<T> h(Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public static boolean i() {
        return !j();
    }

    public static boolean j() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    private static boolean k(int i10) {
        return i10 > 0 || i10 == Integer.MIN_VALUE;
    }

    public static boolean l(int i10, int i11) {
        return k(i10) && k(i11);
    }

    public static String m(byte[] bArr) {
        String strC;
        char[] cArr = f36257b;
        synchronized (cArr) {
            strC = c(bArr, cArr);
        }
        return strC;
    }
}
