package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgti extends zzgtg {
    zzgti() {
    }

    @Override // com.google.android.gms.internal.ads.zzgtg
    final /* synthetic */ int a(Object obj) {
        return ((zzgth) obj).a();
    }

    @Override // com.google.android.gms.internal.ads.zzgtg
    final /* synthetic */ int b(Object obj) {
        return ((zzgth) obj).b();
    }

    @Override // com.google.android.gms.internal.ads.zzgtg
    final /* bridge */ /* synthetic */ Object c(Object obj) {
        zzgqm zzgqmVar = (zzgqm) obj;
        zzgth zzgthVar = zzgqmVar.zzc;
        if (zzgthVar != zzgth.c()) {
            return zzgthVar;
        }
        zzgth zzgthVarF = zzgth.f();
        zzgqmVar.zzc = zzgthVarF;
        return zzgthVarF;
    }

    @Override // com.google.android.gms.internal.ads.zzgtg
    final /* synthetic */ Object d(Object obj) {
        return ((zzgqm) obj).zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzgtg
    final /* bridge */ /* synthetic */ Object e(Object obj, Object obj2) {
        if (zzgth.c().equals(obj2)) {
            return obj;
        }
        if (zzgth.c().equals(obj)) {
            return zzgth.e((zzgth) obj, (zzgth) obj2);
        }
        ((zzgth) obj).d((zzgth) obj2);
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.zzgtg
    final /* synthetic */ Object f() {
        return zzgth.f();
    }

    @Override // com.google.android.gms.internal.ads.zzgtg
    final /* synthetic */ Object g(Object obj) {
        ((zzgth) obj).h();
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.zzgtg
    final /* bridge */ /* synthetic */ void h(Object obj, int i10, int i11) {
        ((zzgth) obj).j((i10 << 3) | 5, Integer.valueOf(i11));
    }

    @Override // com.google.android.gms.internal.ads.zzgtg
    final /* bridge */ /* synthetic */ void i(Object obj, int i10, long j10) {
        ((zzgth) obj).j((i10 << 3) | 1, Long.valueOf(j10));
    }

    @Override // com.google.android.gms.internal.ads.zzgtg
    final /* bridge */ /* synthetic */ void j(Object obj, int i10, Object obj2) {
        ((zzgth) obj).j((i10 << 3) | 3, obj2);
    }

    @Override // com.google.android.gms.internal.ads.zzgtg
    final /* bridge */ /* synthetic */ void k(Object obj, int i10, zzgpe zzgpeVar) {
        ((zzgth) obj).j((i10 << 3) | 2, zzgpeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgtg
    final /* bridge */ /* synthetic */ void l(Object obj, int i10, long j10) {
        ((zzgth) obj).j(i10 << 3, Long.valueOf(j10));
    }

    @Override // com.google.android.gms.internal.ads.zzgtg
    final void m(Object obj) {
        ((zzgqm) obj).zzc.h();
    }

    @Override // com.google.android.gms.internal.ads.zzgtg
    final /* synthetic */ void n(Object obj, Object obj2) {
        ((zzgqm) obj).zzc = (zzgth) obj2;
    }

    @Override // com.google.android.gms.internal.ads.zzgtg
    final /* synthetic */ void o(Object obj, Object obj2) {
        ((zzgqm) obj).zzc = (zzgth) obj2;
    }

    @Override // com.google.android.gms.internal.ads.zzgtg
    final boolean q(zzgsh zzgshVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgtg
    final /* synthetic */ void r(Object obj, zzgpu zzgpuVar) throws IOException {
        ((zzgth) obj).k(zzgpuVar);
    }
}
