package com.vungle.warren.utility;

import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes2.dex */
public class UnzipUtility {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f28592a = "com.vungle.warren.utility.UnzipUtility";

    public interface Filter {
        boolean matches(String str);
    }

    static class ZipSecurityException extends IOException {
        ZipSecurityException(String str) {
            super(str);
        }
    }

    static void a(InputStream inputStream, String str) throws Throwable {
        FileOutputStream fileOutputStream;
        File file = new File(str);
        FileUtility.delete(file);
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        BufferedOutputStream bufferedOutputStream = null;
        try {
            fileOutputStream = new FileOutputStream(str);
            try {
                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(fileOutputStream);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i10 = inputStream.read(bArr);
                        if (i10 == -1) {
                            FileUtility.closeQuietly(inputStream);
                            FileUtility.closeQuietly(bufferedOutputStream2);
                            FileUtility.closeQuietly(fileOutputStream);
                            return;
                        }
                        bufferedOutputStream2.write(bArr, 0, i10);
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedOutputStream = bufferedOutputStream2;
                    FileUtility.closeQuietly(inputStream);
                    FileUtility.closeQuietly(bufferedOutputStream);
                    FileUtility.closeQuietly(fileOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    private static String b(String str, String str2) throws IOException {
        String canonicalPath = new File(str).getCanonicalPath();
        if (canonicalPath.startsWith(new File(str2).getCanonicalPath())) {
            return canonicalPath;
        }
        Log.e(f28592a, "File is outside extraction target directory.");
        throw new ZipSecurityException("File is outside extraction target directory.");
    }

    public static List<File> unzip(String str, String str2) throws IOException {
        return unzip(str, str2, null);
    }

    public static List<File> unzip(String str, String str2, Filter filter) throws Throwable {
        ZipFile zipFile;
        Throwable th;
        if (TextUtils.isEmpty(str)) {
            throw new IOException("Path is empty");
        }
        File file = new File(str);
        if (!file.exists()) {
            throw new IOException("File does not exist");
        }
        File file2 = new File(str2);
        if (!file2.exists()) {
            file2.mkdir();
        }
        ArrayList arrayList = new ArrayList();
        try {
            zipFile = new ZipFile(file);
            try {
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    String str3 = str2 + File.separator + zipEntryNextElement.getName();
                    if (filter == null || filter.matches(str3)) {
                        b(str3, str2);
                        if (zipEntryNextElement.isDirectory()) {
                            File file3 = new File(str3);
                            if (!file3.exists()) {
                                file3.mkdir();
                            }
                        } else {
                            a(zipFile.getInputStream(zipEntryNextElement), str3);
                            arrayList.add(new File(str3));
                        }
                    }
                }
                try {
                    zipFile.close();
                } catch (IOException unused) {
                }
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                if (zipFile != null) {
                    try {
                        zipFile.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            zipFile = null;
            th = th3;
        }
    }
}
