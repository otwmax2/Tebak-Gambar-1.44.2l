package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzbby;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzbzg;
import com.google.android.gms.internal.ads.zzepk;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f5961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f5963c = new TreeMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5964d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f5965e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f5966f;

    public f(Context context, String str) {
        String strConcat;
        this.f5961a = context.getApplicationContext();
        this.f5962b = str;
        String packageName = context.getPackageName();
        try {
            strConcat = packageName + "-" + Wrappers.a(context).f(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e10) {
            zzbza.e("Unable to get package version name for reporting", e10);
            strConcat = String.valueOf(packageName).concat("-missing");
        }
        this.f5966f = strConcat;
    }

    public final String a() {
        return this.f5966f;
    }

    public final String b() {
        return this.f5965e;
    }

    public final String c() {
        return this.f5962b;
    }

    public final String d() {
        return this.f5964d;
    }

    public final Map e() {
        return this.f5963c;
    }

    public final void f(com.google.android.gms.ads.internal.client.zzl zzlVar, zzbzg zzbzgVar) {
        this.f5964d = zzlVar.f5915x.f5895o;
        Bundle bundle = zzlVar.A;
        Bundle bundle2 = bundle != null ? bundle.getBundle(AdMobAdapter.class.getName()) : null;
        if (bundle2 == null) {
            return;
        }
        String str = (String) zzbby.f10496c.e();
        for (String str2 : bundle2.keySet()) {
            if (str.equals(str2)) {
                this.f5965e = bundle2.getString(str2);
            } else if (str2.startsWith("csa_")) {
                this.f5963c.put(str2.substring(4), bundle2.getString(str2));
            }
        }
        this.f5963c.put("SDKVersion", zzbzgVar.f11605o);
        if (((Boolean) zzbby.f10494a.e()).booleanValue()) {
            try {
                Bundle bundleA = zzepk.a(this.f5961a, new JSONArray((String) zzbby.f10495b.e()));
                for (String str3 : bundleA.keySet()) {
                    this.f5963c.put(str3, bundleA.get(str3).toString());
                }
            } catch (JSONException e10) {
                zzbza.e("Flag gads:afs:csa_tcf_data_to_collect not a valid JSON array", e10);
            }
        }
    }
}
