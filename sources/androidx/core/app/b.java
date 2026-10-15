package androidx.core.app;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.HashSet;

/* JADX INFO: compiled from: ActivityCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class b extends androidx.core.content.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static f f1971d;

    /* JADX INFO: compiled from: ActivityCompat.java */
    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ String[] f1972o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ Activity f1973p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ int f1974q;

        a(String[] strArr, Activity activity, int i10) {
            this.f1972o = strArr;
            this.f1973p = activity;
            this.f1974q = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[this.f1972o.length];
            PackageManager packageManager = this.f1973p.getPackageManager();
            String packageName = this.f1973p.getPackageName();
            int length = this.f1972o.length;
            for (int i10 = 0; i10 < length; i10++) {
                iArr[i10] = packageManager.checkPermission(this.f1972o[i10], packageName);
            }
            ((e) this.f1973p).onRequestPermissionsResult(this.f1974q, this.f1972o, iArr);
        }
    }

    /* JADX INFO: renamed from: androidx.core.app.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ActivityCompat.java */
    static class C0023b {
        static void a(Activity activity) {
            activity.finishAffinity();
        }

        static void b(Activity activity, Intent intent, int i10, Bundle bundle) {
            activity.startActivityForResult(intent, i10, bundle);
        }

        static void c(Activity activity, IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) throws IntentSender.SendIntentException {
            activity.startIntentSenderForResult(intentSender, i10, intent, i11, i12, i13, bundle);
        }
    }

    /* JADX INFO: compiled from: ActivityCompat.java */
    static class c {
        static void a(Activity activity) {
            activity.finishAfterTransition();
        }

        static void b(Activity activity) {
            activity.postponeEnterTransition();
        }

        static void c(Activity activity, SharedElementCallback sharedElementCallback) {
            activity.setEnterSharedElementCallback(sharedElementCallback);
        }

        static void d(Activity activity, SharedElementCallback sharedElementCallback) {
            activity.setExitSharedElementCallback(sharedElementCallback);
        }

        static void e(Activity activity) {
            activity.startPostponedEnterTransition();
        }
    }

    /* JADX INFO: compiled from: ActivityCompat.java */
    static class d {
        static void a(Object obj) {
            ((SharedElementCallback.OnSharedElementsReadyListener) obj).onSharedElementsReady();
        }

        static void b(Activity activity, String[] strArr, int i10) {
            activity.requestPermissions(strArr, i10);
        }

        static boolean c(Activity activity, String str) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
    }

    /* JADX INFO: compiled from: ActivityCompat.java */
    public interface e {
        void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr);
    }

    /* JADX INFO: compiled from: ActivityCompat.java */
    public interface f {
        boolean a(Activity activity, String[] strArr, int i10);
    }

    /* JADX INFO: compiled from: ActivityCompat.java */
    public interface g {
        void validateRequestPermissionsRequestCode(int i10);
    }

    public static void o(Activity activity) {
        if (Build.VERSION.SDK_INT >= 16) {
            C0023b.a(activity);
        } else {
            activity.finish();
        }
    }

    public static void p(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            c.a(activity);
        } else {
            activity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void q(Activity activity) {
        if (activity.isFinishing() || androidx.core.app.d.i(activity)) {
            return;
        }
        activity.recreate();
    }

    public static void r(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            c.b(activity);
        }
    }

    public static void s(final Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else {
            new Handler(activity.getMainLooper()).post(new Runnable() { // from class: androidx.core.app.a
                @Override // java.lang.Runnable
                public final void run() {
                    b.q(activity);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void t(Activity activity, String[] strArr, int i10) {
        f fVar = f1971d;
        if (fVar == null || !fVar.a(activity, strArr, i10)) {
            HashSet hashSet = new HashSet();
            for (int i11 = 0; i11 < strArr.length; i11++) {
                if (TextUtils.isEmpty(strArr[i11])) {
                    throw new IllegalArgumentException("Permission request for permissions " + Arrays.toString(strArr) + " must not contain null or empty values");
                }
                if (!androidx.core.os.a.d() && TextUtils.equals(strArr[i11], "android.permission.POST_NOTIFICATIONS")) {
                    hashSet.add(Integer.valueOf(i11));
                }
            }
            int size = hashSet.size();
            String[] strArr2 = size > 0 ? new String[strArr.length - size] : strArr;
            if (size > 0) {
                if (size == strArr.length) {
                    return;
                }
                int i12 = 0;
                for (int i13 = 0; i13 < strArr.length; i13++) {
                    if (!hashSet.contains(Integer.valueOf(i13))) {
                        strArr2[i12] = strArr[i13];
                        i12++;
                    }
                }
            }
            if (Build.VERSION.SDK_INT >= 23) {
                if (activity instanceof g) {
                    ((g) activity).validateRequestPermissionsRequestCode(i10);
                }
                d.b(activity, strArr, i10);
            } else if (activity instanceof e) {
                new Handler(Looper.getMainLooper()).post(new a(strArr2, activity, i10));
            }
        }
    }

    public static void u(Activity activity, s sVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            c.c(activity, null);
        }
    }

    public static void v(Activity activity, s sVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            c.d(activity, null);
        }
    }

    public static boolean w(Activity activity, String str) {
        if ((androidx.core.os.a.d() || !TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) && Build.VERSION.SDK_INT >= 23) {
            return d.c(activity, str);
        }
        return false;
    }

    public static void x(Activity activity, Intent intent, int i10, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            C0023b.b(activity, intent, i10, bundle);
        } else {
            activity.startActivityForResult(intent, i10);
        }
    }

    public static void y(Activity activity, IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) throws IntentSender.SendIntentException {
        if (Build.VERSION.SDK_INT >= 16) {
            C0023b.c(activity, intentSender, i10, intent, i11, i12, i13, bundle);
        } else {
            activity.startIntentSenderForResult(intentSender, i10, intent, i11, i12, i13);
        }
    }

    public static void z(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            c.e(activity);
        }
    }
}
