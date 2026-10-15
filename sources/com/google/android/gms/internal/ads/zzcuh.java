package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.vungle.mediation.BuildConfig;
import java.util.List;
import org.json.JSONException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcuh extends com.google.android.gms.ads.internal.client.zzdm {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f14065o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f14066p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f14067q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final String f14068r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final List f14069s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final long f14070t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final String f14071u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zzeay f14072v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Bundle f14073w;

    public zzcuh(zzeyc zzeycVar, String str, zzeay zzeayVar, zzeyf zzeyfVar, String str2) {
        String string = null;
        this.f14066p = zzeycVar == null ? null : zzeycVar.f17637c0;
        this.f14067q = str2;
        this.f14068r = zzeyfVar == null ? null : zzeyfVar.f17679b;
        if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            try {
                string = zzeycVar.f17670w.getString("class_name");
            } catch (JSONException unused) {
            }
        }
        this.f14065o = string != null ? string : str;
        this.f14069s = zzeayVar.c();
        this.f14072v = zzeayVar;
        this.f14070t = com.google.android.gms.ads.internal.zzt.b().a() / 1000;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10363s6)).booleanValue() || zzeyfVar == null) {
            this.f14073w = new Bundle();
        } else {
            this.f14073w = zzeyfVar.f17687j;
        }
        this.f14071u = (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10409w8)).booleanValue() || zzeyfVar == null || TextUtils.isEmpty(zzeyfVar.f17685h)) ? BuildConfig.FLAVOR : zzeyfVar.f17685h;
    }

    public final long a() {
        return this.f14070t;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final Bundle b() {
        return this.f14073w;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final com.google.android.gms.ads.internal.client.zzu c() {
        zzeay zzeayVar = this.f14072v;
        if (zzeayVar != null) {
            return zzeayVar.a();
        }
        return null;
    }

    public final String d() {
        return this.f14071u;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final String e() {
        return this.f14065o;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final String f() {
        return this.f14067q;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final String g() {
        return this.f14066p;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final List h() {
        return this.f14069s;
    }

    public final String i() {
        return this.f14068r;
    }
}
