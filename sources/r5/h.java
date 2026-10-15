package r5;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Locale;
import r5.g;

/* JADX INFO: compiled from: QueueFileLogStore.java */
/* JADX INFO: loaded from: classes2.dex */
class h implements c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Charset f34282d = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f34283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f34284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g f34285c;

    /* JADX INFO: compiled from: QueueFileLogStore.java */
    class a implements g.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ byte[] f34286a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int[] f34287b;

        a(byte[] bArr, int[] iArr) {
            this.f34286a = bArr;
            this.f34287b = iArr;
        }

        @Override // r5.g.d
        public void a(InputStream inputStream, int i10) throws IOException {
            try {
                inputStream.read(this.f34286a, this.f34287b[0], i10);
                int[] iArr = this.f34287b;
                iArr[0] = iArr[0] + i10;
            } finally {
                inputStream.close();
            }
        }
    }

    /* JADX INFO: compiled from: QueueFileLogStore.java */
    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final byte[] f34289a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f34290b;

        b(byte[] bArr, int i10) {
            this.f34289a = bArr;
            this.f34290b = i10;
        }
    }

    h(File file, int i10) {
        this.f34283a = file;
        this.f34284b = i10;
    }

    private void f(long j10, String str) {
        if (this.f34285c == null) {
            return;
        }
        if (str == null) {
            str = "null";
        }
        try {
            int i10 = this.f34284b / 4;
            if (str.length() > i10) {
                str = "..." + str.substring(str.length() - i10);
            }
            this.f34285c.f(String.format(Locale.US, "%d %s%n", Long.valueOf(j10), str.replaceAll("\r", " ").replaceAll("\n", " ")).getBytes(f34282d));
            while (!this.f34285c.l() && this.f34285c.w() > this.f34284b) {
                this.f34285c.s();
            }
        } catch (IOException e10) {
            n5.g.f().e("There was a problem writing to the Crashlytics log.", e10);
        }
    }

    private b g() {
        if (!this.f34283a.exists()) {
            return null;
        }
        h();
        g gVar = this.f34285c;
        if (gVar == null) {
            return null;
        }
        int[] iArr = {0};
        byte[] bArr = new byte[gVar.w()];
        try {
            this.f34285c.j(new a(bArr, iArr));
        } catch (IOException e10) {
            n5.g.f().e("A problem occurred while reading the Crashlytics log file.", e10);
        }
        return new b(bArr, iArr[0]);
    }

    private void h() {
        if (this.f34285c == null) {
            try {
                this.f34285c = new g(this.f34283a);
            } catch (IOException e10) {
                n5.g.f().e("Could not open log file: " + this.f34283a, e10);
            }
        }
    }

    @Override // r5.c
    public void a() {
        q5.i.f(this.f34285c, "There was a problem closing the Crashlytics log file.");
        this.f34285c = null;
    }

    @Override // r5.c
    public String b() {
        byte[] bArrC = c();
        if (bArrC != null) {
            return new String(bArrC, f34282d);
        }
        return null;
    }

    @Override // r5.c
    public byte[] c() {
        b bVarG = g();
        if (bVarG == null) {
            return null;
        }
        int i10 = bVarG.f34290b;
        byte[] bArr = new byte[i10];
        System.arraycopy(bVarG.f34289a, 0, bArr, 0, i10);
        return bArr;
    }

    @Override // r5.c
    public void d() {
        a();
        this.f34283a.delete();
    }

    @Override // r5.c
    public void e(long j10, String str) {
        h();
        f(j10, str);
    }
}
