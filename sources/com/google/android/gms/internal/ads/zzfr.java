package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfr extends zzfqa {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Map f18625o;

    public zzfr(Map map) {
        this.f18625o = map;
    }

    @Override // com.google.android.gms.internal.ads.zzfqa, com.google.android.gms.internal.ads.zzfqb
    protected final /* synthetic */ Object c() {
        return this.f18625o;
    }

    @Override // com.google.android.gms.internal.ads.zzfqa, java.util.Map
    public final boolean containsKey(Object obj) {
        return obj != null && super.containsKey(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfqa, java.util.Map
    public final boolean containsValue(Object obj) {
        return super.l(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfqa, java.util.Map
    public final Set entrySet() {
        return zzfsf.b(this.f18625o.entrySet(), new zzfnv() { // from class: com.google.android.gms.internal.ads.zzfp
            @Override // com.google.android.gms.internal.ads.zzfnv
            public final boolean a(Object obj) {
                return ((Map.Entry) obj).getKey() != null;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzfqa, java.util.Map
    public final boolean equals(Object obj) {
        return obj != null && super.m(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfqa, java.util.Map
    public final /* synthetic */ Object get(Object obj) {
        if (obj == null) {
            return null;
        }
        return (List) this.f18625o.get(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfqa, java.util.Map
    public final int hashCode() {
        return super.k();
    }

    @Override // com.google.android.gms.internal.ads.zzfqa, java.util.Map
    public final boolean isEmpty() {
        return this.f18625o.isEmpty() || (super.size() == 1 && super.containsKey(null));
    }

    @Override // com.google.android.gms.internal.ads.zzfqa
    protected final Map j() {
        return this.f18625o;
    }

    @Override // com.google.android.gms.internal.ads.zzfqa, java.util.Map
    public final Set keySet() {
        return zzfsf.b(this.f18625o.keySet(), new zzfnv() { // from class: com.google.android.gms.internal.ads.zzfq
            @Override // com.google.android.gms.internal.ads.zzfnv
            public final boolean a(Object obj) {
                return ((String) obj) != null;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzfqa, java.util.Map
    public final int size() {
        return super.size() - (super.containsKey(null) ? 1 : 0);
    }
}
