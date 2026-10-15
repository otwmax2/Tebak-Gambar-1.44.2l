package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgqt extends AbstractList {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final List f19487o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzgqs f19488p;

    public zzgqt(List list, zzgqs zzgqsVar) {
        this.f19487o = list;
        this.f19488p = zzgqsVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        zzaxc zzaxcVarC = zzaxc.c(((Integer) this.f19487o.get(i10)).intValue());
        return zzaxcVarC == null ? zzaxc.AD_FORMAT_TYPE_UNSPECIFIED : zzaxcVarC;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f19487o.size();
    }
}
