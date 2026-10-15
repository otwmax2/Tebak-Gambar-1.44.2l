package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbxk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f11491a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f11492b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f11493c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzbwh f11494d;

    zzbxk(Context context, zzbwh zzbwhVar) {
        this.f11493c = context;
        this.f11494d = zzbwhVar;
    }

    final /* synthetic */ void b(Map map, SharedPreferences sharedPreferences, String str, String str2) {
        if (map.containsKey(str) && ((Set) map.get(str)).contains(str2)) {
            this.f11494d.e();
        }
    }

    final synchronized void c(String str) {
        if (this.f11491a.containsKey(str)) {
            return;
        }
        SharedPreferences defaultSharedPreferences = "__default__".equals(str) ? PreferenceManager.getDefaultSharedPreferences(this.f11493c) : this.f11493c.getSharedPreferences(str, 0);
        zzbxj zzbxjVar = new zzbxj(this, str);
        this.f11491a.put(str, zzbxjVar);
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(zzbxjVar);
    }

    final synchronized void d(zzbxi zzbxiVar) {
        this.f11492b.add(zzbxiVar);
    }
}
