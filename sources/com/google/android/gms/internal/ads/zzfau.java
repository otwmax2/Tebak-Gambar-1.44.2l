package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfau implements zzfat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object[] f17836a;

    public zzfau(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, int i10, String str2, com.google.android.gms.ads.internal.client.zzw zzwVar) {
        HashSet hashSet = new HashSet(Arrays.asList(str2.split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        arrayList.add(str);
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i10));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(zzlVar.f5907p));
        }
        if (hashSet.contains("extras")) {
            arrayList.add(a(zzlVar.f5908q));
        } else if (hashSet.contains("npa")) {
            arrayList.add(zzlVar.f5908q.getString("npa"));
        }
        if (hashSet.contains("gender")) {
            arrayList.add(Integer.valueOf(zzlVar.f5909r));
        }
        if (hashSet.contains("keywords")) {
            List list = zzlVar.f5910s;
            if (list != null) {
                arrayList.add(list.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(zzlVar.f5911t));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(zzlVar.f5912u));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(zzlVar.f5913v));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(zzlVar.f5914w);
        }
        if (hashSet.contains("location")) {
            Location location = zzlVar.f5916y;
            if (location != null) {
                arrayList.add(location.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(zzlVar.f5917z);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(a(zzlVar.A));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(a(zzlVar.B));
        }
        if (hashSet.contains("categoryExclusions")) {
            List list2 = zzlVar.C;
            if (list2 != null) {
                arrayList.add(list2.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(zzlVar.D);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(zzlVar.E);
        }
        if (hashSet.contains("isDesignedForFamilies")) {
            arrayList.add(Boolean.valueOf(zzlVar.F));
        }
        if (hashSet.contains("tagForUnderAgeOfConsent")) {
            arrayList.add(Integer.valueOf(zzlVar.H));
        }
        if (hashSet.contains("maxAdContentRating")) {
            arrayList.add(zzlVar.I);
        }
        if (hashSet.contains("orientation")) {
            if (zzwVar != null) {
                arrayList.add(Integer.valueOf(zzwVar.f5955o));
            } else {
                arrayList.add(null);
            }
        }
        this.f17836a = arrayList.toArray();
    }

    private static String a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        while (it.hasNext()) {
            Object obj = bundle.get((String) it.next());
            sb.append(obj == null ? "null" : obj instanceof Bundle ? a((Bundle) obj) : obj.toString());
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzfau) {
            return Arrays.equals(this.f17836a, ((zzfau) obj).f17836a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f17836a);
    }

    public final String toString() {
        return "[PoolKey#" + Arrays.hashCode(this.f17836a) + " " + Arrays.toString(this.f17836a) + "]";
    }
}
