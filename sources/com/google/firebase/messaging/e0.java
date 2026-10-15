package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.security.CertificateUtil;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.ExecutionException;
import s6.a;
import s6.b;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class e0 {
    public static boolean A(Intent intent) {
        if (intent == null || r(intent)) {
            return false;
        }
        return B(intent.getExtras());
    }

    public static boolean B(Bundle bundle) {
        if (bundle == null) {
            return false;
        }
        return AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(bundle.getString("google.c.a.e"));
    }

    static boolean a() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            b5.g.m();
            Context contextL = b5.g.m().l();
            SharedPreferences sharedPreferences = contextL.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("export_to_big_query")) {
                return sharedPreferences.getBoolean("export_to_big_query", false);
            }
            try {
                PackageManager packageManager = contextL.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(contextL.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("delivery_metrics_exported_to_big_query_enabled")) {
                    return applicationInfo.metaData.getBoolean("delivery_metrics_exported_to_big_query_enabled", false);
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            return false;
        } catch (IllegalStateException unused2) {
            Log.i("FirebaseMessaging", "FirebaseApp has not being initialized. Device might be in direct boot mode. Skip exporting delivery metrics to Big Query");
            return false;
        }
    }

    static s6.a b(a.b bVar, Intent intent) {
        if (intent == null) {
            return null;
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            extras = Bundle.EMPTY;
        }
        a.C0248a c0248aP = s6.a.p();
        c0248aP.m(p(extras));
        c0248aP.e(bVar);
        c0248aP.f(f(extras));
        c0248aP.i(m());
        c0248aP.k(a.d.ANDROID);
        c0248aP.h(k(extras));
        String strH = h(extras);
        if (strH != null) {
            c0248aP.g(strH);
        }
        String strO = o(extras);
        if (strO != null) {
            c0248aP.l(strO);
        }
        String strC = c(extras);
        if (strC != null) {
            c0248aP.c(strC);
        }
        String strI = i(extras);
        if (strI != null) {
            c0248aP.b(strI);
        }
        String strE = e(extras);
        if (strE != null) {
            c0248aP.d(strE);
        }
        long jN = n(extras);
        if (jN > 0) {
            c0248aP.j(jN);
        }
        return c0248aP.a();
    }

    static String c(Bundle bundle) {
        return bundle.getString("collapse_key");
    }

    static String d(Bundle bundle) {
        return bundle.getString("google.c.a.c_id");
    }

    static String e(Bundle bundle) {
        return bundle.getString("google.c.a.c_l");
    }

    static String f(Bundle bundle) {
        String string = bundle.getString("google.to");
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        try {
            return (String) Tasks.a(com.google.firebase.installations.c.r(b5.g.m()).a());
        } catch (InterruptedException | ExecutionException e10) {
            throw new RuntimeException(e10);
        }
    }

    static String g(Bundle bundle) {
        return bundle.getString("google.c.a.m_c");
    }

    static String h(Bundle bundle) {
        String string = bundle.getString("google.message_id");
        return string == null ? bundle.getString("message_id") : string;
    }

    static String i(Bundle bundle) {
        return bundle.getString("google.c.a.m_l");
    }

    static String j(Bundle bundle) {
        return bundle.getString("google.c.a.ts");
    }

    static a.c k(Bundle bundle) {
        return (bundle == null || !g0.t(bundle)) ? a.c.DATA_MESSAGE : a.c.DISPLAY_NOTIFICATION;
    }

    static String l(Bundle bundle) {
        return true != g0.t(bundle) ? "data" : ServerProtocol.DIALOG_PARAM_DISPLAY;
    }

    static String m() {
        return b5.g.m().l().getPackageName();
    }

    static long n(Bundle bundle) {
        if (bundle.containsKey("google.c.sender.id")) {
            try {
                return Long.parseLong(bundle.getString("google.c.sender.id"));
            } catch (NumberFormatException e10) {
                Log.w("FirebaseMessaging", "error parsing project number", e10);
            }
        }
        b5.g gVarM = b5.g.m();
        String strD = gVarM.p().d();
        if (strD != null) {
            try {
                return Long.parseLong(strD);
            } catch (NumberFormatException e11) {
                Log.w("FirebaseMessaging", "error parsing sender ID", e11);
            }
        }
        String strC = gVarM.p().c();
        if (strC.startsWith("1:")) {
            String[] strArrSplit = strC.split(CertificateUtil.DELIMITER);
            if (strArrSplit.length < 2) {
                return 0L;
            }
            String str = strArrSplit[1];
            if (str.isEmpty()) {
                return 0L;
            }
            try {
                return Long.parseLong(str);
            } catch (NumberFormatException e12) {
                Log.w("FirebaseMessaging", "error parsing app ID", e12);
            }
        } else {
            try {
                return Long.parseLong(strC);
            } catch (NumberFormatException e13) {
                Log.w("FirebaseMessaging", "error parsing app ID", e13);
            }
        }
        return 0L;
    }

    static String o(Bundle bundle) {
        String string = bundle.getString("from");
        if (string == null || !string.startsWith("/topics/")) {
            return null;
        }
        return string;
    }

    static int p(Bundle bundle) {
        Object obj = bundle.get("google.ttl");
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (!(obj instanceof String)) {
            return 0;
        }
        try {
            return Integer.parseInt((String) obj);
        } catch (NumberFormatException unused) {
            String strValueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 13);
            sb.append("Invalid TTL: ");
            sb.append(strValueOf);
            Log.w("FirebaseMessaging", sb.toString());
            return 0;
        }
    }

    static String q(Bundle bundle) {
        if (bundle.containsKey("google.c.a.udt")) {
            return bundle.getString("google.c.a.udt");
        }
        return null;
    }

    private static boolean r(Intent intent) {
        return "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT".equals(intent.getAction());
    }

    public static void s(Intent intent) {
        x("_nd", intent.getExtras());
    }

    public static void t(Intent intent) {
        x("_nf", intent.getExtras());
    }

    public static void u(Bundle bundle) {
        y(bundle);
        x("_no", bundle);
    }

    public static void v(Intent intent) {
        if (A(intent)) {
            x("_nr", intent.getExtras());
        }
        if (z(intent)) {
            w(a.b.MESSAGE_DELIVERED, intent, FirebaseMessaging.h());
        }
    }

    private static void w(a.b bVar, Intent intent, j3.g gVar) {
        if (gVar == null) {
            Log.e("FirebaseMessaging", "TransportFactory is null. Skip exporting message delivery metrics to Big Query");
            return;
        }
        s6.a aVarB = b(bVar, intent);
        if (aVarB == null) {
            return;
        }
        try {
            j3.f fVarA = gVar.a("FCM_CLIENT_EVENT_LOGGING", s6.b.class, j3.b.b("proto"), d0.f26432a);
            b.a aVarB2 = s6.b.b();
            aVarB2.b(aVarB);
            fVarA.b(j3.c.e(aVarB2.a()));
        } catch (RuntimeException e10) {
            Log.w("FirebaseMessaging", "Failed to send big query analytics payload.", e10);
        }
    }

    static void x(String str, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        Bundle bundle2 = new Bundle();
        String strD = d(bundle);
        if (strD != null) {
            bundle2.putString("_nmid", strD);
        }
        String strE = e(bundle);
        if (strE != null) {
            bundle2.putString("_nmn", strE);
        }
        String strI = i(bundle);
        if (!TextUtils.isEmpty(strI)) {
            bundle2.putString("label", strI);
        }
        String strG = g(bundle);
        if (!TextUtils.isEmpty(strG)) {
            bundle2.putString("message_channel", strG);
        }
        String strO = o(bundle);
        if (strO != null) {
            bundle2.putString("_nt", strO);
        }
        String strJ = j(bundle);
        if (strJ != null) {
            try {
                bundle2.putInt("_nmt", Integer.parseInt(strJ));
            } catch (NumberFormatException e10) {
                Log.w("FirebaseMessaging", "Error while parsing timestamp in GCM event", e10);
            }
        }
        String strQ = q(bundle);
        if (strQ != null) {
            try {
                bundle2.putInt("_ndt", Integer.parseInt(strQ));
            } catch (NumberFormatException e11) {
                Log.w("FirebaseMessaging", "Error while parsing use_device_time in GCM event", e11);
            }
        }
        String strL = l(bundle);
        if ("_nr".equals(str) || "_nf".equals(str)) {
            bundle2.putString("_nmc", strL);
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            String strValueOf = String.valueOf(bundle2);
            StringBuilder sb = new StringBuilder(str.length() + 37 + strValueOf.length());
            sb.append("Logging to scion event=");
            sb.append(str);
            sb.append(" scionPayload=");
            sb.append(strValueOf);
            Log.d("FirebaseMessaging", sb.toString());
        }
        e5.a aVar = (e5.a) b5.g.m().j(e5.a.class);
        if (aVar != null) {
            aVar.c("fcm", str, bundle2);
        } else {
            Log.w("FirebaseMessaging", "Unable to log event: analytics library is missing");
        }
    }

    private static void y(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (!AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(bundle.getString("google.c.a.tc"))) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Received event with track-conversion=false. Do not set user property");
                return;
            }
            return;
        }
        e5.a aVar = (e5.a) b5.g.m().j(e5.a.class);
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Received event with track-conversion=true. Setting user property and reengagement event");
        }
        if (aVar == null) {
            Log.w("FirebaseMessaging", "Unable to set user property for conversion tracking:  analytics library is missing");
            return;
        }
        String string = bundle.getString("google.c.a.c_id");
        aVar.g("fcm", "_ln", string);
        Bundle bundle2 = new Bundle();
        bundle2.putString(ShareConstants.FEED_SOURCE_PARAM, "Firebase");
        bundle2.putString("medium", "notification");
        bundle2.putString("campaign", string);
        aVar.c("fcm", "_cmp", bundle2);
    }

    public static boolean z(Intent intent) {
        if (intent == null || r(intent)) {
            return false;
        }
        return a();
    }
}
