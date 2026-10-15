package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.measurement.internal.zzhe;
import com.google.android.gms.measurement.internal.zzhf;
import com.google.android.gms.measurement.internal.zzhh;
import com.google.android.gms.measurement.internal.zzit;
import e5.a;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Set f26237a = new HashSet(Arrays.asList("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final List f26238b = Arrays.asList("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final List f26239c = Arrays.asList("auto", "app", "am");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List f26240d = Arrays.asList("_r", "_dbg");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final List f26241e = Arrays.asList((String[]) ArrayUtils.a(zzhh.f24746a, zzhh.f24747b));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final List f26242f = Arrays.asList("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    public static Bundle a(a.c cVar) {
        Bundle bundle = new Bundle();
        String str = cVar.f28936a;
        if (str != null) {
            bundle.putString("origin", str);
        }
        String str2 = cVar.f28937b;
        if (str2 != null) {
            bundle.putString("name", str2);
        }
        Object obj = cVar.f28938c;
        if (obj != null) {
            zzhe.b(bundle, obj);
        }
        String str3 = cVar.f28939d;
        if (str3 != null) {
            bundle.putString("trigger_event_name", str3);
        }
        bundle.putLong("trigger_timeout", cVar.f28940e);
        String str4 = cVar.f28941f;
        if (str4 != null) {
            bundle.putString("timed_out_event_name", str4);
        }
        Bundle bundle2 = cVar.f28942g;
        if (bundle2 != null) {
            bundle.putBundle("timed_out_event_params", bundle2);
        }
        String str5 = cVar.f28943h;
        if (str5 != null) {
            bundle.putString("triggered_event_name", str5);
        }
        Bundle bundle3 = cVar.f28944i;
        if (bundle3 != null) {
            bundle.putBundle("triggered_event_params", bundle3);
        }
        bundle.putLong("time_to_live", cVar.f28945j);
        String str6 = cVar.f28946k;
        if (str6 != null) {
            bundle.putString("expired_event_name", str6);
        }
        Bundle bundle4 = cVar.f28947l;
        if (bundle4 != null) {
            bundle.putBundle("expired_event_params", bundle4);
        }
        bundle.putLong("creation_timestamp", cVar.f28948m);
        bundle.putBoolean("active", cVar.f28949n);
        bundle.putLong("triggered_timestamp", cVar.f28950o);
        return bundle;
    }

    public static a.c b(Bundle bundle) {
        Preconditions.k(bundle);
        a.c cVar = new a.c();
        cVar.f28936a = (String) Preconditions.k((String) zzhe.a(bundle, "origin", String.class, null));
        cVar.f28937b = (String) Preconditions.k((String) zzhe.a(bundle, "name", String.class, null));
        cVar.f28938c = zzhe.a(bundle, SDKConstants.PARAM_VALUE, Object.class, null);
        cVar.f28939d = (String) zzhe.a(bundle, "trigger_event_name", String.class, null);
        cVar.f28940e = ((Long) zzhe.a(bundle, "trigger_timeout", Long.class, 0L)).longValue();
        cVar.f28941f = (String) zzhe.a(bundle, "timed_out_event_name", String.class, null);
        cVar.f28942g = (Bundle) zzhe.a(bundle, "timed_out_event_params", Bundle.class, null);
        cVar.f28943h = (String) zzhe.a(bundle, "triggered_event_name", String.class, null);
        cVar.f28944i = (Bundle) zzhe.a(bundle, "triggered_event_params", Bundle.class, null);
        cVar.f28945j = ((Long) zzhe.a(bundle, "time_to_live", Long.class, 0L)).longValue();
        cVar.f28946k = (String) zzhe.a(bundle, "expired_event_name", String.class, null);
        cVar.f28947l = (Bundle) zzhe.a(bundle, "expired_event_params", Bundle.class, null);
        cVar.f28949n = ((Boolean) zzhe.a(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
        cVar.f28948m = ((Long) zzhe.a(bundle, "creation_timestamp", Long.class, 0L)).longValue();
        cVar.f28950o = ((Long) zzhe.a(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        return cVar;
    }

    public static String c(String str) {
        String strA = zzhf.a(str);
        return strA != null ? strA : str;
    }

    public static void d(String str, String str2, Bundle bundle) {
        if ("clx".equals(str) && "_ae".equals(str2)) {
            bundle.putLong("_r", 1L);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean e(java.lang.String r4, java.lang.String r5, android.os.Bundle r6) {
        /*
            java.lang.String r0 = "_cmp"
            boolean r5 = r0.equals(r5)
            r0 = 1
            if (r5 != 0) goto La
            return r0
        La:
            boolean r5 = i(r4)
            r1 = 0
            if (r5 != 0) goto L12
            return r1
        L12:
            if (r6 != 0) goto L15
            return r1
        L15:
            java.util.List r5 = com.google.firebase.analytics.connector.internal.b.f26240d
            java.util.Iterator r5 = r5.iterator()
        L1b:
            boolean r2 = r5.hasNext()
            if (r2 == 0) goto L2e
            java.lang.Object r2 = r5.next()
            java.lang.String r2 = (java.lang.String) r2
            boolean r2 = r6.containsKey(r2)
            if (r2 == 0) goto L1b
            return r1
        L2e:
            int r5 = r4.hashCode()
            r2 = 101200(0x18b50, float:1.41811E-40)
            r3 = 2
            if (r5 == r2) goto L57
            r2 = 101230(0x18b6e, float:1.41853E-40)
            if (r5 == r2) goto L4d
            r2 = 3142703(0x2ff42f, float:4.403865E-39)
            if (r5 == r2) goto L43
            goto L61
        L43:
            java.lang.String r5 = "fiam"
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L61
            r4 = 2
            goto L62
        L4d:
            java.lang.String r5 = "fdl"
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L61
            r4 = 1
            goto L62
        L57:
            java.lang.String r5 = "fcm"
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L61
            r4 = 0
            goto L62
        L61:
            r4 = -1
        L62:
            java.lang.String r5 = "_cis"
            if (r4 == 0) goto L77
            if (r4 == r0) goto L71
            if (r4 == r3) goto L6b
            return r1
        L6b:
            java.lang.String r4 = "fiam_integration"
            r6.putString(r5, r4)
            return r0
        L71:
            java.lang.String r4 = "fdl_integration"
            r6.putString(r5, r4)
            return r0
        L77:
            java.lang.String r4 = "fcm_integration"
            r6.putString(r5, r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.analytics.connector.internal.b.e(java.lang.String, java.lang.String, android.os.Bundle):boolean");
    }

    public static boolean f(a.c cVar) {
        String str;
        if (cVar == null || (str = cVar.f28936a) == null || str.isEmpty()) {
            return false;
        }
        Object obj = cVar.f28938c;
        if ((obj != null && zzit.a(obj) == null) || !i(str) || !j(str, cVar.f28937b)) {
            return false;
        }
        String str2 = cVar.f28946k;
        if (str2 != null && (!g(str2, cVar.f28947l) || !e(str, cVar.f28946k, cVar.f28947l))) {
            return false;
        }
        String str3 = cVar.f28943h;
        if (str3 != null && (!g(str3, cVar.f28944i) || !e(str, cVar.f28943h, cVar.f28944i))) {
            return false;
        }
        String str4 = cVar.f28941f;
        if (str4 != null) {
            return g(str4, cVar.f28942g) && e(str, cVar.f28941f, cVar.f28942g);
        }
        return true;
    }

    public static boolean g(String str, Bundle bundle) {
        if (f26238b.contains(str)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        Iterator it = f26240d.iterator();
        while (it.hasNext()) {
            if (bundle.containsKey((String) it.next())) {
                return false;
            }
        }
        return true;
    }

    public static boolean h(String str) {
        return !f26237a.contains(str);
    }

    public static boolean i(String str) {
        return !f26239c.contains(str);
    }

    public static boolean j(String str, String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals("fcm") || str.equals("frc");
        }
        if ("_ln".equals(str2)) {
            return str.equals("fcm") || str.equals("fiam");
        }
        if (f26241e.contains(str2)) {
            return false;
        }
        Iterator it = f26242f.iterator();
        while (it.hasNext()) {
            if (str2.matches((String) it.next())) {
                return false;
            }
        }
        return true;
    }
}
