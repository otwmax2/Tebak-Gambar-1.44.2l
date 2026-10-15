package com.google.android.gms.dynamite;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.os.IBinder;
import android.os.IInterface;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DynamiteApi;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public final class DynamiteModule {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @GuardedBy("DynamiteModule.class")
    private static Boolean f7917h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @GuardedBy("DynamiteModule.class")
    private static String f7918i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @GuardedBy("DynamiteModule.class")
    private static boolean f7919j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @GuardedBy("DynamiteModule.class")
    private static int f7920k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @GuardedBy("DynamiteModule.class")
    private static Boolean f7921l;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @GuardedBy("DynamiteModule.class")
    private static zzq f7926q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @GuardedBy("DynamiteModule.class")
    private static zzr f7927r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f7928a;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final ThreadLocal f7922m = new ThreadLocal();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final ThreadLocal f7923n = new c();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final VersionPolicy.IVersions f7924o = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @KeepForSdk
    public static final VersionPolicy f7911b = new e();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @KeepForSdk
    public static final VersionPolicy f7912c = new f();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @KeepForSdk
    public static final VersionPolicy f7913d = new g();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @KeepForSdk
    public static final VersionPolicy f7914e = new h();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @KeepForSdk
    public static final VersionPolicy f7915f = new i();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @KeepForSdk
    public static final VersionPolicy f7916g = new j();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final VersionPolicy f7925p = new k();

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
    @DynamiteApi
    public static class DynamiteLoaderClassLoader {

        @GuardedBy("DynamiteLoaderClassLoader.class")
        public static ClassLoader sClassLoader;
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
    @KeepForSdk
    public static class LoadingException extends Exception {
        /* synthetic */ LoadingException(String str, zzp zzpVar) {
            super(str);
        }

        /* synthetic */ LoadingException(String str, Throwable th, zzp zzpVar) {
            super(str, th);
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
    public interface VersionPolicy {

        /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
        @KeepForSdk
        public interface IVersions {
            int a(Context context, String str, boolean z10) throws LoadingException;

            int b(Context context, String str);
        }

        /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
        @KeepForSdk
        public static class SelectionResult {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            @KeepForSdk
            public int f7929a = 0;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            @KeepForSdk
            public int f7930b = 0;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            @KeepForSdk
            public int f7931c = 0;
        }

        @KeepForSdk
        SelectionResult a(Context context, String str, IVersions iVersions) throws LoadingException;
    }

    private DynamiteModule(Context context) {
        Preconditions.k(context);
        this.f7928a = context;
    }

    @KeepForSdk
    public static int a(Context context, String str) {
        try {
            Class<?> clsLoadClass = context.getApplicationContext().getClassLoader().loadClass("com.google.android.gms.dynamite.descriptors." + str + ".ModuleDescriptor");
            Field declaredField = clsLoadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = clsLoadClass.getDeclaredField("MODULE_VERSION");
            if (Objects.b(declaredField.get(null), str)) {
                return declaredField2.getInt(null);
            }
            Log.e("DynamiteModule", "Module descriptor id '" + String.valueOf(declaredField.get(null)) + "' didn't match expected id '" + str + "'");
            return 0;
        } catch (ClassNotFoundException unused) {
            Log.w("DynamiteModule", "Local module descriptor class for " + str + " not found.");
            return 0;
        } catch (Exception e10) {
            Log.e("DynamiteModule", "Failed to load module descriptor class: ".concat(String.valueOf(e10.getMessage())));
            return 0;
        }
    }

    @KeepForSdk
    public static int c(Context context, String str) {
        return f(context, str, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x007d A[Catch: all -> 0x02d6, TRY_LEAVE, TryCatch #6 {all -> 0x02d6, blocks: (B:3:0x0025, B:7:0x006f, B:12:0x0077, B:15:0x007d, B:26:0x009f, B:107:0x0216, B:108:0x0221, B:110:0x0223, B:112:0x0225, B:113:0x022d, B:131:0x028d, B:132:0x02a4, B:115:0x022f, B:117:0x024d, B:119:0x025e, B:129:0x0284, B:130:0x028c, B:133:0x02a5, B:134:0x02d5), top: B:151:0x0025, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009d  */
    @com.google.android.gms.common.annotation.KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.dynamite.DynamiteModule e(android.content.Context r17, com.google.android.gms.dynamite.DynamiteModule.VersionPolicy r18, java.lang.String r19) throws com.google.android.gms.dynamite.DynamiteModule.LoadingException {
        /*
            Method dump skipped, instruction units count: 761
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.e(android.content.Context, com.google.android.gms.dynamite.DynamiteModule$VersionPolicy, java.lang.String):com.google.android.gms.dynamite.DynamiteModule");
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00a7 A[Catch: all -> 0x00b2, TryCatch #5 {, blocks: (B:9:0x0026, B:11:0x0032, B:48:0x00b0, B:14:0x0038, B:16:0x003f, B:18:0x0045, B:21:0x0048, B:23:0x004c, B:27:0x0056, B:29:0x005e, B:32:0x0065, B:39:0x008f, B:40:0x0097, B:35:0x006c, B:37:0x0072, B:38:0x0081, B:43:0x009a, B:46:0x009d, B:47:0x00a7, B:15:0x003b), top: B:130:0x0026, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0166 A[Catch: all -> 0x01c2, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x01c2, blocks: (B:3:0x0002, B:61:0x00d9, B:63:0x00df, B:68:0x0100, B:90:0x0158, B:94:0x0166, B:115:0x01bb, B:116:0x01be, B:110:0x01b3, B:66:0x00e5, B:119:0x01c1, B:4:0x0003, B:7:0x0009, B:8:0x0025, B:59:0x00d6, B:19:0x0046, B:41:0x0098, B:44:0x009b, B:52:0x00b4, B:60:0x00d8, B:58:0x00ba), top: B:129:0x0002, inners: #9, #12 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:109:0x01b1 -> B:131:0x01b6). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:110:0x01b3 -> B:131:0x01b6). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int f(android.content.Context r10, java.lang.String r11, boolean r12) {
        /*
            Method dump skipped, instruction units count: 457
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.f(android.content.Context, java.lang.String, boolean):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00c9  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int g(android.content.Context r10, java.lang.String r11, boolean r12, boolean r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 205
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.g(android.content.Context, java.lang.String, boolean, boolean):int");
    }

    private static DynamiteModule h(Context context, String str) {
        Log.i("DynamiteModule", "Selected local version of ".concat(String.valueOf(str)));
        return new DynamiteModule(context.getApplicationContext());
    }

    @GuardedBy("DynamiteModule.class")
    private static void i(ClassLoader classLoader) throws LoadingException {
        zzr zzrVar;
        zzp zzpVar = null;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                zzrVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                zzrVar = iInterfaceQueryLocalInterface instanceof zzr ? (zzr) iInterfaceQueryLocalInterface : new zzr(iBinder);
            }
            f7927r = zzrVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e10) {
            throw new LoadingException("Failed to instantiate dynamite loader", e10, zzpVar);
        }
    }

    private static boolean j(Cursor cursor) {
        l lVar = (l) f7922m.get();
        if (lVar == null || lVar.f7932a != null) {
            return false;
        }
        lVar.f7932a = cursor;
        return true;
    }

    @GuardedBy("DynamiteModule.class")
    private static boolean k(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(f7921l)) {
            return true;
        }
        boolean zBooleanValue = false;
        if (f7921l == null) {
            ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", 0);
            if (GoogleApiAvailabilityLight.h().j(context, 10000000) == 0 && providerInfoResolveContentProvider != null && "com.google.android.gms".equals(providerInfoResolveContentProvider.packageName)) {
                zBooleanValue = true;
            }
            Boolean boolValueOf = Boolean.valueOf(zBooleanValue);
            f7921l = boolValueOf;
            zBooleanValue = boolValueOf.booleanValue();
            if (zBooleanValue && providerInfoResolveContentProvider != null && (applicationInfo = providerInfoResolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                Log.i("DynamiteModule", "Non-system-image GmsCore APK, forcing V1");
                f7919j = true;
            }
        }
        if (!zBooleanValue) {
            Log.e("DynamiteModule", "Invalid GmsCore APK, remote loading disabled.");
        }
        return zBooleanValue;
    }

    private static zzq l(Context context) {
        zzq zzqVar;
        synchronized (DynamiteModule.class) {
            zzq zzqVar2 = f7926q;
            if (zzqVar2 != null) {
                return zzqVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    zzqVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    zzqVar = iInterfaceQueryLocalInterface instanceof zzq ? (zzq) iInterfaceQueryLocalInterface : new zzq(iBinder);
                }
                if (zzqVar != null) {
                    f7926q = zzqVar;
                    return zzqVar;
                }
            } catch (Exception e10) {
                Log.e("DynamiteModule", "Failed to load IDynamiteLoader from GmsCore: " + e10.getMessage());
            }
            return null;
        }
    }

    @KeepForSdk
    public Context b() {
        return this.f7928a;
    }

    @KeepForSdk
    public IBinder d(String str) throws LoadingException {
        try {
            return (IBinder) this.f7928a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e10) {
            throw new LoadingException("Failed to instantiate module class: ".concat(String.valueOf(str)), e10, null);
        }
    }
}
