package f8;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.StatFs;
import android.provider.Settings;
import android.util.Log;
import com.vungle.mediation.BuildConfig;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: Utils.java */
/* JADX INFO: loaded from: classes2.dex */
final class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final StringBuilder f29349a = new StringBuilder();

    /* JADX INFO: compiled from: Utils.java */
    static class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            sendMessageDelayed(obtainMessage(), 1000L);
        }
    }

    /* JADX INFO: compiled from: Utils.java */
    @TargetApi(11)
    private static class b {
        static int a(ActivityManager activityManager) {
            return activityManager.getLargeMemoryClass();
        }
    }

    /* JADX INFO: compiled from: Utils.java */
    @TargetApi(12)
    private static class c {
        static int a(Bitmap bitmap) {
            return bitmap.getByteCount();
        }
    }

    /* JADX INFO: compiled from: Utils.java */
    private static class d {
        static j a(Context context) {
            return new s(context);
        }
    }

    /* JADX INFO: compiled from: Utils.java */
    private static class e extends Thread {
        public e(Runnable runnable) {
            super(runnable);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    /* JADX INFO: compiled from: Utils.java */
    static class f implements ThreadFactory {
        f() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new e(runnable);
        }
    }

    static long a(File file) {
        long blockCount;
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            blockCount = (((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize())) / 50;
        } catch (IllegalArgumentException unused) {
            blockCount = 5242880;
        }
        return Math.max(Math.min(blockCount, 52428800L), 5242880L);
    }

    static int b(Context context) {
        ActivityManager activityManager = (ActivityManager) p(context, "activity");
        boolean z10 = (context.getApplicationInfo().flags & 1048576) != 0;
        int memoryClass = activityManager.getMemoryClass();
        if (z10 && Build.VERSION.SDK_INT >= 11) {
            memoryClass = b.a(activityManager);
        }
        return (memoryClass * 1048576) / 7;
    }

    static void c() {
        if (!s()) {
            throw new IllegalStateException("Method call should happen from the main thread.");
        }
    }

    static <T> T d(T t10, String str) {
        Objects.requireNonNull(t10, str);
        return t10;
    }

    static void e(InputStream inputStream) {
        if (inputStream == null) {
            return;
        }
        try {
            inputStream.close();
        } catch (IOException unused) {
        }
    }

    static File f(Context context) {
        File file = new File(context.getApplicationContext().getCacheDir(), "picasso-cache");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    static j g(Context context) {
        try {
            Class.forName("com.squareup.okhttp.OkHttpClient");
            return d.a(context);
        } catch (ClassNotFoundException unused) {
            return new d0(context);
        }
    }

    static String h(w wVar) {
        StringBuilder sb = f29349a;
        String strI = i(wVar, sb);
        sb.setLength(0);
        return strI;
    }

    static String i(w wVar, StringBuilder sb) {
        String str = wVar.f29471f;
        if (str != null) {
            sb.ensureCapacity(str.length() + 50);
            sb.append(wVar.f29471f);
        } else {
            Uri uri = wVar.f29469d;
            if (uri != null) {
                String string = uri.toString();
                sb.ensureCapacity(string.length() + 50);
                sb.append(string);
            } else {
                sb.ensureCapacity(50);
                sb.append(wVar.f29470e);
            }
        }
        sb.append('\n');
        if (wVar.f29478m != 0.0f) {
            sb.append("rotation:");
            sb.append(wVar.f29478m);
            if (wVar.f29481p) {
                sb.append('@');
                sb.append(wVar.f29479n);
                sb.append('x');
                sb.append(wVar.f29480o);
            }
            sb.append('\n');
        }
        if (wVar.c()) {
            sb.append("resize:");
            sb.append(wVar.f29473h);
            sb.append('x');
            sb.append(wVar.f29474i);
            sb.append('\n');
        }
        if (wVar.f29475j) {
            sb.append("centerCrop");
            sb.append('\n');
        } else if (wVar.f29476k) {
            sb.append("centerInside");
            sb.append('\n');
        }
        List<c0> list = wVar.f29472g;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                sb.append(wVar.f29472g.get(i10).b());
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    static void j(Looper looper) {
        a aVar = new a(looper);
        aVar.sendMessageDelayed(aVar.obtainMessage(), 1000L);
    }

    static int k(Bitmap bitmap) {
        int iA = Build.VERSION.SDK_INT >= 12 ? c.a(bitmap) : bitmap.getRowBytes() * bitmap.getHeight();
        if (iA >= 0) {
            return iA;
        }
        throw new IllegalStateException("Negative size: " + bitmap);
    }

    static String l(f8.c cVar) {
        return m(cVar, BuildConfig.FLAVOR);
    }

    static String m(f8.c cVar, String str) {
        StringBuilder sb = new StringBuilder(str);
        f8.a aVarH = cVar.h();
        if (aVarH != null) {
            sb.append(aVarH.f29283b.d());
        }
        List<f8.a> listI = cVar.i();
        if (listI != null) {
            int size = listI.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (i10 > 0 || aVarH != null) {
                    sb.append(", ");
                }
                sb.append(listI.get(i10).f29283b.d());
            }
        }
        return sb.toString();
    }

    static int n(Resources resources, w wVar) throws FileNotFoundException {
        Uri uri;
        int i10 = wVar.f29470e;
        if (i10 != 0 || (uri = wVar.f29469d) == null) {
            return i10;
        }
        String authority = uri.getAuthority();
        if (authority == null) {
            throw new FileNotFoundException("No package provided: " + wVar.f29469d);
        }
        List<String> pathSegments = wVar.f29469d.getPathSegments();
        if (pathSegments == null || pathSegments.isEmpty()) {
            throw new FileNotFoundException("No path segments: " + wVar.f29469d);
        }
        if (pathSegments.size() == 1) {
            try {
                return Integer.parseInt(pathSegments.get(0));
            } catch (NumberFormatException unused) {
                throw new FileNotFoundException("Last path segment is not a resource ID: " + wVar.f29469d);
            }
        }
        if (pathSegments.size() == 2) {
            return resources.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
        }
        throw new FileNotFoundException("More than two path segments: " + wVar.f29469d);
    }

    static Resources o(Context context, w wVar) throws FileNotFoundException {
        Uri uri;
        if (wVar.f29470e != 0 || (uri = wVar.f29469d) == null) {
            return context.getResources();
        }
        String authority = uri.getAuthority();
        if (authority == null) {
            throw new FileNotFoundException("No package provided: " + wVar.f29469d);
        }
        try {
            return context.getPackageManager().getResourcesForApplication(authority);
        } catch (PackageManager.NameNotFoundException unused) {
            throw new FileNotFoundException("Unable to obtain resources for package: " + wVar.f29469d);
        }
    }

    static <T> T p(Context context, String str) {
        return (T) context.getSystemService(str);
    }

    static boolean q(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    static boolean r(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    static boolean s() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    static boolean t(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[12];
        return inputStream.read(bArr, 0, 12) == 12 && "RIFF".equals(new String(bArr, 0, 4, "US-ASCII")) && "WEBP".equals(new String(bArr, 8, 4, "US-ASCII"));
    }

    static void u(String str, String str2, String str3) {
        v(str, str2, str3, BuildConfig.FLAVOR);
    }

    static void v(String str, String str2, String str3, String str4) {
        Log.d("Picasso", String.format("%1$-11s %2$-12s %3$s %4$s", str, str2, str3, str4));
    }

    static boolean w(String str) {
        if (str == null) {
            return false;
        }
        String[] strArrSplit = str.split(" ", 2);
        if ("CACHE".equals(strArrSplit[0])) {
            return true;
        }
        if (strArrSplit.length == 1) {
            return false;
        }
        try {
            if ("CONDITIONAL_CACHE".equals(strArrSplit[0])) {
                return Integer.parseInt(strArrSplit[1]) == 304;
            }
            return false;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    static byte[] x(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int i10 = inputStream.read(bArr);
            if (-1 == i10) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }
}
