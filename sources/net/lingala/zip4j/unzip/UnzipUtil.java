package net.lingala.zip4j.unzip;

import java.io.File;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.UnzipParameters;
import net.lingala.zip4j.util.Zip4jUtil;

/* JADX INFO: loaded from: classes2.dex */
public class UnzipUtil {
    public static void a(FileHeader fileHeader, File file, UnzipParameters unzipParameters) throws ZipException {
        if (fileHeader == null) {
            throw new ZipException("cannot set file properties: file header is null");
        }
        if (file == null) {
            throw new ZipException("cannot set file properties: output file is null");
        }
        if (!Zip4jUtil.a(file)) {
            throw new ZipException("cannot set file properties: file doesnot exist");
        }
        if (unzipParameters == null || !unzipParameters.c()) {
            c(fileHeader, file);
        }
        if (unzipParameters == null) {
            b(fileHeader, file, true, true, true, true);
        } else if (unzipParameters.a()) {
            b(fileHeader, file, false, false, false, false);
        } else {
            b(fileHeader, file, !unzipParameters.e(), !unzipParameters.d(), !unzipParameters.b(), !unzipParameters.f());
        }
    }

    private static void b(FileHeader fileHeader, File file, boolean z10, boolean z11, boolean z12, boolean z13) throws ZipException {
        if (fileHeader == null) {
            throw new ZipException("invalid file header. cannot set file attributes");
        }
        byte[] bArrH = fileHeader.h();
        if (bArrH == null) {
            return;
        }
        byte b10 = bArrH[0];
        if (b10 == 1) {
            if (z10) {
                Zip4jUtil.y(file);
                return;
            }
            return;
        }
        if (b10 != 2) {
            if (b10 == 3) {
                if (z10) {
                    Zip4jUtil.y(file);
                }
                if (z11) {
                    Zip4jUtil.x(file);
                    return;
                }
                return;
            }
            if (b10 != 18) {
                if (b10 == 38) {
                    if (z10) {
                        Zip4jUtil.y(file);
                    }
                    if (z11) {
                        Zip4jUtil.x(file);
                    }
                    if (z13) {
                        Zip4jUtil.z(file);
                        return;
                    }
                    return;
                }
                if (b10 != 48) {
                    if (b10 != 50) {
                        switch (b10) {
                            case 32:
                                break;
                            case 33:
                                if (z12) {
                                    Zip4jUtil.w(file);
                                }
                                if (z10) {
                                    Zip4jUtil.y(file);
                                    return;
                                }
                                return;
                            case 34:
                                break;
                            case 35:
                                if (z12) {
                                    Zip4jUtil.w(file);
                                }
                                if (z10) {
                                    Zip4jUtil.y(file);
                                }
                                if (z11) {
                                    Zip4jUtil.x(file);
                                    return;
                                }
                                return;
                            default:
                                return;
                        }
                    }
                    if (z12) {
                        Zip4jUtil.w(file);
                    }
                    if (z11) {
                        Zip4jUtil.x(file);
                        return;
                    }
                    return;
                }
                if (z12) {
                    Zip4jUtil.w(file);
                    return;
                }
                return;
            }
        }
        if (z11) {
            Zip4jUtil.x(file);
        }
    }

    private static void c(FileHeader fileHeader, File file) throws ZipException {
        if (fileHeader.n() > 0 && file.exists()) {
            file.setLastModified(Zip4jUtil.h(fileHeader.n()));
        }
    }
}
