package x1;

import android.util.Log;
import com.vungle.mediation.BuildConfig;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX INFO: compiled from: GifHeaderParser.java */
/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ByteBuffer f36238b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f36239c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f36237a = new byte[256];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f36240d = 0;

    private boolean b() {
        return this.f36239c.f36225b != 0;
    }

    private int d() {
        try {
            return this.f36238b.get() & 255;
        } catch (Exception unused) {
            this.f36239c.f36225b = 1;
            return 0;
        }
    }

    private void e() {
        this.f36239c.f36227d.f36213a = m();
        this.f36239c.f36227d.f36214b = m();
        this.f36239c.f36227d.f36215c = m();
        this.f36239c.f36227d.f36216d = m();
        int iD = d();
        boolean z10 = (iD & 128) != 0;
        int iPow = (int) Math.pow(2.0d, (iD & 7) + 1);
        b bVar = this.f36239c.f36227d;
        bVar.f36217e = (iD & 64) != 0;
        if (z10) {
            bVar.f36223k = g(iPow);
        } else {
            bVar.f36223k = null;
        }
        this.f36239c.f36227d.f36222j = this.f36238b.position();
        q();
        if (b()) {
            return;
        }
        c cVar = this.f36239c;
        cVar.f36226c++;
        cVar.f36228e.add(cVar.f36227d);
    }

    private int f() {
        int iD = d();
        this.f36240d = iD;
        int i10 = 0;
        if (iD > 0) {
            int i11 = 0;
            while (true) {
                try {
                    i11 = this.f36240d;
                    if (i10 >= i11) {
                        break;
                    }
                    i11 -= i10;
                    this.f36238b.get(this.f36237a, i10, i11);
                    i10 += i11;
                } catch (Exception e10) {
                    if (Log.isLoggable("GifHeaderParser", 3)) {
                        Log.d("GifHeaderParser", "Error Reading Block n: " + i10 + " count: " + i11 + " blockSize: " + this.f36240d, e10);
                    }
                    this.f36239c.f36225b = 1;
                }
            }
        }
        return i10;
    }

    private int[] g(int i10) {
        byte[] bArr = new byte[i10 * 3];
        int[] iArr = null;
        try {
            this.f36238b.get(bArr);
            iArr = new int[256];
            int i11 = 0;
            int i12 = 0;
            while (i11 < i10) {
                int i13 = i12 + 1;
                int i14 = i13 + 1;
                int i15 = i14 + 1;
                int i16 = i11 + 1;
                iArr[i11] = ((bArr[i12] & 255) << 16) | (-16777216) | ((bArr[i13] & 255) << 8) | (bArr[i14] & 255);
                i12 = i15;
                i11 = i16;
            }
        } catch (BufferUnderflowException e10) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
                Log.d("GifHeaderParser", "Format Error Reading Color Table", e10);
            }
            this.f36239c.f36225b = 1;
        }
        return iArr;
    }

    private void h() {
        boolean z10 = false;
        while (!z10 && !b()) {
            int iD = d();
            if (iD == 33) {
                int iD2 = d();
                if (iD2 == 1) {
                    p();
                } else if (iD2 == 249) {
                    this.f36239c.f36227d = new b();
                    i();
                } else if (iD2 == 254) {
                    p();
                } else if (iD2 != 255) {
                    p();
                } else {
                    f();
                    String str = BuildConfig.FLAVOR;
                    for (int i10 = 0; i10 < 11; i10++) {
                        str = str + ((char) this.f36237a[i10]);
                    }
                    if (str.equals("NETSCAPE2.0")) {
                        l();
                    } else {
                        p();
                    }
                }
            } else if (iD == 44) {
                c cVar = this.f36239c;
                if (cVar.f36227d == null) {
                    cVar.f36227d = new b();
                }
                e();
            } else if (iD != 59) {
                this.f36239c.f36225b = 1;
            } else {
                z10 = true;
            }
        }
    }

    private void i() {
        d();
        int iD = d();
        b bVar = this.f36239c.f36227d;
        int i10 = (iD & 28) >> 2;
        bVar.f36219g = i10;
        if (i10 == 0) {
            bVar.f36219g = 1;
        }
        bVar.f36218f = (iD & 1) != 0;
        int iM = m();
        if (iM < 3) {
            iM = 10;
        }
        b bVar2 = this.f36239c.f36227d;
        bVar2.f36221i = iM * 10;
        bVar2.f36220h = d();
        d();
    }

    private void j() {
        String str = BuildConfig.FLAVOR;
        for (int i10 = 0; i10 < 6; i10++) {
            str = str + ((char) d());
        }
        if (!str.startsWith("GIF")) {
            this.f36239c.f36225b = 1;
            return;
        }
        k();
        if (!this.f36239c.f36231h || b()) {
            return;
        }
        c cVar = this.f36239c;
        cVar.f36224a = g(cVar.f36232i);
        c cVar2 = this.f36239c;
        cVar2.f36235l = cVar2.f36224a[cVar2.f36233j];
    }

    private void k() {
        this.f36239c.f36229f = m();
        this.f36239c.f36230g = m();
        int iD = d();
        c cVar = this.f36239c;
        cVar.f36231h = (iD & 128) != 0;
        cVar.f36232i = 2 << (iD & 7);
        cVar.f36233j = d();
        this.f36239c.f36234k = d();
    }

    private void l() {
        do {
            f();
            byte[] bArr = this.f36237a;
            if (bArr[0] == 1) {
                this.f36239c.f36236m = ((bArr[2] & 255) << 8) | (bArr[1] & 255);
            }
            if (this.f36240d <= 0) {
                return;
            }
        } while (!b());
    }

    private int m() {
        return this.f36238b.getShort();
    }

    private void n() {
        this.f36238b = null;
        Arrays.fill(this.f36237a, (byte) 0);
        this.f36239c = new c();
        this.f36240d = 0;
    }

    private void p() {
        int iD;
        do {
            iD = d();
            ByteBuffer byteBuffer = this.f36238b;
            byteBuffer.position(byteBuffer.position() + iD);
        } while (iD > 0);
    }

    private void q() {
        d();
        p();
    }

    public void a() {
        this.f36238b = null;
        this.f36239c = null;
    }

    public c c() {
        if (this.f36238b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (b()) {
            return this.f36239c;
        }
        j();
        if (!b()) {
            h();
            c cVar = this.f36239c;
            if (cVar.f36226c < 0) {
                cVar.f36225b = 1;
            }
        }
        return this.f36239c;
    }

    public d o(byte[] bArr) {
        n();
        if (bArr != null) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            this.f36238b = byteBufferWrap;
            byteBufferWrap.rewind();
            this.f36238b.order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.f36238b = null;
            this.f36239c.f36225b = 2;
        }
        return this;
    }
}
