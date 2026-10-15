package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgxj implements zzgwy {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzgwy f19735c = zzgwz.a(Collections.emptySet());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f19736a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f19737b;

    /* synthetic */ zzgxj(List list, List list2, zzgxh zzgxhVar) {
        this.f19736a = list;
        this.f19737b = list2;
    }

    public static zzgxi a(int i10, int i11) {
        return new zzgxi(i10, i11, null);
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Set zzb() {
        int size = this.f19736a.size();
        ArrayList arrayList = new ArrayList(this.f19737b.size());
        int size2 = this.f19737b.size();
        for (int i10 = 0; i10 < size2; i10++) {
            Collection collection = (Collection) ((zzgxl) this.f19737b.get(i10)).zzb();
            size += collection.size();
            arrayList.add(collection);
        }
        HashSet hashSetA = zzgwv.a(size);
        int size3 = this.f19736a.size();
        for (int i11 = 0; i11 < size3; i11++) {
            Object objZzb = ((zzgxl) this.f19736a.get(i11)).zzb();
            Objects.requireNonNull(objZzb);
            hashSetA.add(objZzb);
        }
        int size4 = arrayList.size();
        for (int i12 = 0; i12 < size4; i12++) {
            for (Object obj : (Collection) arrayList.get(i12)) {
                Objects.requireNonNull(obj);
                hashSetA.add(obj);
            }
        }
        return Collections.unmodifiableSet(hashSetA);
    }
}
