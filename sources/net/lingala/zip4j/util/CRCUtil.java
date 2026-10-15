package net.lingala.zip4j.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.zip.CRC32;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.progress.ProgressMonitor;

/* JADX INFO: loaded from: classes2.dex */
public class CRCUtil {
    public static long a(String str, ProgressMonitor progressMonitor) throws Throwable {
        FileInputStream fileInputStream;
        if (!Zip4jUtil.u(str)) {
            throw new ZipException("input file is null or empty, cannot calculate CRC for the file");
        }
        FileInputStream fileInputStream2 = null;
        try {
            try {
                Zip4jUtil.c(str);
                fileInputStream = new FileInputStream(new File(str));
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e10) {
            e = e10;
        } catch (Exception e11) {
            e = e11;
        }
        try {
            byte[] bArr = new byte[16384];
            CRC32 crc32 = new CRC32();
            while (true) {
                int i10 = fileInputStream.read(bArr);
                if (i10 == -1) {
                    long value = crc32.getValue();
                    try {
                        fileInputStream.close();
                        return value;
                    } catch (IOException unused) {
                        throw new ZipException("error while closing the file after calculating crc");
                    }
                }
                crc32.update(bArr, 0, i10);
                if (progressMonitor != null) {
                    progressMonitor.k(i10);
                    if (progressMonitor.d()) {
                        progressMonitor.h(3);
                        progressMonitor.i(0);
                        try {
                            fileInputStream.close();
                            return 0L;
                        } catch (IOException unused2) {
                            throw new ZipException("error while closing the file after calculating crc");
                        }
                    }
                }
            }
        } catch (IOException e12) {
            e = e12;
            throw new ZipException(e);
        } catch (Exception e13) {
            e = e13;
            throw new ZipException(e);
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (IOException unused3) {
                    throw new ZipException("error while closing the file after calculating crc");
                }
            }
            throw th;
        }
    }
}
