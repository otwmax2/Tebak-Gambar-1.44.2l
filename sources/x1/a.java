package x1;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;

/* JADX INFO: compiled from: GifDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f36195q = "a";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Bitmap.Config f36196r = Bitmap.Config.ARGB_8888;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int[] f36197a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ByteBuffer f36199c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private short[] f36201e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private byte[] f36202f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private byte[] f36203g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private byte[] f36204h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int[] f36205i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f36206j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private byte[] f36207k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private InterfaceC0293a f36209m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Bitmap f36210n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f36211o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f36212p;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f36198b = new int[256];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f36200d = new byte[256];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private c f36208l = new c();

    /* JADX INFO: renamed from: x1.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: GifDecoder.java */
    public interface InterfaceC0293a {
        Bitmap a(int i10, int i11, Bitmap.Config config);

        void b(Bitmap bitmap);
    }

    public a(InterfaceC0293a interfaceC0293a) {
        this.f36209m = interfaceC0293a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x012e A[PHI: r3
      0x012e: PHI (r3v11 int) = (r3v7 int), (r3v13 int) binds: [B:52:0x0116, B:54:0x0123] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v30, types: [short] */
    /* JADX WARN: Type inference failed for: r1v32 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void c(x1.b r27) {
        /*
            Method dump skipped, instruction units count: 373
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: x1.a.c(x1.b):void");
    }

    private Bitmap g() {
        InterfaceC0293a interfaceC0293a = this.f36209m;
        c cVar = this.f36208l;
        int i10 = cVar.f36229f;
        int i11 = cVar.f36230g;
        Bitmap.Config config = f36196r;
        Bitmap bitmapA = interfaceC0293a.a(i10, i11, config);
        if (bitmapA == null) {
            c cVar2 = this.f36208l;
            bitmapA = Bitmap.createBitmap(cVar2.f36229f, cVar2.f36230g, config);
        }
        m(bitmapA);
        return bitmapA;
    }

    private int k() {
        try {
            return this.f36199c.get() & 255;
        } catch (Exception unused) {
            this.f36212p = 1;
            return 0;
        }
    }

    private int l() {
        int iK = k();
        int i10 = 0;
        if (iK > 0) {
            while (i10 < iK) {
                int i11 = iK - i10;
                try {
                    this.f36199c.get(this.f36200d, i10, i11);
                    i10 += i11;
                } catch (Exception e10) {
                    Log.w(f36195q, "Error Reading Block", e10);
                    this.f36212p = 1;
                }
            }
        }
        return i10;
    }

    @TargetApi(12)
    private static void m(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 12) {
            bitmap.setHasAlpha(true);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private android.graphics.Bitmap o(x1.b r17, x1.b r18) {
        /*
            Method dump skipped, instruction units count: 239
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: x1.a.o(x1.b, x1.b):android.graphics.Bitmap");
    }

    public void a() {
        this.f36206j = (this.f36206j + 1) % this.f36208l.f36226c;
    }

    public void b() {
        this.f36208l = null;
        this.f36207k = null;
        this.f36204h = null;
        this.f36205i = null;
        Bitmap bitmap = this.f36210n;
        if (bitmap != null) {
            this.f36209m.b(bitmap);
        }
        this.f36210n = null;
        this.f36199c = null;
    }

    public int d() {
        return this.f36206j;
    }

    public int e(int i10) {
        if (i10 >= 0) {
            c cVar = this.f36208l;
            if (i10 < cVar.f36226c) {
                return cVar.f36228e.get(i10).f36221i;
            }
        }
        return -1;
    }

    public int f() {
        return this.f36208l.f36226c;
    }

    public int h() {
        int i10;
        if (this.f36208l.f36226c <= 0 || (i10 = this.f36206j) < 0) {
            return -1;
        }
        return e(i10);
    }

    public synchronized Bitmap i() {
        if (this.f36208l.f36226c <= 0 || this.f36206j < 0) {
            String str = f36195q;
            if (Log.isLoggable(str, 3)) {
                Log.d(str, "unable to decode frame, frameCount=" + this.f36208l.f36226c + " framePointer=" + this.f36206j);
            }
            this.f36212p = 1;
        }
        int i10 = this.f36212p;
        if (i10 != 1 && i10 != 2) {
            this.f36212p = 0;
            b bVar = this.f36208l.f36228e.get(this.f36206j);
            int i11 = this.f36206j - 1;
            b bVar2 = i11 >= 0 ? this.f36208l.f36228e.get(i11) : null;
            int[] iArr = bVar.f36223k;
            if (iArr == null) {
                iArr = this.f36208l.f36224a;
            }
            this.f36197a = iArr;
            if (iArr == null) {
                String str2 = f36195q;
                if (Log.isLoggable(str2, 3)) {
                    Log.d(str2, "No Valid Color Table");
                }
                this.f36212p = 1;
                return null;
            }
            if (bVar.f36218f) {
                System.arraycopy(iArr, 0, this.f36198b, 0, iArr.length);
                int[] iArr2 = this.f36198b;
                this.f36197a = iArr2;
                iArr2[bVar.f36220h] = 0;
            }
            return o(bVar, bVar2);
        }
        String str3 = f36195q;
        if (Log.isLoggable(str3, 3)) {
            Log.d(str3, "Unable to decode frame, status=" + this.f36212p);
        }
        return null;
    }

    public int j() {
        int i10 = this.f36208l.f36236m;
        if (i10 == -1) {
            return 1;
        }
        if (i10 == 0) {
            return 0;
        }
        return i10 + 1;
    }

    public void n(c cVar, byte[] bArr) {
        this.f36208l = cVar;
        this.f36207k = bArr;
        this.f36212p = 0;
        this.f36206j = -1;
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        this.f36199c = byteBufferWrap;
        byteBufferWrap.rewind();
        this.f36199c.order(ByteOrder.LITTLE_ENDIAN);
        this.f36211o = false;
        Iterator<b> it = cVar.f36228e.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().f36219g == 3) {
                this.f36211o = true;
                break;
            }
        }
        int i10 = cVar.f36229f;
        int i11 = cVar.f36230g;
        this.f36204h = new byte[i10 * i11];
        this.f36205i = new int[i10 * i11];
    }
}
