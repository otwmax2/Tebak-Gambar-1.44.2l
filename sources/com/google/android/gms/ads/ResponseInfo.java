package com.google.android.gms.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.ads.internal.client.zzdn;
import com.google.android.gms.ads.internal.client.zzu;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbza;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class ResponseInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdn f5620a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f5621b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AdapterResponseInfo f5622c;

    private ResponseInfo(zzdn zzdnVar) {
        this.f5620a = zzdnVar;
        if (zzdnVar != null) {
            try {
                List listH = zzdnVar.h();
                if (listH != null) {
                    Iterator it = listH.iterator();
                    while (it.hasNext()) {
                        AdapterResponseInfo adapterResponseInfoE = AdapterResponseInfo.e((zzu) it.next());
                        if (adapterResponseInfoE != null) {
                            this.f5621b.add(adapterResponseInfoE);
                        }
                    }
                }
            } catch (RemoteException e10) {
                zzbza.e("Could not forward getAdapterResponseInfo to ResponseInfo.", e10);
            }
        }
        zzdn zzdnVar2 = this.f5620a;
        if (zzdnVar2 == null) {
            return;
        }
        try {
            zzu zzuVarC = zzdnVar2.c();
            if (zzuVarC != null) {
                this.f5622c = AdapterResponseInfo.e(zzuVarC);
            }
        } catch (RemoteException e11) {
            zzbza.e("Could not forward getLoadedAdapterResponse to ResponseInfo.", e11);
        }
    }

    public static ResponseInfo d(zzdn zzdnVar) {
        if (zzdnVar != null) {
            return new ResponseInfo(zzdnVar);
        }
        return null;
    }

    public static ResponseInfo e(zzdn zzdnVar) {
        return new ResponseInfo(zzdnVar);
    }

    public String a() {
        try {
            zzdn zzdnVar = this.f5620a;
            if (zzdnVar != null) {
                return zzdnVar.e();
            }
            return null;
        } catch (RemoteException e10) {
            zzbza.e("Could not forward getMediationAdapterClassName to ResponseInfo.", e10);
            return null;
        }
    }

    public Bundle b() {
        try {
            zzdn zzdnVar = this.f5620a;
            if (zzdnVar != null) {
                return zzdnVar.b();
            }
        } catch (RemoteException e10) {
            zzbza.e("Could not forward getResponseExtras to ResponseInfo.", e10);
        }
        return new Bundle();
    }

    public String c() {
        try {
            zzdn zzdnVar = this.f5620a;
            if (zzdnVar != null) {
                return zzdnVar.g();
            }
            return null;
        } catch (RemoteException e10) {
            zzbza.e("Could not forward getResponseId to ResponseInfo.", e10);
            return null;
        }
    }

    @VisibleForTesting
    public final zzdn f() {
        return this.f5620a;
    }

    public final JSONObject g() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        String strC = c();
        if (strC == null) {
            jSONObject.put("Response ID", "null");
        } else {
            jSONObject.put("Response ID", strC);
        }
        String strA = a();
        if (strA == null) {
            jSONObject.put("Mediation Adapter Class Name", "null");
        } else {
            jSONObject.put("Mediation Adapter Class Name", strA);
        }
        JSONArray jSONArray = new JSONArray();
        Iterator it = this.f5621b.iterator();
        while (it.hasNext()) {
            jSONArray.put(((AdapterResponseInfo) it.next()).f());
        }
        jSONObject.put("Adapter Responses", jSONArray);
        AdapterResponseInfo adapterResponseInfo = this.f5622c;
        if (adapterResponseInfo != null) {
            jSONObject.put("Loaded Adapter Response", adapterResponseInfo.f());
        }
        Bundle bundleB = b();
        if (bundleB != null) {
            jSONObject.put("Response Extras", zzay.b().n(bundleB));
        }
        return jSONObject;
    }

    public String toString() {
        try {
            return g().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }
}
