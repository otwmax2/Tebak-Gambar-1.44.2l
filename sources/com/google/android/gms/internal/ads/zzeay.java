package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeay {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f16132c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzeyf f16133d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzeyc f16134e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zzu f16135f = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f16131b = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f16130a = Collections.synchronizedList(new ArrayList());

    public zzeay(String str) {
        this.f16132c = str;
    }

    private final void h(zzeyc zzeycVar, long j10, com.google.android.gms.ads.internal.client.zze zzeVar, boolean z10) {
        String str = zzeycVar.f17671x;
        if (this.f16131b.containsKey(str)) {
            if (this.f16134e == null) {
                this.f16134e = zzeycVar;
            }
            com.google.android.gms.ads.internal.client.zzu zzuVar = (com.google.android.gms.ads.internal.client.zzu) this.f16131b.get(str);
            zzuVar.f5948p = j10;
            zzuVar.f5949q = zzeVar;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10352r6)).booleanValue() && z10) {
                this.f16135f = zzuVar;
            }
        }
    }

    public final com.google.android.gms.ads.internal.client.zzu a() {
        return this.f16135f;
    }

    public final zzcuh b() {
        return new zzcuh(this.f16134e, BuildConfig.FLAVOR, this, this.f16133d, this.f16132c);
    }

    public final List c() {
        return this.f16130a;
    }

    public final void d(zzeyc zzeycVar) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5 = zzeycVar.f17671x;
        if (this.f16131b.containsKey(str5)) {
            return;
        }
        Bundle bundle = new Bundle();
        Iterator<String> itKeys = zzeycVar.f17670w.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                bundle.putString(next, zzeycVar.f17670w.getString(next));
            } catch (JSONException unused) {
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10341q6)).booleanValue()) {
            String str6 = zzeycVar.G;
            String str7 = zzeycVar.H;
            str = str6;
            str2 = str7;
            str3 = zzeycVar.I;
            str4 = zzeycVar.J;
        } else {
            str = BuildConfig.FLAVOR;
            str2 = str;
            str3 = str2;
            str4 = str3;
        }
        com.google.android.gms.ads.internal.client.zzu zzuVar = new com.google.android.gms.ads.internal.client.zzu(zzeycVar.F, 0L, null, bundle, str, str2, str3, str4);
        this.f16130a.add(zzuVar);
        this.f16131b.put(str5, zzuVar);
    }

    public final void e(zzeyc zzeycVar, long j10, com.google.android.gms.ads.internal.client.zze zzeVar) {
        h(zzeycVar, j10, zzeVar, false);
    }

    public final void f(zzeyc zzeycVar, long j10, com.google.android.gms.ads.internal.client.zze zzeVar) {
        h(zzeycVar, j10, null, true);
    }

    public final void g(zzeyf zzeyfVar) {
        this.f16133d = zzeyfVar;
    }
}
