package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzblt implements zzbkk, zzbls {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzbls f10905o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final HashSet f10906p = new HashSet();

    public zzblt(zzbls zzblsVar) {
        this.f10905o = zzblsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void U0(String str, zzbhp zzbhpVar) {
        this.f10905o.U0(str, zzbhpVar);
        this.f10906p.remove(new AbstractMap.SimpleEntry(str, zzbhpVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbkv
    public final /* synthetic */ void Z0(String str, JSONObject jSONObject) {
        zzbkj.d(this, str, jSONObject);
    }

    public final void a() {
        for (AbstractMap.SimpleEntry simpleEntry : this.f10906p) {
            com.google.android.gms.ads.internal.util.zze.k("Unregistering eventhandler: ".concat(String.valueOf(((zzbhp) simpleEntry.getValue()).toString())));
            this.f10905o.U0((String) simpleEntry.getKey(), (zzbhp) simpleEntry.getValue());
        }
        this.f10906p.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void c1(String str, zzbhp zzbhpVar) {
        this.f10905o.c1(str, zzbhpVar);
        this.f10906p.add(new AbstractMap.SimpleEntry(str, zzbhpVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbkk, com.google.android.gms.internal.ads.zzbkv
    public final /* synthetic */ void n(String str, String str2) {
        zzbkj.c(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbkk, com.google.android.gms.internal.ads.zzbkv
    public final void o(String str) {
        this.f10905o.o(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbki
    public final /* synthetic */ void v0(String str, Map map) {
        zzbkj.a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzbkk, com.google.android.gms.internal.ads.zzbki
    public final /* synthetic */ void w(String str, JSONObject jSONObject) {
        zzbkj.b(this, str, jSONObject);
    }
}
