package net.lingala.zip4j.io;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.Deflater;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.ZipModel;
import net.lingala.zip4j.model.ZipParameters;

/* JADX INFO: loaded from: classes2.dex */
public class DeflaterOutputStream extends CipherOutputStream {
    private byte[] B;
    protected Deflater C;
    private boolean D;

    public DeflaterOutputStream(OutputStream outputStream, ZipModel zipModel) {
        super(outputStream, zipModel);
        this.C = new Deflater();
        this.B = new byte[4096];
        this.D = false;
    }

    private void o() throws IOException {
        Deflater deflater = this.C;
        byte[] bArr = this.B;
        int iDeflate = deflater.deflate(bArr, 0, bArr.length);
        if (iDeflate > 0) {
            if (this.C.finished()) {
                if (iDeflate == 4) {
                    return;
                }
                if (iDeflate < 4) {
                    e(4 - iDeflate);
                    return;
                }
                iDeflate -= 4;
            }
            if (this.D) {
                super.write(this.B, 0, iDeflate);
            } else {
                super.write(this.B, 2, iDeflate - 2);
                this.D = true;
            }
        }
    }

    @Override // net.lingala.zip4j.io.CipherOutputStream
    public void b() throws ZipException, IOException {
        if (this.f32618t.d() == 8) {
            if (!this.C.finished()) {
                this.C.finish();
                while (!this.C.finished()) {
                    o();
                }
            }
            this.D = false;
        }
        super.b();
    }

    @Override // net.lingala.zip4j.io.CipherOutputStream
    public void g() throws ZipException, IOException {
        super.g();
    }

    @Override // net.lingala.zip4j.io.CipherOutputStream
    public void m(File file, ZipParameters zipParameters) throws ZipException {
        super.m(file, zipParameters);
        if (zipParameters.d() == 8) {
            this.C.reset();
            if ((zipParameters.b() < 0 || zipParameters.b() > 9) && zipParameters.b() != -1) {
                throw new ZipException("invalid compression level for deflater. compression level should be in the range of 0-9");
            }
            this.C.setLevel(zipParameters.b());
        }
    }

    @Override // net.lingala.zip4j.io.CipherOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // net.lingala.zip4j.io.CipherOutputStream, net.lingala.zip4j.io.BaseOutputStream, java.io.OutputStream
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10}, 0, 1);
    }

    @Override // net.lingala.zip4j.io.CipherOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        if (this.f32618t.d() != 8) {
            super.write(bArr, i10, i11);
            return;
        }
        this.C.setInput(bArr, i10, i11);
        while (!this.C.needsInput()) {
            o();
        }
    }
}
