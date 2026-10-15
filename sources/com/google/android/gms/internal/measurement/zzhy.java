package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzhy {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static volatile zzhw f23552h;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ int f23556l = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final zzhv f23557a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f23558b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f23559c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile int f23560d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile Object f23561e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f23562f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Object f23551g = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final AtomicReference f23553i = new AtomicReference();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final zzia f23554j = new zzia(zzhp.f23540a, null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final AtomicInteger f23555k = new AtomicInteger();

    /* synthetic */ zzhy(zzhv zzhvVar, String str, Object obj, boolean z10, zzhx zzhxVar) {
        if (zzhvVar.f23543b == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.f23557a = zzhvVar;
        this.f23558b = str;
        this.f23559c = obj;
        this.f23562f = true;
    }

    static void d() {
        f23555k.incrementAndGet();
    }

    public static void e(final Context context) {
        if (f23552h == null) {
            Object obj = f23551g;
            synchronized (obj) {
                if (f23552h == null) {
                    synchronized (obj) {
                        zzhw zzhwVar = f23552h;
                        Context applicationContext = context.getApplicationContext();
                        if (applicationContext != null) {
                            context = applicationContext;
                        }
                        if (zzhwVar == null || zzhwVar.a() != context) {
                            zzhe.d();
                            zzhz.b();
                            zzhm.d();
                            f23552h = new zzhb(context, zzij.a(new zzif() { // from class: com.google.android.gms.internal.measurement.zzhq
                                @Override // com.google.android.gms.internal.measurement.zzif
                                public final Object zza() {
                                    zzid zzidVarC;
                                    zzid zzidVarC2;
                                    Context contextCreateDeviceProtectedStorageContext = context;
                                    int i10 = zzhy.f23556l;
                                    String str = Build.TYPE;
                                    String str2 = Build.TAGS;
                                    if ((!str.equals("eng") && !str.equals("userdebug")) || (!str2.contains("dev-keys") && !str2.contains("test-keys"))) {
                                        return zzid.c();
                                    }
                                    if (zzha.a() && !contextCreateDeviceProtectedStorageContext.isDeviceProtectedStorage()) {
                                        contextCreateDeviceProtectedStorageContext = contextCreateDeviceProtectedStorageContext.createDeviceProtectedStorageContext();
                                    }
                                    StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                                    try {
                                        StrictMode.allowThreadDiskWrites();
                                        try {
                                            File file = new File(contextCreateDeviceProtectedStorageContext.getDir("phenotype_hermetic", 0), "overrides.txt");
                                            zzidVarC = file.exists() ? zzid.d(file) : zzid.c();
                                        } catch (RuntimeException e10) {
                                            Log.e("HermeticFileOverrides", "no data dir", e10);
                                            zzidVarC = zzid.c();
                                        }
                                        if (zzidVarC.b()) {
                                            File file2 = (File) zzidVarC.a();
                                            try {
                                                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file2)));
                                                try {
                                                    HashMap map = new HashMap();
                                                    HashMap map2 = new HashMap();
                                                    while (true) {
                                                        String line = bufferedReader.readLine();
                                                        if (line == null) {
                                                            break;
                                                        }
                                                        String[] strArrSplit = line.split(" ", 3);
                                                        if (strArrSplit.length != 3) {
                                                            Log.e("HermeticFileOverrides", "Invalid: " + line);
                                                        } else {
                                                            String str3 = new String(strArrSplit[0]);
                                                            String strDecode = Uri.decode(new String(strArrSplit[1]));
                                                            String strDecode2 = (String) map2.get(strArrSplit[2]);
                                                            if (strDecode2 == null) {
                                                                String str4 = new String(strArrSplit[2]);
                                                                strDecode2 = Uri.decode(str4);
                                                                if (strDecode2.length() < 1024 || strDecode2 == str4) {
                                                                    map2.put(str4, strDecode2);
                                                                }
                                                            }
                                                            if (!map.containsKey(str3)) {
                                                                map.put(str3, new HashMap());
                                                            }
                                                            ((Map) map.get(str3)).put(strDecode, strDecode2);
                                                        }
                                                    }
                                                    Log.i("HermeticFileOverrides", "Parsed " + file2.toString());
                                                    zzhg zzhgVar = new zzhg(map);
                                                    bufferedReader.close();
                                                    zzidVarC2 = zzid.d(zzhgVar);
                                                } catch (Throwable th) {
                                                    try {
                                                        bufferedReader.close();
                                                    } catch (Throwable th2) {
                                                        try {
                                                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                                                        } catch (Exception unused) {
                                                        }
                                                    }
                                                    throw th;
                                                }
                                            } catch (IOException e11) {
                                                throw new RuntimeException(e11);
                                            }
                                        } else {
                                            zzidVarC2 = zzid.c();
                                        }
                                        return zzidVarC2;
                                    } finally {
                                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                                    }
                                }
                            }));
                            f23555k.incrementAndGet();
                        }
                    }
                }
            }
        }
    }

    abstract Object a(Object obj);

    /* JADX WARN: Removed duplicated region for block: B:34:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ae A[Catch: all -> 0x010e, TryCatch #0 {, blocks: (B:8:0x0016, B:10:0x001a, B:12:0x0020, B:14:0x0029, B:16:0x0039, B:18:0x0045, B:20:0x004e, B:47:0x00d6, B:49:0x00e6, B:51:0x00fa, B:52:0x00fd, B:53:0x0101, B:35:0x00ae, B:37:0x00b4, B:41:0x00c6, B:43:0x00cc, B:46:0x00d4, B:40:0x00c4, B:21:0x0062, B:23:0x0068, B:25:0x0076, B:29:0x009b, B:31:0x00a5, B:27:0x008d, B:54:0x0106, B:55:0x010b, B:56:0x010c), top: B:63:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e6 A[Catch: all -> 0x010e, TryCatch #0 {, blocks: (B:8:0x0016, B:10:0x001a, B:12:0x0020, B:14:0x0029, B:16:0x0039, B:18:0x0045, B:20:0x004e, B:47:0x00d6, B:49:0x00e6, B:51:0x00fa, B:52:0x00fd, B:53:0x0101, B:35:0x00ae, B:37:0x00b4, B:41:0x00c6, B:43:0x00cc, B:46:0x00d4, B:40:0x00c4, B:21:0x0062, B:23:0x0068, B:25:0x0076, B:29:0x009b, B:31:0x00a5, B:27:0x008d, B:54:0x0106, B:55:0x010b, B:56:0x010c), top: B:63:0x0016 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b() {
        /*
            Method dump skipped, instruction units count: 276
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzhy.b():java.lang.Object");
    }

    public final String c() {
        String str = this.f23557a.f23545d;
        return this.f23558b;
    }
}
