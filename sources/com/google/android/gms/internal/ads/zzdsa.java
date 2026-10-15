package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdsa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdrk f15532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdna f15533b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f15534c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f15535d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f15536e;

    zzdsa(zzdrk zzdrkVar, zzdna zzdnaVar) {
        this.f15532a = zzdrkVar;
        this.f15533b = zzdnaVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(List list) {
        zzdmz zzdmzVarA;
        zzdmz zzdmzVarA2;
        zzbpq zzbpqVar;
        synchronized (this.f15534c) {
            if (this.f15536e) {
                return;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                zzbjl zzbjlVar = (zzbjl) it.next();
                String string = (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10442z8)).booleanValue() || (zzdmzVarA2 = this.f15533b.a(zzbjlVar.f10799o)) == null || (zzbpqVar = zzdmzVarA2.f15208c) == null) ? BuildConfig.FLAVOR : zzbpqVar.toString();
                String str = string;
                boolean z10 = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.A8)).booleanValue() && (zzdmzVarA = this.f15533b.a(zzbjlVar.f10799o)) != null && zzdmzVarA.f15209d;
                List list2 = this.f15535d;
                String str2 = zzbjlVar.f10799o;
                list2.add(new zzdrz(str2, str, this.f15533b.c(str2), zzbjlVar.f10800p ? 1 : 0, zzbjlVar.f10802r, zzbjlVar.f10801q, z10));
            }
            this.f15536e = true;
        }
    }

    public final JSONArray a() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        synchronized (this.f15534c) {
            if (!this.f15536e) {
                if (!this.f15532a.t()) {
                    c();
                    return jSONArray;
                }
                d(this.f15532a.g());
            }
            Iterator it = this.f15535d.iterator();
            while (it.hasNext()) {
                jSONArray.put(((zzdrz) it.next()).a());
            }
            return jSONArray;
        }
    }

    public final void c() {
        this.f15532a.s(new zzdry(this));
    }
}
