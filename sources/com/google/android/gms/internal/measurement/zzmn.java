package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmn extends zzml {
    zzmn() {
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    final /* synthetic */ int a(Object obj) {
        return ((zzmm) obj).a();
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    final /* synthetic */ int b(Object obj) {
        return ((zzmm) obj).b();
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    final /* synthetic */ Object c(Object obj) {
        return ((zzkc) obj).zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    final /* bridge */ /* synthetic */ Object d(Object obj, Object obj2) {
        zzmm zzmmVar = (zzmm) obj2;
        return zzmmVar.equals(zzmm.c()) ? obj : zzmm.d((zzmm) obj, zzmmVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    final /* synthetic */ Object e() {
        return zzmm.e();
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    final /* bridge */ /* synthetic */ void f(Object obj, int i10, long j10) {
        ((zzmm) obj).h(i10 << 3, Long.valueOf(j10));
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    final void g(Object obj) {
        ((zzkc) obj).zzc.f();
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    final /* synthetic */ void h(Object obj, Object obj2) {
        ((zzkc) obj).zzc = (zzmm) obj2;
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    final /* synthetic */ void i(Object obj, zznd zzndVar) throws IOException {
        ((zzmm) obj).i(zzndVar);
    }
}
