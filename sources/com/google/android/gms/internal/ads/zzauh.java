package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzauh implements Comparator {
    zzauh(zzauj zzaujVar) {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        zzaun zzaunVar = (zzaun) obj;
        zzaun zzaunVar2 = (zzaun) obj2;
        int i10 = zzaunVar.f9987c - zzaunVar2.f9987c;
        return i10 != 0 ? i10 : (zzaunVar.f9985a > zzaunVar2.f9985a ? 1 : (zzaunVar.f9985a == zzaunVar2.f9985a ? 0 : -1));
    }
}
