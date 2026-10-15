package net.lingala.zip4j.io;

import java.io.IOException;
import java.io.OutputStream;
import net.lingala.zip4j.model.ZipModel;

/* JADX INFO: loaded from: classes2.dex */
public class ZipOutputStream extends DeflaterOutputStream {
    public ZipOutputStream(OutputStream outputStream, ZipModel zipModel) {
        super(outputStream, zipModel);
    }

    @Override // net.lingala.zip4j.io.DeflaterOutputStream, net.lingala.zip4j.io.CipherOutputStream, net.lingala.zip4j.io.BaseOutputStream, java.io.OutputStream
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10}, 0, 1);
    }

    @Override // net.lingala.zip4j.io.DeflaterOutputStream, net.lingala.zip4j.io.CipherOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // net.lingala.zip4j.io.DeflaterOutputStream, net.lingala.zip4j.io.CipherOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.f32621w.update(bArr, i10, i11);
        n(i11);
        super.write(bArr, i10, i11);
    }
}
