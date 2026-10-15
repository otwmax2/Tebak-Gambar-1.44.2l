package y1;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.Log;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: AnimatedGifEncoder.java */
/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f36567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f36568b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f36570d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private OutputStream f36574h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Bitmap f36575i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private byte[] f36576j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private byte[] f36577k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f36578l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private byte[] f36579m;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f36587u;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Integer f36569c = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f36571e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f36572f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f36573g = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean[] f36580n = new boolean[256];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f36581o = 7;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f36582p = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f36583q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f36584r = true;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f36585s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f36586t = 10;

    private void b() {
        byte[] bArr = this.f36576j;
        int length = bArr.length;
        int i10 = length / 3;
        this.f36577k = new byte[i10];
        c cVar = new c(bArr, length, this.f36586t);
        this.f36579m = cVar.h();
        int i11 = 0;
        while (true) {
            byte[] bArr2 = this.f36579m;
            if (i11 >= bArr2.length) {
                break;
            }
            byte b10 = bArr2[i11];
            int i12 = i11 + 2;
            bArr2[i11] = bArr2[i12];
            bArr2[i12] = b10;
            this.f36580n[i11 / 3] = false;
            i11 += 3;
        }
        int i13 = 0;
        int i14 = 0;
        while (i13 < i10) {
            byte[] bArr3 = this.f36576j;
            int i15 = i14 + 1;
            int i16 = i15 + 1;
            int iG = cVar.g(bArr3[i14] & 255, bArr3[i15] & 255, bArr3[i16] & 255);
            this.f36580n[iG] = true;
            this.f36577k[i13] = (byte) iG;
            i13++;
            i14 = i16 + 1;
        }
        this.f36576j = null;
        this.f36578l = 8;
        this.f36581o = 7;
        Integer num = this.f36569c;
        if (num != null) {
            this.f36570d = c(num.intValue());
        } else if (this.f36587u) {
            this.f36570d = c(0);
        }
    }

    private int c(int i10) {
        if (this.f36579m == null) {
            return -1;
        }
        int iRed = Color.red(i10);
        int iGreen = Color.green(i10);
        int iBlue = Color.blue(i10);
        int i11 = 16777216;
        int length = this.f36579m.length;
        int i12 = 0;
        int i13 = 0;
        while (i12 < length) {
            byte[] bArr = this.f36579m;
            int i14 = i12 + 1;
            int i15 = iRed - (bArr[i12] & 255);
            int i16 = i14 + 1;
            int i17 = iGreen - (bArr[i14] & 255);
            int i18 = iBlue - (bArr[i16] & 255);
            int i19 = (i15 * i15) + (i17 * i17) + (i18 * i18);
            int i20 = i16 / 3;
            if (this.f36580n[i20] && i19 < i11) {
                i11 = i19;
                i13 = i20;
            }
            i12 = i16 + 1;
        }
        return i13;
    }

    private void e() {
        int width = this.f36575i.getWidth();
        int height = this.f36575i.getHeight();
        int i10 = this.f36567a;
        if (width != i10 || height != this.f36568b) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, this.f36568b, Bitmap.Config.ARGB_8888);
            new Canvas(bitmapCreateBitmap).drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, (Paint) null);
            this.f36575i = bitmapCreateBitmap;
        }
        int i11 = width * height;
        int[] iArr = new int[i11];
        this.f36575i.getPixels(iArr, 0, width, 0, 0, width, height);
        this.f36576j = new byte[i11 * 3];
        this.f36587u = false;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i12 < i11) {
            int i15 = iArr[i12];
            if (i15 == 0) {
                i13++;
            }
            byte[] bArr = this.f36576j;
            int i16 = i14 + 1;
            bArr[i14] = (byte) (i15 & 255);
            int i17 = i16 + 1;
            bArr[i16] = (byte) ((i15 >> 8) & 255);
            bArr[i17] = (byte) ((i15 >> 16) & 255);
            i12++;
            i14 = i17 + 1;
        }
        double d10 = i13 * 100;
        double d11 = i11;
        Double.isNaN(d10);
        Double.isNaN(d11);
        double d12 = d10 / d11;
        this.f36587u = d12 > 4.0d;
        if (Log.isLoggable("AnimatedGifEncoder", 3)) {
            Log.d("AnimatedGifEncoder", "got pixels for frame with " + d12 + "% transparent pixels");
        }
    }

    private void i() throws IOException {
        int i10;
        int i11;
        this.f36574h.write(33);
        this.f36574h.write(249);
        this.f36574h.write(4);
        if (this.f36569c != null || this.f36587u) {
            i10 = 1;
            i11 = 2;
        } else {
            i10 = 0;
            i11 = 0;
        }
        int i12 = this.f36582p;
        if (i12 >= 0) {
            i11 = i12 & 7;
        }
        this.f36574h.write(i10 | (i11 << 2) | 0 | 0);
        o(this.f36572f);
        this.f36574h.write(this.f36570d);
        this.f36574h.write(0);
    }

    private void j() throws IOException {
        this.f36574h.write(44);
        o(0);
        o(0);
        o(this.f36567a);
        o(this.f36568b);
        if (this.f36584r) {
            this.f36574h.write(0);
        } else {
            this.f36574h.write(this.f36581o | 128);
        }
    }

    private void k() throws IOException {
        o(this.f36567a);
        o(this.f36568b);
        this.f36574h.write(this.f36581o | 240);
        this.f36574h.write(0);
        this.f36574h.write(0);
    }

    private void l() throws IOException {
        this.f36574h.write(33);
        this.f36574h.write(255);
        this.f36574h.write(11);
        p("NETSCAPE2.0");
        this.f36574h.write(3);
        this.f36574h.write(1);
        o(this.f36571e);
        this.f36574h.write(0);
    }

    private void m() throws IOException {
        OutputStream outputStream = this.f36574h;
        byte[] bArr = this.f36579m;
        outputStream.write(bArr, 0, bArr.length);
        int length = 768 - this.f36579m.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f36574h.write(0);
        }
    }

    private void n() throws IOException {
        new b(this.f36567a, this.f36568b, this.f36577k, this.f36578l).f(this.f36574h);
    }

    private void o(int i10) throws IOException {
        this.f36574h.write(i10 & 255);
        this.f36574h.write((i10 >> 8) & 255);
    }

    private void p(String str) throws IOException {
        for (int i10 = 0; i10 < str.length(); i10++) {
            this.f36574h.write((byte) str.charAt(i10));
        }
    }

    public boolean a(Bitmap bitmap) {
        if (bitmap == null || !this.f36573g) {
            return false;
        }
        try {
            if (!this.f36585s) {
                g(bitmap.getWidth(), bitmap.getHeight());
            }
            this.f36575i = bitmap;
            e();
            b();
            if (this.f36584r) {
                k();
                m();
                if (this.f36571e >= 0) {
                    l();
                }
            }
            i();
            j();
            if (!this.f36584r) {
                m();
            }
            n();
            this.f36584r = false;
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public boolean d() {
        boolean z10;
        if (!this.f36573g) {
            return false;
        }
        this.f36573g = false;
        try {
            this.f36574h.write(59);
            this.f36574h.flush();
            if (this.f36583q) {
                this.f36574h.close();
            }
            z10 = true;
        } catch (IOException unused) {
            z10 = false;
        }
        this.f36570d = 0;
        this.f36574h = null;
        this.f36575i = null;
        this.f36576j = null;
        this.f36577k = null;
        this.f36579m = null;
        this.f36583q = false;
        this.f36584r = true;
        return z10;
    }

    public void f(int i10) {
        this.f36572f = Math.round(i10 / 10.0f);
    }

    public void g(int i10, int i11) {
        if (!this.f36573g || this.f36584r) {
            this.f36567a = i10;
            this.f36568b = i11;
            if (i10 < 1) {
                this.f36567a = 320;
            }
            if (i11 < 1) {
                this.f36568b = 240;
            }
            this.f36585s = true;
        }
    }

    public boolean h(OutputStream outputStream) {
        boolean z10 = false;
        if (outputStream == null) {
            return false;
        }
        this.f36583q = false;
        this.f36574h = outputStream;
        try {
            p("GIF89a");
            z10 = true;
        } catch (IOException unused) {
        }
        this.f36573g = z10;
        return z10;
    }
}
