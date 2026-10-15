package com.google.android.gms.internal.firebase_auth;

import java.util.AbstractMap;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbr extends zzbg {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final /* synthetic */ zzbo f22459q;

    zzbr(zzbo zzboVar) {
        this.f22459q = zzboVar;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i10) {
        zzav.a(i10, this.f22459q.f22452t);
        int i11 = i10 * 2;
        return new AbstractMap.SimpleImmutableEntry(this.f22459q.f22450r[i11], this.f22459q.f22450r[i11 + 1]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22459q.f22452t;
    }
}
