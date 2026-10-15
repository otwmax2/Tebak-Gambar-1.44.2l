package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class e extends LinkedHashMap {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzc f6359o;

    e(zzc zzcVar) {
        this.f6359o = zzcVar;
    }

    @Override // java.util.LinkedHashMap
    protected final boolean removeEldestEntry(Map.Entry entry) {
        synchronized (this.f6359o) {
            int size = size();
            zzc zzcVar = this.f6359o;
            if (size <= zzcVar.f6421a) {
                return false;
            }
            zzcVar.f6426f.add(new Pair((String) entry.getKey(), (String) ((Pair) entry.getValue()).second));
            return size() > this.f6359o.f6421a;
        }
    }
}
