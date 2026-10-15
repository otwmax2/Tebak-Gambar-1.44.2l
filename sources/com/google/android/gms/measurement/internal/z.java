package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class z extends o.e {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final /* synthetic */ zzfz f24406i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    z(zzfz zzfzVar, int i10) {
        super(20);
        this.f24406i = zzfzVar;
    }

    @Override // o.e
    protected final /* bridge */ /* synthetic */ Object a(Object obj) {
        String str = (String) obj;
        Preconditions.g(str);
        return zzfz.n(this.f24406i, str);
    }
}
