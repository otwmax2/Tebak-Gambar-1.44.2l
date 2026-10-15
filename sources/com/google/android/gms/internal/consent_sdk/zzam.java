package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.content.SharedPreferences;
import android.util.Log;
import com.facebook.appevents.AppEventsConstants;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzam {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Application f21714a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SharedPreferences f21715b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<String> f21716c;

    public final Map<String, String> a() {
        String string;
        Application application = this.f21714a;
        Set<String> stringSet = this.f21715b.getStringSet("stored_info", Collections.emptySet());
        HashMap map = new HashMap();
        for (String str : stringSet) {
            zzby zzbyVarA = zzca.a(application, str);
            if (zzbyVarA == null) {
                String strValueOf = String.valueOf(str);
                Log.d("UserMessagingPlatform", strValueOf.length() != 0 ? "Fetching request info: failed for key: ".concat(strValueOf) : new String("Fetching request info: failed for key: "));
            } else {
                Object obj = application.getSharedPreferences(zzbyVarA.f21763a, 0).getAll().get(zzbyVarA.f21764b);
                if (obj == null) {
                    String strValueOf2 = String.valueOf(str);
                    Log.d("UserMessagingPlatform", strValueOf2.length() != 0 ? "Stored info not exists: ".concat(strValueOf2) : new String("Stored info not exists: "));
                } else {
                    if (obj instanceof Boolean) {
                        string = true != ((Boolean) obj).booleanValue() ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES;
                    } else if (obj instanceof Number) {
                        string = obj.toString();
                    } else if (obj instanceof String) {
                        string = (String) obj;
                    } else {
                        String strValueOf3 = String.valueOf(str);
                        Log.d("UserMessagingPlatform", strValueOf3.length() != 0 ? "Failed to fetch stored info: ".concat(strValueOf3) : new String("Failed to fetch stored info: "));
                    }
                    map.put(str, string);
                }
            }
        }
        return map;
    }

    public final Set<String> b() {
        return this.f21716c;
    }

    public final void c() {
        this.f21715b.edit().putStringSet("written_values", this.f21716c).apply();
    }

    public final void d(int i10) {
        this.f21715b.edit().putInt("consent_status", i10).apply();
    }
}
