package com.google.android.gms.internal.consent_sdk;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f21765a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, SharedPreferences.Editor> f21766b = new HashMap();

    public zzbz(Context context) {
        this.f21765a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SharedPreferences.Editor d(String str) {
        if (!this.f21766b.containsKey(str)) {
            this.f21766b.put(str, this.f21765a.getSharedPreferences(str, 0).edit());
        }
        return this.f21766b.get(str);
    }

    public final void b() {
        Iterator<SharedPreferences.Editor> it = this.f21766b.values().iterator();
        while (it.hasNext()) {
            it.next().apply();
        }
    }

    public final boolean c(String str, Object obj) {
        zzby zzbyVarA = zzca.a(this.f21765a, str);
        if (zzbyVarA == null) {
            return false;
        }
        SharedPreferences.Editor editorD = d(zzbyVarA.f21763a);
        if (obj instanceof Integer) {
            editorD.putInt(zzbyVarA.f21764b, ((Integer) obj).intValue());
            return true;
        }
        if (obj instanceof Long) {
            editorD.putLong(zzbyVarA.f21764b, ((Long) obj).longValue());
            return true;
        }
        if (obj instanceof Double) {
            editorD.putFloat(zzbyVarA.f21764b, ((Double) obj).floatValue());
            return true;
        }
        if (obj instanceof Float) {
            editorD.putFloat(zzbyVarA.f21764b, ((Float) obj).floatValue());
            return true;
        }
        if (obj instanceof Boolean) {
            editorD.putBoolean(zzbyVarA.f21764b, ((Boolean) obj).booleanValue());
            return true;
        }
        if (!(obj instanceof String)) {
            return false;
        }
        editorD.putString(zzbyVarA.f21764b, (String) obj);
        return true;
    }
}
