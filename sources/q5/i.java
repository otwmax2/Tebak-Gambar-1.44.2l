package q5;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Debug;
import android.os.StatFs;
import android.text.TextUtils;
import com.facebook.internal.ServerProtocol;
import com.vungle.mediation.BuildConfig;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;

/* JADX INFO: compiled from: CommonUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f33901a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX INFO: compiled from: CommonUtils.java */
    enum a {
        X86_32,
        X86_64,
        ARM_UNKNOWN,
        PPC,
        PPC64,
        ARMV6,
        ARMV7,
        UNKNOWN,
        ARMV7S,
        ARM64;


        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private static final Map<String, a> f33912y;

        static {
            a aVar = X86_32;
            a aVar2 = ARMV6;
            a aVar3 = ARMV7;
            a aVar4 = ARM64;
            HashMap map = new HashMap(4);
            f33912y = map;
            map.put("armeabi-v7a", aVar3);
            map.put("armeabi", aVar2);
            map.put("arm64-v8a", aVar4);
            map.put("x86", aVar);
        }

        static a c() {
            String str = Build.CPU_ABI;
            if (TextUtils.isEmpty(str)) {
                n5.g.f().i("Architecture#getValue()::Build.CPU_ABI returned null or empty");
                return UNKNOWN;
            }
            a aVar = f33912y.get(str.toLowerCase(Locale.US));
            return aVar == null ? UNKNOWN : aVar;
        }
    }

    public static String A(InputStream inputStream) {
        Scanner scannerUseDelimiter = new Scanner(inputStream).useDelimiter("\\A");
        return scannerUseDelimiter.hasNext() ? scannerUseDelimiter.next() : BuildConfig.FLAVOR;
    }

    public static long a(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return memoryInfo.availMem;
    }

    public static synchronized long b(Context context) {
        ActivityManager.MemoryInfo memoryInfo;
        memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    public static long c(String str) {
        StatFs statFs = new StatFs(str);
        long blockSize = statFs.getBlockSize();
        return (((long) statFs.getBlockCount()) * blockSize) - (blockSize * ((long) statFs.getAvailableBlocks()));
    }

    @SuppressLint({"MissingPermission"})
    public static boolean d(Context context) {
        if (!e(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return true;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }

    public static boolean e(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    public static void f(Closeable closeable, String str) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e10) {
                n5.g.f().e(str, e10);
            }
        }
    }

    public static void g(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    public static String h(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if (str != null) {
                arrayList.add(str.replace("-", BuildConfig.FLAVOR).toLowerCase(Locale.US));
            }
        }
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
        }
        String string = sb.toString();
        if (string.length() > 0) {
            return z(string);
        }
        return null;
    }

    public static boolean i(Context context, String str, boolean z10) {
        Resources resources;
        if (context != null && (resources = context.getResources()) != null) {
            int iP = p(context, str, "bool");
            if (iP > 0) {
                return resources.getBoolean(iP);
            }
            int iP2 = p(context, str, "string");
            if (iP2 > 0) {
                return Boolean.parseBoolean(context.getString(iP2));
            }
        }
        return z10;
    }

    public static List<f> j(Context context) {
        ArrayList arrayList = new ArrayList();
        int iP = p(context, "com.google.firebase.crashlytics.build_ids_lib", "array");
        int iP2 = p(context, "com.google.firebase.crashlytics.build_ids_arch", "array");
        int iP3 = p(context, "com.google.firebase.crashlytics.build_ids_build_id", "array");
        if (iP == 0 || iP2 == 0 || iP3 == 0) {
            n5.g.f().b(String.format("Could not find resources: %d %d %d", Integer.valueOf(iP), Integer.valueOf(iP2), Integer.valueOf(iP3)));
            return arrayList;
        }
        String[] stringArray = context.getResources().getStringArray(iP);
        String[] stringArray2 = context.getResources().getStringArray(iP2);
        String[] stringArray3 = context.getResources().getStringArray(iP3);
        if (stringArray.length != stringArray3.length || stringArray2.length != stringArray3.length) {
            n5.g.f().b(String.format("Lengths did not match: %d %d %d", Integer.valueOf(stringArray.length), Integer.valueOf(stringArray2.length), Integer.valueOf(stringArray3.length)));
            return arrayList;
        }
        for (int i10 = 0; i10 < stringArray3.length; i10++) {
            arrayList.add(new f(stringArray[i10], stringArray2[i10], stringArray3[i10]));
        }
        return arrayList;
    }

    public static int k() {
        return a.c().ordinal();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    public static int l() {
        boolean zW = w();
        ?? r02 = zW;
        if (x()) {
            r02 = (zW ? 1 : 0) | 2;
        }
        return v() ? r02 | 4 : r02;
    }

    public static String m(Context context) {
        int iP = p(context, "com.google.firebase.crashlytics.mapping_file_id", "string");
        if (iP == 0) {
            iP = p(context, "com.crashlytics.android.build_id", "string");
        }
        if (iP != 0) {
            return context.getResources().getString(iP);
        }
        return null;
    }

    public static boolean n(Context context) {
        return (w() || ((SensorManager) context.getSystemService("sensor")).getDefaultSensor(8) == null) ? false : true;
    }

    public static String o(Context context) {
        int i10 = context.getApplicationContext().getApplicationInfo().icon;
        if (i10 <= 0) {
            return context.getPackageName();
        }
        try {
            String resourcePackageName = context.getResources().getResourcePackageName(i10);
            return "android".equals(resourcePackageName) ? context.getPackageName() : resourcePackageName;
        } catch (Resources.NotFoundException unused) {
            return context.getPackageName();
        }
    }

    public static int p(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str, str2, o(context));
    }

    public static SharedPreferences q(Context context) {
        return context.getSharedPreferences("com.google.firebase.crashlytics", 0);
    }

    private static String r(String str, String str2) {
        return s(str.getBytes(), str2);
    }

    private static String s(byte[] bArr, String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            messageDigest.update(bArr);
            return t(messageDigest.digest());
        } catch (NoSuchAlgorithmException e10) {
            n5.g.f().e("Could not create hashing algorithm: " + str + ", returning empty string.", e10);
            return BuildConfig.FLAVOR;
        }
    }

    public static String t(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            int i11 = bArr[i10] & 255;
            int i12 = i10 * 2;
            char[] cArr2 = f33901a;
            cArr[i12] = cArr2[i11 >>> 4];
            cArr[i12 + 1] = cArr2[i11 & 15];
        }
        return new String(cArr);
    }

    public static boolean u(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    public static boolean v() {
        return Debug.isDebuggerConnected() || Debug.waitingForDebugger();
    }

    public static boolean w() {
        if (!Build.PRODUCT.contains(ServerProtocol.DIALOG_PARAM_SDK_VERSION)) {
            String str = Build.HARDWARE;
            if (!str.contains("goldfish") && !str.contains("ranchu")) {
                return false;
            }
        }
        return true;
    }

    public static boolean x() {
        boolean zW = w();
        String str = Build.TAGS;
        if ((zW || str == null || !str.contains("test-keys")) && !new File("/system/app/Superuser.apk").exists()) {
            return !zW && new File("/system/xbin/su").exists();
        }
        return true;
    }

    public static boolean y(String str, String str2) {
        return str == null ? str2 == null : str.equals(str2);
    }

    public static String z(String str) {
        return r(str, "SHA-1");
    }
}
