package com.google.android.gms.ads.internal.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import androidx.browser.customtabs.d;
import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.internal.Utility;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.SharedPreferencesUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzbaj;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbbs;
import com.google.android.gms.internal.ads.zzbct;
import com.google.android.gms.internal.ads.zzbub;
import com.google.android.gms.internal.ads.zzbyz;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzbzn;
import com.google.android.gms.internal.ads.zzcdz;
import com.google.android.gms.internal.ads.zzcff;
import com.google.android.gms.internal.ads.zzdmt;
import com.google.android.gms.internal.ads.zzeyc;
import com.google.android.gms.internal.ads.zzeyf;
import com.google.android.gms.internal.ads.zzfkr;
import com.google.android.gms.internal.ads.zzfuj;
import com.google.android.gms.internal.ads.zzfut;
import com.google.android.gms.internal.ads.zzgxm;
import com.vungle.mediation.BuildConfig;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzs {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final zzfkr f6190i = new zzf(Looper.getMainLooper());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("userAgentLock")
    private String f6195e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicReference f6191a = new AtomicReference(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicReference f6192b = new AtomicReference(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f6193c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f6194d = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f6196f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f6197g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Executor f6198h = Executors.newSingleThreadExecutor();

    public static void E(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            zzbzn.f11614a.execute(runnable);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0007  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final boolean K(android.view.View r2) {
        /*
            android.view.View r2 = r2.getRootView()
            r0 = 0
            if (r2 != 0) goto L9
        L7:
            r2 = r0
            goto L13
        L9:
            android.content.Context r2 = r2.getContext()
            boolean r1 = r2 instanceof android.app.Activity
            if (r1 == 0) goto L7
            android.app.Activity r2 = (android.app.Activity) r2
        L13:
            r1 = 0
            if (r2 != 0) goto L17
            return r1
        L17:
            android.view.Window r2 = r2.getWindow()
            if (r2 != 0) goto L1e
            goto L22
        L1e:
            android.view.WindowManager$LayoutParams r0 = r2.getAttributes()
        L22:
            if (r0 == 0) goto L2d
            int r2 = r0.flags
            r0 = 524288(0x80000, float:7.34684E-40)
            r2 = r2 & r0
            if (r2 == 0) goto L2d
            r2 = 1
            return r2
        L2d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzs.K(android.view.View):boolean");
    }

    public static final void L(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
        extras.putBinder("android.support.customtabs.extra.SESSION", null);
        extras.putString("com.android.browser.application_id", context.getPackageName());
        intent.putExtras(extras);
    }

    public static final String M(Context context) {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        return w(v(context));
    }

    static final String N() {
        StringBuilder sb = new StringBuilder(256);
        sb.append("Mozilla/5.0 (Linux; U; Android");
        String str = Build.VERSION.RELEASE;
        if (str != null) {
            sb.append(" ");
            sb.append(str);
        }
        sb.append("; ");
        sb.append(Locale.getDefault());
        String str2 = Build.DEVICE;
        if (str2 != null) {
            sb.append("; ");
            sb.append(str2);
            String str3 = Build.DISPLAY;
            if (str3 != null) {
                sb.append(" Build/");
                sb.append(str3);
            }
        }
        sb.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return sb.toString();
    }

    public static final String O() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return str2;
        }
        return str + " " + str2;
    }

    public static final DisplayMetrics P(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    protected static final int[] Q() {
        return new int[]{0, 0};
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v6, types: [android.view.ViewParent] */
    public static final long R(View view) {
        float fMin = Float.MAX_VALUE;
        do {
            if (!(view instanceof View)) {
                break;
            }
            View view2 = (View) view;
            fMin = Math.min(fMin, view2.getAlpha());
            view = view2.getParent();
        } while (fMin > 0.0f);
        return Math.round((fMin >= 0.0f ? fMin : 0.0f) * 100.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final WebResourceResponse S(Context context, String str, String str2) {
        try {
            HashMap map = new HashMap();
            map.put("User-Agent", com.google.android.gms.ads.internal.zzt.r().B(context, str));
            map.put("Cache-Control", "max-stale=3600");
            String str3 = (String) new zzbo(context).b(0, str2, map, null).get(60L, TimeUnit.SECONDS);
            if (str3 != null) {
                return new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(str3.getBytes("UTF-8")));
            }
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e10) {
            zzbza.h("Could not fetch MRAID JS.", e10);
        }
        return null;
    }

    public static final String T() {
        Resources resourcesD = com.google.android.gms.ads.internal.zzt.q().d();
        return resourcesD != null ? resourcesD.getString(R.string.f5712q) : "Test Ad";
    }

    public static final zzbr U(Context context) {
        try {
            Object objNewInstance = context.getClassLoader().loadClass("com.google.android.gms.ads.internal.util.WorkManagerUtil").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(objNewInstance instanceof IBinder)) {
                zzbza.d("Instantiated WorkManagerUtil not instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) objNewInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
            return iInterfaceQueryLocalInterface instanceof zzbr ? (zzbr) iInterfaceQueryLocalInterface : new zzbp(iBinder);
        } catch (Exception e10) {
            com.google.android.gms.ads.internal.zzt.q().u(e10, "Failed to instantiate WorkManagerUtil");
            return null;
        }
    }

    public static final boolean V(Context context, String str) {
        Context contextA = zzbub.a(context);
        return Wrappers.a(contextA).b(str, contextA.getPackageName()) == 0;
    }

    public static final boolean W(Context context) {
        try {
            return DeviceProperties.b(context);
        } catch (NoSuchMethodError unused) {
            return false;
        }
    }

    public static final boolean X(String str) {
        if (!zzbyz.l()) {
            return false;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10427y4)).booleanValue()) {
            return false;
        }
        String str2 = (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.A4);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(";")) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10438z4);
        if (str4.isEmpty()) {
            return true;
        }
        for (String str5 : str4.split(";")) {
            if (str5.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean Y(Context context) {
        KeyguardManager keyguardManagerU;
        return (context == null || (keyguardManagerU = u(context)) == null || !keyguardManagerU.isKeyguardLocked()) ? false : true;
    }

    public static final boolean a(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException unused) {
            return true;
        } catch (Throwable th) {
            zzbza.e("Error loading class.", th);
            com.google.android.gms.ads.internal.zzt.q().u(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    public static final boolean b() {
        int iMyUid = Process.myUid();
        return iMyUid == 0 || iMyUid == 1000;
    }

    public static final boolean c(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        PowerManager powerManager;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (runningAppProcessInfo.importance == 100 && !keyguardManager.inKeyguardRestrictedInputMode() && (powerManager = (PowerManager) context.getSystemService("power")) != null) {
                        return !powerManager.isScreenOn();
                    }
                    return true;
                }
            }
            return true;
        } catch (Throwable unused) {
        }
        return false;
    }

    public static final boolean d(Context context) {
        Bundle bundleV = v(context);
        return TextUtils.isEmpty(w(bundleV)) && !TextUtils.isEmpty(bundleV.getString("com.google.android.gms.ads.INTEGRATION_MANAGER"));
    }

    public static final boolean e(Context context) {
        Window window;
        if ((context instanceof Activity) && (window = ((Activity) context).getWindow()) != null && window.getDecorView() != null) {
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            window.getDecorView().getGlobalVisibleRect(rect, null);
            window.getDecorView().getWindowVisibleDisplayFrame(rect2);
            if (rect.bottom != 0 && rect2.bottom != 0 && rect.top == rect2.top) {
                return true;
            }
        }
        return false;
    }

    public static final void f(View view, int i10, MotionEvent motionEvent) {
        String strA;
        int i11;
        int iHeight;
        int iWidth;
        String str;
        zzeyc zzeycVarU;
        zzeyf zzeyfVarG0;
        View childAt = view;
        int[] iArr = new int[2];
        Rect rect = new Rect();
        try {
            String packageName = view.getContext().getPackageName();
            if (childAt instanceof zzdmt) {
                childAt = ((zzdmt) childAt).getChildAt(0);
            }
            if ((childAt instanceof com.google.android.gms.ads.formats.zzg) || (childAt instanceof NativeAdView)) {
                strA = "NATIVE";
                i11 = 1;
            } else {
                strA = "UNKNOWN";
                i11 = 0;
            }
            if (childAt.getLocalVisibleRect(rect)) {
                iWidth = rect.width();
                iHeight = rect.height();
            } else {
                iHeight = 0;
                iWidth = 0;
            }
            com.google.android.gms.ads.internal.zzt.r();
            long jR = R(childAt);
            childAt.getLocationOnScreen(iArr);
            int i12 = iArr[0];
            int i13 = iArr[1];
            boolean z10 = childAt instanceof zzcff;
            String str2 = IntegrityManager.INTEGRITY_TYPE_NONE;
            if (!z10 || (zzeyfVarG0 = ((zzcff) childAt).g0()) == null) {
                str = IntegrityManager.INTEGRITY_TYPE_NONE;
            } else {
                str = zzeyfVarG0.f17679b;
                childAt.setContentDescription(str + CertificateUtil.DELIMITER + childAt.hashCode());
            }
            if ((childAt instanceof zzcdz) && (zzeycVarU = ((zzcdz) childAt).u()) != null) {
                strA = zzeyc.a(zzeycVarU.f17634b);
                i11 = zzeycVarU.f17642f;
                str2 = zzeycVarU.F;
            }
            zzbza.f(String.format(Locale.US, "<Ad hashCode=%d, package=%s, adNetCls=%s, gwsQueryId=%s, format=%s, impType=%d, class=%s, x=%d, y=%d, width=%d, height=%d, vWidth=%d, vHeight=%d, alpha=%d, state=%s>", Integer.valueOf(childAt.hashCode()), packageName, str2, str, strA, Integer.valueOf(i11), childAt.getClass().getName(), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(childAt.getWidth()), Integer.valueOf(childAt.getHeight()), Integer.valueOf(iWidth), Integer.valueOf(iHeight), Long.valueOf(jR), Integer.toString(i10, 2)));
        } catch (Exception e10) {
            zzbza.e("Failure getting view location.", e10);
        }
    }

    public static final AlertDialog.Builder g(Context context) {
        return new AlertDialog.Builder(context, com.google.android.gms.ads.internal.zzt.s().a());
    }

    public static final void h(Context context, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            new zzby(context, str, (String) it.next()).b();
        }
    }

    public static final void i(Context context, Throwable th) {
        if (context != null) {
            try {
                if (((Boolean) zzbct.f10596b.e()).booleanValue()) {
                    CrashUtils.a(context, th);
                }
            } catch (IllegalStateException unused) {
            }
        }
    }

    public static final String j(InputStreamReader inputStreamReader) throws IOException {
        StringBuilder sb = new StringBuilder(Utility.DEFAULT_STREAM_BUFFER_SIZE);
        char[] cArr = new char[2048];
        while (true) {
            int i10 = inputStreamReader.read(cArr);
            if (i10 == -1) {
                return sb.toString();
            }
            sb.append(cArr, 0, i10);
        }
    }

    public static final int k(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e10) {
            zzbza.g("Could not parse value:".concat(e10.toString()));
            return 0;
        }
    }

    public static final Map l(Uri uri) {
        if (uri == null) {
            return null;
        }
        HashMap map = new HashMap();
        for (String str : uri.getQueryParameterNames()) {
            if (!TextUtils.isEmpty(str)) {
                map.put(str, uri.getQueryParameter(str));
            }
        }
        return map;
    }

    public static final WebResourceResponse m(HttpURLConnection httpURLConnection) throws IOException {
        com.google.android.gms.ads.internal.zzt.r();
        String contentType = httpURLConnection.getContentType();
        boolean zIsEmpty = TextUtils.isEmpty(contentType);
        String strTrim = BuildConfig.FLAVOR;
        String strTrim2 = zIsEmpty ? BuildConfig.FLAVOR : contentType.split(";")[0].trim();
        com.google.android.gms.ads.internal.zzt.r();
        String contentType2 = httpURLConnection.getContentType();
        if (!TextUtils.isEmpty(contentType2)) {
            String[] strArrSplit = contentType2.split(";");
            if (strArrSplit.length != 1) {
                int i10 = 1;
                while (true) {
                    if (i10 >= strArrSplit.length) {
                        break;
                    }
                    if (strArrSplit[i10].trim().startsWith("charset")) {
                        String[] strArrSplit2 = strArrSplit[i10].trim().split("=");
                        if (strArrSplit2.length > 1) {
                            strTrim = strArrSplit2[1].trim();
                            break;
                        }
                    }
                    i10++;
                }
            }
        }
        String str = strTrim;
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        HashMap map = new HashMap(headerFields.size());
        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null && !entry.getValue().isEmpty()) {
                map.put(entry.getKey(), entry.getValue().get(0));
            }
        }
        return com.google.android.gms.ads.internal.zzt.s().c(strTrim2, str, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), map, httpURLConnection.getInputStream());
    }

    public static final int[] n(Activity activity) {
        View viewFindViewById;
        Window window = activity.getWindow();
        return (window == null || (viewFindViewById = window.findViewById(android.R.id.content)) == null) ? Q() : new int[]{viewFindViewById.getWidth(), viewFindViewById.getHeight()};
    }

    public static final int[] o(Activity activity) {
        View viewFindViewById;
        Window window = activity.getWindow();
        int[] iArrQ = (window == null || (viewFindViewById = window.findViewById(android.R.id.content)) == null) ? Q() : new int[]{viewFindViewById.getTop(), viewFindViewById.getBottom()};
        return new int[]{com.google.android.gms.ads.internal.client.zzay.b().g(activity, iArrQ[0]), com.google.android.gms.ads.internal.client.zzay.b().g(activity, iArrQ[1])};
    }

    public static final boolean p(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        boolean z10 = com.google.android.gms.ads.internal.zzt.r().f6193c || keyguardManager == null || !keyguardManager.inKeyguardRestrictedInputMode() || K(view);
        long jR = R(view);
        if (view.getVisibility() == 0 && view.isShown() && ((powerManager == null || powerManager.isScreenOn()) && z10)) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10204e1)).booleanValue() || view.getLocalVisibleRect(new Rect()) || view.getGlobalVisibleRect(new Rect())) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.W8)).booleanValue()) {
                    return true;
                }
                if (jR >= ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Y8)).intValue()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final void q(Context context, Intent intent) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10322o9)).booleanValue()) {
            y(context, intent);
            return;
        }
        try {
            y(context, intent);
        } catch (SecurityException e10) {
            zzbza.h(BuildConfig.FLAVOR, e10);
            com.google.android.gms.ads.internal.zzt.q().u(e10, "AdUtil.startActivityWithUnknownContext");
        }
    }

    public static final void r(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            L(context, intent);
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            zzbza.b("Opening " + uri.toString() + " in a new browser.");
        } catch (ActivityNotFoundException e10) {
            zzbza.e("No browser is found.", e10);
        }
    }

    public static final int[] s(Activity activity) {
        int[] iArrN = n(activity);
        return new int[]{com.google.android.gms.ads.internal.client.zzay.b().g(activity, iArrN[0]), com.google.android.gms.ads.internal.client.zzay.b().g(activity, iArrN[1])};
    }

    public static final boolean t(View view, Context context) {
        Context applicationContext = context.getApplicationContext();
        return p(view, applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null, u(context));
    }

    private static KeyguardManager u(Context context) {
        Object systemService = context.getSystemService("keyguard");
        if (systemService == null || !(systemService instanceof KeyguardManager)) {
            return null;
        }
        return (KeyguardManager) systemService;
    }

    private static Bundle v(Context context) {
        try {
            return Wrappers.a(context).c(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e10) {
            zze.l("Error getting metadata", e10);
            return null;
        }
    }

    private static String w(Bundle bundle) {
        if (bundle == null) {
            return BuildConfig.FLAVOR;
        }
        String string = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
        return TextUtils.isEmpty(string) ? BuildConfig.FLAVOR : (string.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$") || string.matches("^/\\d+~.+$")) ? string : BuildConfig.FLAVOR;
    }

    private static boolean x(String str, AtomicReference atomicReference, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Pattern patternCompile = (Pattern) atomicReference.get();
            if (patternCompile == null || !str2.equals(patternCompile.pattern())) {
                patternCompile = Pattern.compile(str2);
                atomicReference.set(patternCompile);
            }
            return patternCompile.matcher(str).matches();
        } catch (PatternSyntaxException unused) {
            return false;
        }
    }

    private static final void y(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable unused) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    public static int z(int i10) {
        if (i10 >= 5000) {
            return i10;
        }
        if (i10 <= 0) {
            return 60000;
        }
        zzbza.g("HTTP timeout too low: " + i10 + " milliseconds. Reverting to default timeout: 60000 milliseconds.");
        return 60000;
    }

    public final zzfut A(final Uri uri) {
        return zzfuj.j(new Callable() { // from class: com.google.android.gms.ads.internal.util.zzl
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Uri uri2 = uri;
                zzfkr zzfkrVar = zzs.f6190i;
                com.google.android.gms.ads.internal.zzt.r();
                return zzs.l(uri2);
            }
        }, this.f6198h);
    }

    public final String B(final Context context, String str) {
        String str2;
        synchronized (this.f6194d) {
            String str3 = this.f6195e;
            if (str3 != null) {
                return str3;
            }
            if (str == null) {
                return N();
            }
            try {
                zzce zzceVarA = zzce.a();
                if (TextUtils.isEmpty(zzceVarA.f6140a)) {
                    if (ClientLibraryUtils.a()) {
                        str2 = (String) zzcb.a(context, new Callable() { // from class: com.google.android.gms.ads.internal.util.zzcc
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                Context context2 = context;
                                SharedPreferences sharedPreferences = context2.getSharedPreferences("admob_user_agent", 0);
                                String string = sharedPreferences.getString("user_agent", BuildConfig.FLAVOR);
                                if (!TextUtils.isEmpty(string)) {
                                    zze.k("User agent is already initialized on Google Play Services.");
                                    return string;
                                }
                                zze.k("User agent is not initialized on Google Play Services. Initializing.");
                                String defaultUserAgent = WebSettings.getDefaultUserAgent(context2);
                                SharedPreferencesUtils.a(context2, sharedPreferences.edit().putString("user_agent", defaultUserAgent), "admob_user_agent");
                                return defaultUserAgent;
                            }
                        });
                    } else {
                        final Context contextD = GooglePlayServicesUtilLight.d(context);
                        str2 = (String) zzcb.a(context, new Callable() { // from class: com.google.android.gms.ads.internal.util.zzcd
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                SharedPreferences sharedPreferences;
                                Context context2 = contextD;
                                Context context3 = context;
                                boolean z10 = false;
                                if (context2 != null) {
                                    zze.k("Attempting to read user agent from Google Play Services.");
                                    sharedPreferences = context2.getSharedPreferences("admob_user_agent", 0);
                                } else {
                                    zze.k("Attempting to read user agent from local cache.");
                                    sharedPreferences = context3.getSharedPreferences("admob_user_agent", 0);
                                    z10 = true;
                                }
                                String string = sharedPreferences.getString("user_agent", BuildConfig.FLAVOR);
                                if (TextUtils.isEmpty(string)) {
                                    zze.k("Reading user agent from WebSettings");
                                    string = WebSettings.getDefaultUserAgent(context3);
                                    if (z10) {
                                        sharedPreferences.edit().putString("user_agent", string).apply();
                                        zze.k("Persisting user agent.");
                                    }
                                }
                                return string;
                            }
                        });
                    }
                    zzceVarA.f6140a = str2;
                }
                this.f6195e = zzceVarA.f6140a;
            } catch (Exception unused) {
            }
            if (TextUtils.isEmpty(this.f6195e)) {
                this.f6195e = WebSettings.getDefaultUserAgent(context);
            }
            if (TextUtils.isEmpty(this.f6195e)) {
                this.f6195e = N();
            }
            this.f6195e = this.f6195e + " (Mobile; " + str;
            try {
                if (Wrappers.a(context).g()) {
                    this.f6195e = this.f6195e + ";aia";
                }
            } catch (Exception e10) {
                com.google.android.gms.ads.internal.zzt.q().u(e10, "AdUtil.getUserAgent");
            }
            String str4 = this.f6195e + ")";
            this.f6195e = str4;
            return str4;
        }
    }

    public final void D(Context context, String str, boolean z10, HttpURLConnection httpURLConnection, boolean z11, int i10) {
        int iZ = z(i10);
        zzbza.f("HTTP timeout: " + iZ + " milliseconds.");
        httpURLConnection.setConnectTimeout(iZ);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(iZ);
        if (TextUtils.isEmpty(httpURLConnection.getRequestProperty("User-Agent"))) {
            httpURLConnection.setRequestProperty("User-Agent", B(context, str));
        }
        httpURLConnection.setUseCaches(false);
    }

    public final boolean F(String str) {
        return x(str, this.f6191a, (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Z));
    }

    public final boolean G(String str) {
        return x(str, this.f6192b, (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10159a0));
    }

    @SuppressLint({"UnprotectedReceiver"})
    public final boolean H(Context context) {
        if (this.f6197g) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        zzbar.c(context);
        zzo zzoVar = null;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10311n9)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            context.getApplicationContext().registerReceiver(new n(this, zzoVar), intentFilter);
        } else {
            context.getApplicationContext().registerReceiver(new n(this, zzoVar), intentFilter, 4);
        }
        this.f6197g = true;
        return true;
    }

    @SuppressLint({"UnprotectedReceiver"})
    public final boolean I(Context context) {
        if (this.f6196f) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        zzbar.c(context);
        zzq zzqVar = null;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10311n9)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            context.getApplicationContext().registerReceiver(new o(this, zzqVar), intentFilter);
        } else {
            context.getApplicationContext().registerReceiver(new o(this, zzqVar), intentFilter, 4);
        }
        this.f6196f = true;
        return true;
    }

    public final int J(Context context, Uri uri) {
        int i10;
        if (context == null) {
            zze.k("Trying to open chrome custom tab on a null context");
            return 3;
        }
        if (context instanceof Activity) {
            i10 = 0;
        } else {
            zze.k("Chrome Custom Tabs can only work with Activity context.");
            i10 = 2;
        }
        zzbaj zzbajVar = zzbar.f10207e4;
        Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar);
        zzbaj zzbajVar2 = zzbar.f10218f4;
        if (true == bool.equals(com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar2))) {
            i10 = 9;
        }
        if (i10 != 0) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addFlags(268435456);
            context.startActivity(intent);
            return i10;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).booleanValue()) {
            zzbbs zzbbsVar = new zzbbs();
            zzbbsVar.e(new m(this, zzbbsVar, context, uri));
            zzbbsVar.b((Activity) context);
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar2)).booleanValue()) {
            return 5;
        }
        androidx.browser.customtabs.d dVarA = new d.a().a();
        dVarA.f1276a.setPackage(zzgxm.a(context));
        dVarA.a(context, uri);
        return 5;
    }
}
