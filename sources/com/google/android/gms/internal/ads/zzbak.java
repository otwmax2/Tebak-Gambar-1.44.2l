package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbak {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f10142a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f10143b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f10144c = new ArrayList();

    public final List a() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f10143b.iterator();
        while (it.hasNext()) {
            String str = (String) com.google.android.gms.ads.internal.client.zzba.c().b((zzbaj) it.next());
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        arrayList.addAll(zzbav.a());
        return arrayList;
    }

    public final List b() {
        List listA = a();
        Iterator it = this.f10144c.iterator();
        while (it.hasNext()) {
            String str = (String) com.google.android.gms.ads.internal.client.zzba.c().b((zzbaj) it.next());
            if (!TextUtils.isEmpty(str)) {
                listA.add(str);
            }
        }
        listA.addAll(zzbav.b());
        return listA;
    }

    public final void c(zzbaj zzbajVar) {
        this.f10143b.add(zzbajVar);
    }

    public final void d(zzbaj zzbajVar) {
        this.f10142a.add(zzbajVar);
    }

    public final void e(SharedPreferences.Editor editor, int i10, JSONObject jSONObject) {
        for (zzbaj zzbajVar : this.f10142a) {
            if (zzbajVar.e() == 1) {
                zzbajVar.d(editor, zzbajVar.a(jSONObject));
            }
        }
        if (jSONObject != null) {
            editor.putString("flag_configuration", jSONObject.toString());
        } else {
            zzbza.d("Flag Json is null.");
        }
    }
}
