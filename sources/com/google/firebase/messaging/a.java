package com.google.firebase.messaging;

import android.R;
import android.annotation.TargetApi;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.l;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f26401a = new AtomicInteger((int) SystemClock.elapsedRealtime());

    /* JADX INFO: renamed from: com.google.firebase.messaging.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
    public static class C0126a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final l.e f26402a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f26403b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f26404c = 0;

        C0126a(l.e eVar, String str, int i10) {
            this.f26402a = eVar;
            this.f26403b = str;
        }
    }

    private static PendingIntent a(Context context, g0 g0Var, String str, PackageManager packageManager) {
        Intent intentF = f(str, g0Var, packageManager);
        if (intentF == null) {
            return null;
        }
        intentF.addFlags(67108864);
        intentF.putExtras(g0Var.y());
        if (q(g0Var)) {
            intentF.putExtra("gcm.n.analytics_data", g0Var.x());
        }
        return PendingIntent.getActivity(context, g(), intentF, l(1073741824));
    }

    private static PendingIntent b(Context context, g0 g0Var) {
        if (q(g0Var)) {
            return c(context, new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS").putExtras(g0Var.x()));
        }
        return null;
    }

    private static PendingIntent c(Context context, Intent intent) {
        return PendingIntent.getBroadcast(context, g(), new Intent("com.google.firebase.MESSAGING_EVENT").setComponent(new ComponentName(context, "com.google.firebase.iid.FirebaseInstanceIdReceiver")).putExtra("wrapped_intent", intent), l(1073741824));
    }

    static C0126a d(Context context, g0 g0Var) {
        Bundle bundleJ = j(context.getPackageManager(), context.getPackageName());
        return e(context, context.getPackageName(), g0Var, k(context, g0Var.k(), bundleJ), context.getResources(), context.getPackageManager(), bundleJ);
    }

    public static C0126a e(Context context, String str, g0 g0Var, String str2, Resources resources, PackageManager packageManager, Bundle bundle) {
        l.e eVar = new l.e(context, str2);
        String strN = g0Var.n(resources, str, "gcm.n.title");
        if (!TextUtils.isEmpty(strN)) {
            eVar.k(strN);
        }
        String strN2 = g0Var.n(resources, str, "gcm.n.body");
        if (!TextUtils.isEmpty(strN2)) {
            eVar.j(strN2);
            eVar.y(new l.c().h(strN2));
        }
        eVar.w(m(packageManager, resources, str, g0Var.p("gcm.n.icon"), bundle));
        Uri uriN = n(str, g0Var, resources);
        if (uriN != null) {
            eVar.x(uriN);
        }
        eVar.i(a(context, g0Var, str, packageManager));
        PendingIntent pendingIntentB = b(context, g0Var);
        if (pendingIntentB != null) {
            eVar.m(pendingIntentB);
        }
        Integer numH = h(context, g0Var.p("gcm.n.color"), bundle);
        if (numH != null) {
            eVar.h(numH.intValue());
        }
        eVar.f(!g0Var.a("gcm.n.sticky"));
        eVar.q(g0Var.a("gcm.n.local_only"));
        String strP = g0Var.p("gcm.n.ticker");
        if (strP != null) {
            eVar.z(strP);
        }
        Integer numM = g0Var.m();
        if (numM != null) {
            eVar.t(numM.intValue());
        }
        Integer numR = g0Var.r();
        if (numR != null) {
            eVar.B(numR.intValue());
        }
        Integer numL = g0Var.l();
        if (numL != null) {
            eVar.r(numL.intValue());
        }
        Long lJ = g0Var.j("gcm.n.event_time");
        if (lJ != null) {
            eVar.v(true);
            eVar.C(lJ.longValue());
        }
        long[] jArrQ = g0Var.q();
        if (jArrQ != null) {
            eVar.A(jArrQ);
        }
        int[] iArrE = g0Var.e();
        if (iArrE != null) {
            eVar.p(iArrE[0], iArrE[1], iArrE[2]);
        }
        eVar.l(i(g0Var));
        return new C0126a(eVar, o(g0Var), 0);
    }

    private static Intent f(String str, g0 g0Var, PackageManager packageManager) {
        String strP = g0Var.p("gcm.n.click_action");
        if (!TextUtils.isEmpty(strP)) {
            Intent intent = new Intent(strP);
            intent.setPackage(str);
            intent.setFlags(268435456);
            return intent;
        }
        Uri uriF = g0Var.f();
        if (uriF != null) {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setPackage(str);
            intent2.setData(uriF);
            return intent2;
        }
        Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            Log.w("FirebaseMessaging", "No activity found to launch app");
        }
        return launchIntentForPackage;
    }

    private static int g() {
        return f26401a.incrementAndGet();
    }

    private static Integer h(Context context, String str, Bundle bundle) {
        if (Build.VERSION.SDK_INT < 21) {
            return null;
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Color.parseColor(str));
            } catch (IllegalArgumentException unused) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 56);
                sb.append("Color is invalid: ");
                sb.append(str);
                sb.append(". Notification will use default color.");
                Log.w("FirebaseMessaging", sb.toString());
            }
        }
        int i10 = bundle.getInt("com.google.firebase.messaging.default_notification_color", 0);
        if (i10 != 0) {
            try {
                return Integer.valueOf(androidx.core.content.a.d(context, i10));
            } catch (Resources.NotFoundException unused2) {
                Log.w("FirebaseMessaging", "Cannot find the color resource referenced in AndroidManifest.");
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    private static int i(g0 g0Var) {
        boolean zA = g0Var.a("gcm.n.default_sound");
        ?? r02 = zA;
        if (g0Var.a("gcm.n.default_vibrate_timings")) {
            r02 = (zA ? 1 : 0) | 2;
        }
        return g0Var.a("gcm.n.default_light_settings") ? r02 | 4 : r02;
    }

    private static Bundle j(PackageManager packageManager, String str) {
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 128);
            if (applicationInfo != null) {
                Bundle bundle = applicationInfo.metaData;
                if (bundle != null) {
                    return bundle;
                }
            }
        } catch (PackageManager.NameNotFoundException e10) {
            String strValueOf = String.valueOf(e10);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 35);
            sb.append("Couldn't get own application info: ");
            sb.append(strValueOf);
            Log.w("FirebaseMessaging", sb.toString());
        }
        return Bundle.EMPTY;
    }

    @TargetApi(26)
    public static String k(Context context, String str, Bundle bundle) {
        String string;
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        try {
            if (context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).targetSdkVersion >= 26) {
                NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
                if (!TextUtils.isEmpty(str)) {
                    if (notificationManager.getNotificationChannel(str) != null) {
                        return str;
                    }
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 122);
                    sb.append("Notification Channel requested (");
                    sb.append(str);
                    sb.append(") has not been created by the app. Manifest configuration, or default, value will be used.");
                    Log.w("FirebaseMessaging", sb.toString());
                }
                String string2 = bundle.getString("com.google.firebase.messaging.default_notification_channel_id");
                if (TextUtils.isEmpty(string2)) {
                    Log.w("FirebaseMessaging", "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used.");
                } else {
                    if (notificationManager.getNotificationChannel(string2) != null) {
                        return string2;
                    }
                    Log.w("FirebaseMessaging", "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used.");
                }
                if (notificationManager.getNotificationChannel("fcm_fallback_notification_channel") == null) {
                    int identifier = context.getResources().getIdentifier("fcm_fallback_notification_channel_label", "string", context.getPackageName());
                    if (identifier == 0) {
                        Log.e("FirebaseMessaging", "String resource \"fcm_fallback_notification_channel_label\" is not found. Using default string channel name.");
                        string = "Misc";
                    } else {
                        string = context.getString(identifier);
                    }
                    notificationManager.createNotificationChannel(new NotificationChannel("fcm_fallback_notification_channel", string, 3));
                }
                return "fcm_fallback_notification_channel";
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return null;
    }

    private static int l(int i10) {
        return Build.VERSION.SDK_INT >= 23 ? 1140850688 : 1073741824;
    }

    private static int m(PackageManager packageManager, Resources resources, String str, String str2, Bundle bundle) {
        if (!TextUtils.isEmpty(str2)) {
            int identifier = resources.getIdentifier(str2, "drawable", str);
            if (identifier != 0 && p(resources, identifier)) {
                return identifier;
            }
            int identifier2 = resources.getIdentifier(str2, "mipmap", str);
            if (identifier2 != 0 && p(resources, identifier2)) {
                return identifier2;
            }
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 61);
            sb.append("Icon resource ");
            sb.append(str2);
            sb.append(" not found. Notification will use default icon.");
            Log.w("FirebaseMessaging", sb.toString());
        }
        int i10 = bundle.getInt("com.google.firebase.messaging.default_notification_icon", 0);
        if (i10 == 0 || !p(resources, i10)) {
            try {
                i10 = packageManager.getApplicationInfo(str, 0).icon;
            } catch (PackageManager.NameNotFoundException e10) {
                String strValueOf = String.valueOf(e10);
                StringBuilder sb2 = new StringBuilder(strValueOf.length() + 35);
                sb2.append("Couldn't get own application info: ");
                sb2.append(strValueOf);
                Log.w("FirebaseMessaging", sb2.toString());
            }
        }
        return (i10 == 0 || !p(resources, i10)) ? R.drawable.sym_def_app_icon : i10;
    }

    private static Uri n(String str, g0 g0Var, Resources resources) {
        String strO = g0Var.o();
        if (TextUtils.isEmpty(strO)) {
            return null;
        }
        if ("default".equals(strO) || resources.getIdentifier(strO, "raw", str) == 0) {
            return RingtoneManager.getDefaultUri(2);
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 24 + String.valueOf(strO).length());
        sb.append("android.resource://");
        sb.append(str);
        sb.append("/raw/");
        sb.append(strO);
        return Uri.parse(sb.toString());
    }

    private static String o(g0 g0Var) {
        String strP = g0Var.p("gcm.n.tag");
        if (!TextUtils.isEmpty(strP)) {
            return strP;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        StringBuilder sb = new StringBuilder(37);
        sb.append("FCM-Notification:");
        sb.append(jUptimeMillis);
        return sb.toString();
    }

    @TargetApi(26)
    private static boolean p(Resources resources, int i10) {
        if (Build.VERSION.SDK_INT != 26) {
            return true;
        }
        try {
            if (!(resources.getDrawable(i10, null) instanceof AdaptiveIconDrawable)) {
                return true;
            }
            StringBuilder sb = new StringBuilder(77);
            sb.append("Adaptive icons cannot be used in notifications. Ignoring icon id: ");
            sb.append(i10);
            Log.e("FirebaseMessaging", sb.toString());
            return false;
        } catch (Resources.NotFoundException unused) {
            StringBuilder sb2 = new StringBuilder(66);
            sb2.append("Couldn't find resource ");
            sb2.append(i10);
            sb2.append(", treating it as an invalid icon");
            Log.e("FirebaseMessaging", sb2.toString());
            return false;
        }
    }

    static boolean q(g0 g0Var) {
        return g0Var.a("google.c.a.e");
    }
}
