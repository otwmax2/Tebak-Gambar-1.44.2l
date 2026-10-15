package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbav {
    static List a() {
        ArrayList arrayList = new ArrayList();
        c(arrayList, zzbbw.c("gad:dynamite_module:experiment_id", BuildConfig.FLAVOR));
        c(arrayList, zzbch.f10525a);
        c(arrayList, zzbch.f10526b);
        c(arrayList, zzbch.f10527c);
        c(arrayList, zzbch.f10528d);
        c(arrayList, zzbch.f10529e);
        c(arrayList, zzbch.f10545u);
        c(arrayList, zzbch.f10530f);
        c(arrayList, zzbch.f10537m);
        c(arrayList, zzbch.f10538n);
        c(arrayList, zzbch.f10539o);
        c(arrayList, zzbch.f10540p);
        c(arrayList, zzbch.f10541q);
        c(arrayList, zzbch.f10542r);
        c(arrayList, zzbch.f10543s);
        c(arrayList, zzbch.f10544t);
        c(arrayList, zzbch.f10531g);
        c(arrayList, zzbch.f10532h);
        c(arrayList, zzbch.f10533i);
        c(arrayList, zzbch.f10534j);
        c(arrayList, zzbch.f10535k);
        c(arrayList, zzbch.f10536l);
        return arrayList;
    }

    static List b() {
        ArrayList arrayList = new ArrayList();
        c(arrayList, zzbcv.f10605a);
        return arrayList;
    }

    private static void c(List list, zzbbw zzbbwVar) {
        String str = (String) zzbbwVar.e();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        list.add(str);
    }
}
