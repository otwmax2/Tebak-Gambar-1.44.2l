package com.google.android.gms.internal.ads;

import java.util.AbstractMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfru extends zzfqk {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzfrv f18638q;

    zzfru(zzfrv zzfrvVar) {
        this.f18638q = zzfrvVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i10) {
        zzfnu.a(i10, this.f18638q.f18641s, "index");
        zzfrv zzfrvVar = this.f18638q;
        int i11 = i10 + i10;
        Object obj = zzfrvVar.f18640r[i11];
        obj.getClass();
        Object obj2 = zzfrvVar.f18640r[i11 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    public final boolean l() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18638q.f18641s;
    }
}
