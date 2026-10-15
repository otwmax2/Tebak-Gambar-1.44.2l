package net.lingala.zip4j.util;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.TimeZone;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.ZipModel;

/* JADX INFO: loaded from: classes2.dex */
public class Zip4jUtil {
    public static boolean a(File file) throws ZipException {
        if (file != null) {
            return file.exists();
        }
        throw new ZipException("cannot check if file exists: input file is null");
    }

    public static boolean b(String str) throws ZipException {
        if (u(str)) {
            return a(new File(str));
        }
        throw new ZipException("path is null");
    }

    public static boolean c(String str) throws ZipException {
        if (!u(str)) {
            throw new ZipException("path is null");
        }
        if (b(str)) {
            try {
                return new File(str).canRead();
            } catch (Exception unused) {
                throw new ZipException("cannot read zip file");
            }
        }
        throw new ZipException("file does not exist: " + str);
    }

    public static boolean d(String str) throws ZipException {
        if (!u(str)) {
            throw new ZipException(new NullPointerException("output path is null"));
        }
        File file = new File(str);
        if (file.exists()) {
            if (!file.isDirectory()) {
                throw new ZipException("output folder is not valid");
            }
            if (file.canWrite()) {
                return true;
            }
            throw new ZipException("no write access to output folder");
        }
        try {
            file.mkdirs();
            if (!file.isDirectory()) {
                throw new ZipException("output folder is not valid");
            }
            if (file.canWrite()) {
                return true;
            }
            throw new ZipException("no write access to destination folder");
        } catch (Exception unused) {
            throw new ZipException("Cannot create destination folder");
        }
    }

    public static byte[] e(String str) throws ZipException {
        try {
            String strG = g(str);
            return strG.equals("Cp850") ? str.getBytes("Cp850") : strG.equals("UTF8") ? str.getBytes("UTF8") : str.getBytes();
        } catch (UnsupportedEncodingException unused) {
            return str.getBytes();
        } catch (Exception e10) {
            throw new ZipException(e10);
        }
    }

    public static String f(byte[] bArr, boolean z10) {
        if (!z10) {
            return j(bArr);
        }
        try {
            return new String(bArr, "UTF8");
        } catch (UnsupportedEncodingException unused) {
            return new String(bArr);
        }
    }

    public static String g(String str) throws ZipException {
        if (str == null) {
            throw new ZipException("input string is null, cannot detect charset");
        }
        try {
            return str.equals(new String(str.getBytes("Cp850"), "Cp850")) ? "Cp850" : str.equals(new String(str.getBytes("UTF8"), "UTF8")) ? "UTF8" : InternalZipConstants.f32798a;
        } catch (UnsupportedEncodingException unused) {
            return InternalZipConstants.f32798a;
        } catch (Exception unused2) {
            return InternalZipConstants.f32798a;
        }
    }

    public static long h(int i10) {
        int i11 = (i10 & 31) * 2;
        int i12 = (i10 >> 5) & 63;
        int i13 = (i10 >> 11) & 31;
        int i14 = (i10 >> 16) & 31;
        int i15 = ((i10 >> 21) & 15) - 1;
        int i16 = ((i10 >> 25) & 127) + 1980;
        Calendar calendar = Calendar.getInstance();
        calendar.set(i16, i15, i14, i13, i12, i11);
        calendar.set(14, 0);
        return calendar.getTime().getTime();
    }

    public static long[] i() {
        return new long[]{67324752, 134695760, 33639248, 101010256, 84233040, 134630224, 134695760, 117853008, 101075792, 1, 39169};
    }

    public static String j(byte[] bArr) {
        try {
            return new String(bArr, "Cp850");
        } catch (UnsupportedEncodingException unused) {
            return new String(bArr);
        }
    }

    public static int k(String str) throws ZipException {
        if (u(str)) {
            return l(str, g(str));
        }
        throw new ZipException("input string is null, cannot calculate encoded String length");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.nio.ByteBuffer] */
    public static int l(String str, String str2) throws ZipException {
        if (!u(str)) {
            throw new ZipException("input string is null, cannot calculate encoded String length");
        }
        if (!u(str2)) {
            throw new ZipException("encoding is not defined, cannot calculate string length");
        }
        try {
            str = str2.equals("Cp850") ? ByteBuffer.wrap(str.getBytes("Cp850")) : str2.equals("UTF8") ? ByteBuffer.wrap(str.getBytes("UTF8")) : ByteBuffer.wrap(str.getBytes(str2));
        } catch (UnsupportedEncodingException unused) {
            str = ByteBuffer.wrap(str.getBytes());
        } catch (Exception e10) {
            throw new ZipException(e10);
        }
        return str.limit();
    }

    public static FileHeader m(ZipModel zipModel, String str) throws ZipException {
        if (zipModel == null) {
            throw new ZipException("zip model is null, cannot determine file header for fileName: " + str);
        }
        if (!u(str)) {
            throw new ZipException("file name is null, cannot determine file header for fileName: " + str);
        }
        FileHeader fileHeaderN = n(zipModel, str);
        if (fileHeaderN != null) {
            return fileHeaderN;
        }
        String strReplaceAll = str.replaceAll("\\\\", "/");
        FileHeader fileHeaderN2 = n(zipModel, strReplaceAll);
        return fileHeaderN2 == null ? n(zipModel, strReplaceAll.replaceAll("/", "\\\\")) : fileHeaderN2;
    }

    public static FileHeader n(ZipModel zipModel, String str) throws ZipException {
        if (zipModel == null) {
            throw new ZipException("zip model is null, cannot determine file header with exact match for fileName: " + str);
        }
        if (!u(str)) {
            throw new ZipException("file name is null, cannot determine file header with exact match for fileName: " + str);
        }
        if (zipModel.a() == null) {
            throw new ZipException("central directory is null, cannot determine file header with exact match for fileName: " + str);
        }
        if (zipModel.a().a() == null) {
            throw new ZipException("file Headers are null, cannot determine file header with exact match for fileName: " + str);
        }
        if (zipModel.a().a().size() <= 0) {
            return null;
        }
        ArrayList arrayListA = zipModel.a().a();
        for (int i10 = 0; i10 < arrayListA.size(); i10++) {
            FileHeader fileHeader = (FileHeader) arrayListA.get(i10);
            String strK = fileHeader.k();
            if (u(strK) && str.equalsIgnoreCase(strK)) {
                return fileHeader;
            }
        }
        return null;
    }

    public static long o(File file) throws ZipException {
        if (file == null) {
            throw new ZipException("input file is null, cannot calculate file length");
        }
        if (file.isDirectory()) {
            return -1L;
        }
        return file.length();
    }

    public static String p(File file) throws ZipException {
        if (file == null) {
            throw new ZipException("input file is null, cannot get file name");
        }
        if (file.isDirectory()) {
            return null;
        }
        return file.getName();
    }

    public static int q(ZipModel zipModel, FileHeader fileHeader) throws ZipException {
        if (zipModel == null || fileHeader == null) {
            throw new ZipException("input parameters is null, cannot determine index of file header");
        }
        if (zipModel.a() == null) {
            throw new ZipException("central directory is null, ccannot determine index of file header");
        }
        if (zipModel.a().a() == null) {
            throw new ZipException("file Headers are null, cannot determine index of file header");
        }
        if (zipModel.a().a().size() <= 0) {
            return -1;
        }
        String strK = fileHeader.k();
        if (!u(strK)) {
            throw new ZipException("file name in file header is empty or null, cannot determine index of file header");
        }
        ArrayList arrayListA = zipModel.a().a();
        for (int i10 = 0; i10 < arrayListA.size(); i10++) {
            String strK2 = ((FileHeader) arrayListA.get(i10)).k();
            if (u(strK2) && strK.equalsIgnoreCase(strK2)) {
                return i10;
            }
        }
        return -1;
    }

    public static long r(File file, TimeZone timeZone) throws ZipException {
        if (file == null) {
            throw new ZipException("input file is null, cannot read last modified file time");
        }
        if (file.exists()) {
            return file.lastModified();
        }
        throw new ZipException("input file does not exist, cannot read last modified file time");
    }

    public static String s(String str, String str2, String str3) throws ZipException {
        String strP;
        if (!u(str)) {
            throw new ZipException("input file path/name is empty, cannot calculate relative file name");
        }
        if (u(str3)) {
            String path = new File(str3).getPath();
            String str4 = InternalZipConstants.f32799b;
            if (!path.endsWith(str4)) {
                path = path + str4;
            }
            String strSubstring = str.substring(path.length());
            if (strSubstring.startsWith(System.getProperty("file.separator"))) {
                strSubstring = strSubstring.substring(1);
            }
            File file = new File(str);
            if (file.isDirectory()) {
                strP = strSubstring.replaceAll("\\\\", "/") + "/";
            } else {
                strP = strSubstring.substring(0, strSubstring.lastIndexOf(file.getName())).replaceAll("\\\\", "/") + file.getName();
            }
        } else {
            File file2 = new File(str);
            if (file2.isDirectory()) {
                strP = file2.getName() + "/";
            } else {
                strP = p(new File(str));
            }
        }
        if (u(str2)) {
            strP = str2 + strP;
        }
        if (u(strP)) {
            return strP;
        }
        throw new ZipException("Error determining file name");
    }

    public static String t(String str) throws ZipException {
        if (!u(str)) {
            throw new ZipException("zip file name is empty or null, cannot determine zip file name");
        }
        if (str.indexOf(System.getProperty("file.separator")) >= 0) {
            str = str.substring(str.lastIndexOf(System.getProperty("file.separator")));
        }
        return str.indexOf(".") > 0 ? str.substring(0, str.lastIndexOf(".")) : str;
    }

    public static boolean u(String str) {
        return str != null && str.trim().length() > 0;
    }

    public static long v(long j10) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j10);
        if (calendar.get(1) < 1980) {
            return 2162688L;
        }
        return (calendar.get(13) >> 1) | ((r5 - 1980) << 25) | ((calendar.get(2) + 1) << 21) | (calendar.get(5) << 16) | (calendar.get(11) << 11) | (calendar.get(12) << 5);
    }

    public static void w(File file) throws ZipException {
    }

    public static void x(File file) throws ZipException {
    }

    public static void y(File file) throws ZipException {
        if (file == null) {
            throw new ZipException("input file is null. cannot set read only file attribute");
        }
        if (file.exists()) {
            file.setReadOnly();
        }
    }

    public static void z(File file) throws ZipException {
    }
}
