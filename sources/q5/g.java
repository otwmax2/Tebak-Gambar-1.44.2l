package q5;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;
import s5.f0;

/* JADX INFO: compiled from: BytesBackedNativeSessionFile.java */
/* JADX INFO: loaded from: classes2.dex */
class g implements e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f33893a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f33894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f33895c;

    g(String str, String str2, byte[] bArr) {
        this.f33894b = str;
        this.f33895c = str2;
        this.f33893a = bArr;
    }

    private byte[] d() {
        if (e()) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                try {
                    gZIPOutputStream.write(this.f33893a);
                    gZIPOutputStream.finish();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    gZIPOutputStream.close();
                    byteArrayOutputStream.close();
                    return byteArray;
                } finally {
                }
            } finally {
            }
        } catch (IOException unused) {
            return null;
        }
    }

    private boolean e() {
        byte[] bArr = this.f33893a;
        return bArr == null || bArr.length == 0;
    }

    @Override // q5.e0
    public String a() {
        return this.f33895c;
    }

    @Override // q5.e0
    public InputStream b() {
        if (e()) {
            return null;
        }
        return new ByteArrayInputStream(this.f33893a);
    }

    @Override // q5.e0
    public f0.d.b c() {
        byte[] bArrD = d();
        if (bArrD == null) {
            return null;
        }
        return f0.d.b.a().b(bArrD).c(this.f33894b).a();
    }
}
