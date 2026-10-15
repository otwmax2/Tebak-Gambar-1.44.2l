package y8;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import androidx.core.content.FileProvider;
import com.tebakgambar.TGApplication;
import ja.d0;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import net.lingala.zip4j.core.ZipFile;

/* JADX INFO: compiled from: FileUtil.java */
/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: compiled from: FileUtil.java */
    public interface a {
        void onProgress(long j10, long j11);
    }

    public static byte[] a(Context context, Uri uri) throws IOException {
        InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i10 = inputStreamOpenInputStream.read(bArr);
            if (i10 == -1) {
                inputStreamOpenInputStream.close();
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    public static Uri b(Context context, String str) throws n, IOException {
        File file = new File(g(context), str);
        if (file.exists()) {
            file.delete();
        }
        if (!file.createNewFile()) {
            throw new IOException("File not created");
        }
        if (Build.VERSION.SDK_INT < 24) {
            return Uri.fromFile(file);
        }
        return FileProvider.f(context, context.getApplicationContext().getPackageName() + ".provider", file);
    }

    public static Uri c(Context context) throws n, IOException {
        return b(context, System.currentTimeMillis() + "_photo.jpg");
    }

    public static void d() {
        TGApplication tGApplicationD = TGApplication.d();
        e(o(tGApplicationD));
        e(h(tGApplicationD));
        e(l(tGApplicationD));
    }

    private static void e(File file) {
        if (!file.isDirectory()) {
            file.delete();
            return;
        }
        for (String str : file.list()) {
            e(new File(file, str));
        }
    }

    public static boolean f(d0 d0Var, File file, a aVar) throws Throwable {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        byte[] bArr;
        long jContentLength;
        long j10;
        InputStream inputStreamByteStream;
        InputStream inputStream = null;
        fileOutputStreamR = null;
        FileOutputStream fileOutputStreamR = null;
        InputStream inputStream2 = null;
        try {
            try {
                bArr = new byte[4096];
                jContentLength = d0Var.contentLength();
                j10 = 0;
                inputStreamByteStream = d0Var.byteStream();
            } catch (IOException unused) {
                return false;
            }
            try {
                fileOutputStreamR = r(file);
                while (true) {
                    int i10 = inputStreamByteStream.read(bArr);
                    if (i10 == -1) {
                        fileOutputStreamR.flush();
                        inputStreamByteStream.close();
                        fileOutputStreamR.close();
                        d0Var.close();
                        return true;
                    }
                    fileOutputStreamR.write(bArr, 0, i10);
                    j10 += (long) i10;
                    if (aVar != null) {
                        aVar.onProgress(j10, jContentLength);
                    }
                }
            } catch (IOException unused2) {
                fileOutputStream2 = fileOutputStreamR;
                inputStream2 = inputStreamByteStream;
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                if (fileOutputStream2 != null) {
                    fileOutputStream2.close();
                }
                d0Var.close();
                return false;
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStreamR;
                inputStream = inputStreamByteStream;
                if (inputStream != null) {
                    inputStream.close();
                }
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                d0Var.close();
                throw th;
            }
        } catch (IOException unused3) {
            fileOutputStream2 = null;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
        }
    }

    public static File g(Context context) throws n {
        o.a(context, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"});
        File externalFilesDir = context.getExternalFilesDir(Environment.DIRECTORY_PICTURES);
        if (externalFilesDir == null) {
            externalFilesDir = context.getFilesDir();
        }
        File file = new File(externalFilesDir.getAbsolutePath() + "/tebak-gambar");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File h(Context context) {
        return j(context, "tg-download/");
    }

    public static File i(Context context, String str) {
        return j(context, "tg-download//" + str);
    }

    private static File j(Context context, String str) {
        return new File(context.getFilesDir().getAbsolutePath() + "/" + str);
    }

    public static Uri k(Context context, String str) throws n {
        File file = new File(g(context), str);
        if (Build.VERSION.SDK_INT < 24) {
            return Uri.fromFile(file);
        }
        return FileProvider.f(context, context.getApplicationContext().getPackageName() + ".provider", file);
    }

    public static File l(Context context) {
        return j(context, "tg-level/");
    }

    public static File m(Context context, String str) {
        return j(context, "tg-level//" + str);
    }

    public static File n(Context context, String str) {
        return j(context, "tg-sticker//" + str);
    }

    public static File o(Context context) {
        return j(context, "tg-temp/");
    }

    public static File p(Context context, String str) {
        return j(context, "tg-temp//" + str);
    }

    public static FileOutputStream q(Context context, String str) throws IOException {
        return r(p(context, str));
    }

    private static FileOutputStream r(File file) throws IOException {
        if (file.getParentFile() != null) {
            file.getParentFile().mkdirs();
        }
        if (!file.exists()) {
            file.createNewFile();
        }
        return new FileOutputStream(file);
    }

    public static boolean s(File file, File file2) {
        try {
            new ZipFile(file).c(file2.getAbsolutePath());
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            com.google.firebase.crashlytics.a.a().d(e10);
            return false;
        }
    }

    public static Uri t(Context context, Bitmap bitmap) throws n, IOException {
        Uri uriC = c(context);
        OutputStream outputStreamOpenOutputStream = context.getContentResolver().openOutputStream(uriC);
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, outputStreamOpenOutputStream);
        outputStreamOpenOutputStream.close();
        return uriC;
    }
}
