package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.base.R;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.Locale;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("sCache")
    private static final o.g<String, String> f7476a = new o.g<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("sCache")
    private static Locale f7477b;

    public static String a(Context context) {
        String packageName = context.getPackageName();
        try {
            return Wrappers.a(context).d(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    public static String b(Context context) {
        return context.getResources().getString(R.string.f6823g);
    }

    public static String c(Context context, int i10) {
        Resources resources = context.getResources();
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? resources.getString(android.R.string.ok) : resources.getString(R.string.f6817a) : resources.getString(R.string.f6826j) : resources.getString(R.string.f6820d);
    }

    public static String d(Context context, int i10) {
        Resources resources = context.getResources();
        String strA = a(context);
        if (i10 == 1) {
            return resources.getString(R.string.f6821e, strA);
        }
        if (i10 == 2) {
            return DeviceProperties.g(context) ? resources.getString(R.string.f6830n) : resources.getString(R.string.f6827k, strA);
        }
        if (i10 == 3) {
            return resources.getString(R.string.f6818b, strA);
        }
        if (i10 == 5) {
            return h(context, "common_google_play_services_invalid_account_text", strA);
        }
        if (i10 == 7) {
            return h(context, "common_google_play_services_network_error_text", strA);
        }
        if (i10 == 9) {
            return resources.getString(R.string.f6825i, strA);
        }
        if (i10 == 20) {
            return h(context, "common_google_play_services_restricted_profile_text", strA);
        }
        switch (i10) {
            case 16:
                return h(context, "common_google_play_services_api_unavailable_text", strA);
            case 17:
                return h(context, "common_google_play_services_sign_in_failed_text", strA);
            case 18:
                return resources.getString(R.string.f6829m, strA);
            default:
                return resources.getString(com.google.android.gms.common.R.string.f6929a, strA);
        }
    }

    public static String e(Context context, int i10) {
        return (i10 == 6 || i10 == 19) ? h(context, "common_google_play_services_resolution_required_text", a(context)) : d(context, i10);
    }

    public static String f(Context context, int i10) {
        String strI = i10 == 6 ? i(context, "common_google_play_services_resolution_required_title") : g(context, i10);
        return strI == null ? context.getResources().getString(R.string.f6824h) : strI;
    }

    public static String g(Context context, int i10) {
        Resources resources = context.getResources();
        switch (i10) {
            case 1:
                return resources.getString(R.string.f6822f);
            case 2:
                return resources.getString(R.string.f6828l);
            case 3:
                return resources.getString(R.string.f6819c);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return i(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return i(context, "common_google_play_services_network_error_title");
            case 8:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                return null;
            case 9:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                return null;
            case 10:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                return null;
            case 11:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                return null;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                StringBuilder sb = new StringBuilder(33);
                sb.append("Unexpected error code ");
                sb.append(i10);
                Log.e("GoogleApiAvailability", sb.toString());
                return null;
            case 16:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                return null;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return i(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return i(context, "common_google_play_services_restricted_profile_title");
        }
    }

    private static String h(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String strI = i(context, str);
        if (strI == null) {
            strI = resources.getString(com.google.android.gms.common.R.string.f6929a);
        }
        return String.format(resources.getConfiguration().locale, strI, str2);
    }

    private static String i(Context context, String str) {
        o.g<String, String> gVar = f7476a;
        synchronized (gVar) {
            Locale localeD = androidx.core.os.f.a(context.getResources().getConfiguration()).d(0);
            if (!localeD.equals(f7477b)) {
                gVar.clear();
                f7477b = localeD;
            }
            String str2 = gVar.get(str);
            if (str2 != null) {
                return str2;
            }
            Resources resourcesE = GooglePlayServicesUtil.e(context);
            if (resourcesE == null) {
                return null;
            }
            int identifier = resourcesE.getIdentifier(str, "string", "com.google.android.gms");
            if (identifier == 0) {
                Log.w("GoogleApiAvailability", str.length() != 0 ? "Missing resource: ".concat(str) : new String("Missing resource: "));
                return null;
            }
            String string = resourcesE.getString(identifier);
            if (TextUtils.isEmpty(string)) {
                Log.w("GoogleApiAvailability", str.length() != 0 ? "Got empty resource: ".concat(str) : new String("Got empty resource: "));
                return null;
            }
            gVar.put(str, string);
            return string;
        }
    }
}
