package q5;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import s5.f0;

/* JADX INFO: compiled from: FileBackedNativeSessionFile.java */
/* JADX INFO: loaded from: classes2.dex */
class a0 implements e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f33871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f33872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f33873c;

    a0(String str, String str2, File file) {
        this.f33872b = str;
        this.f33873c = str2;
        this.f33871a = file;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0054 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private byte[] d() {
        /*
            r7 = this;
            r0 = 8192(0x2000, float:1.148E-41)
            byte[] r0 = new byte[r0]
            r1 = 0
            java.io.InputStream r2 = r7.b()     // Catch: java.io.IOException -> L5d
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L51
            r3.<init>()     // Catch: java.lang.Throwable -> L51
            java.util.zip.GZIPOutputStream r4 = new java.util.zip.GZIPOutputStream     // Catch: java.lang.Throwable -> L47
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L47
            if (r2 != 0) goto L21
            r4.close()     // Catch: java.lang.Throwable -> L47
            r3.close()     // Catch: java.lang.Throwable -> L51
            if (r2 == 0) goto L20
            r2.close()     // Catch: java.io.IOException -> L5d
        L20:
            return r1
        L21:
            int r5 = r2.read(r0)     // Catch: java.lang.Throwable -> L3d
            if (r5 <= 0) goto L2c
            r6 = 0
            r4.write(r0, r6, r5)     // Catch: java.lang.Throwable -> L3d
            goto L21
        L2c:
            r4.finish()     // Catch: java.lang.Throwable -> L3d
            byte[] r0 = r3.toByteArray()     // Catch: java.lang.Throwable -> L3d
            r4.close()     // Catch: java.lang.Throwable -> L47
            r3.close()     // Catch: java.lang.Throwable -> L51
            r2.close()     // Catch: java.io.IOException -> L5d
            return r0
        L3d:
            r0 = move-exception
            r4.close()     // Catch: java.lang.Throwable -> L42
            goto L46
        L42:
            r4 = move-exception
            r0.addSuppressed(r4)     // Catch: java.lang.Throwable -> L47
        L46:
            throw r0     // Catch: java.lang.Throwable -> L47
        L47:
            r0 = move-exception
            r3.close()     // Catch: java.lang.Throwable -> L4c
            goto L50
        L4c:
            r3 = move-exception
            r0.addSuppressed(r3)     // Catch: java.lang.Throwable -> L51
        L50:
            throw r0     // Catch: java.lang.Throwable -> L51
        L51:
            r0 = move-exception
            if (r2 == 0) goto L5c
            r2.close()     // Catch: java.lang.Throwable -> L58
            goto L5c
        L58:
            r2 = move-exception
            r0.addSuppressed(r2)     // Catch: java.io.IOException -> L5d
        L5c:
            throw r0     // Catch: java.io.IOException -> L5d
        L5d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: q5.a0.d():byte[]");
    }

    @Override // q5.e0
    public String a() {
        return this.f33873c;
    }

    @Override // q5.e0
    public InputStream b() {
        if (this.f33871a.exists() && this.f33871a.isFile()) {
            try {
                return new FileInputStream(this.f33871a);
            } catch (FileNotFoundException unused) {
            }
        }
        return null;
    }

    @Override // q5.e0
    public f0.d.b c() {
        byte[] bArrD = d();
        if (bArrD != null) {
            return f0.d.b.a().b(bArrD).c(this.f33872b).a();
        }
        return null;
    }
}
