package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdnd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzezq f15215a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdna f15216b;

    zzdnd(zzezq zzezqVar, zzdna zzdnaVar) {
        this.f15215a = zzezqVar;
        this.f15216b = zzdnaVar;
    }

    final zzbnf a() throws RemoteException {
        zzbnf zzbnfVarB = this.f15215a.b();
        if (zzbnfVarB != null) {
            return zzbnfVarB;
        }
        zzbza.g("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    public final zzbpc b(String str) throws RemoteException {
        zzbpc zzbpcVarD = a().D(str);
        this.f15216b.e(str, zzbpcVarD);
        return zzbpcVarD;
    }

    public final zzezs c(String str, JSONObject jSONObject) throws zzezc {
        zzbni zzbniVarU;
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                zzbniVarU = new zzbof(new AdMobAdapter());
            } else if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str)) {
                zzbniVarU = new zzbof(new zzbpu());
            } else {
                zzbnf zzbnfVarA = a();
                if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                    try {
                        String string = jSONObject.getString("class_name");
                        zzbniVarU = zzbnfVarA.s(string) ? zzbnfVarA.u("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") : zzbnfVarA.O(string) ? zzbnfVarA.u(string) : zzbnfVarA.u("com.google.ads.mediation.customevent.CustomEventAdapter");
                    } catch (JSONException e10) {
                        zzbza.e("Invalid custom event.", e10);
                        zzbniVarU = zzbnfVarA.u(str);
                    }
                } else {
                    zzbniVarU = zzbnfVarA.u(str);
                }
            }
            zzezs zzezsVar = new zzezs(zzbniVarU);
            this.f15216b.d(str, zzezsVar);
            return zzezsVar;
        } catch (Throwable th) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.A8)).booleanValue()) {
                this.f15216b.d(str, null);
            }
            throw new zzezc(th);
        }
    }

    public final boolean d() {
        return this.f15215a.b() != null;
    }
}
