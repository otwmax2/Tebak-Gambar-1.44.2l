package com.google.android.gms.internal.firebase_auth;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlb extends zzkz<zzky, zzky> {
    zzlb() {
    }

    private static void i(Object obj, zzky zzkyVar) {
        ((zzif) obj).zzb = zzkyVar;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzkz
    final /* synthetic */ void a(zzky zzkyVar, zzls zzlsVar) throws IOException {
        zzkyVar.f(zzlsVar);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzkz
    final /* bridge */ /* synthetic */ void b(Object obj, zzky zzkyVar) {
        i(obj, zzkyVar);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzkz
    final /* synthetic */ zzky c(Object obj) {
        return ((zzif) obj).zzb;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzkz
    final /* synthetic */ void d(zzky zzkyVar, zzls zzlsVar) throws IOException {
        zzkyVar.d(zzlsVar);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzkz
    final /* synthetic */ zzky e(zzky zzkyVar, zzky zzkyVar2) {
        zzky zzkyVar3 = zzkyVar;
        zzky zzkyVar4 = zzkyVar2;
        return zzkyVar4.equals(zzky.a()) ? zzkyVar3 : zzky.b(zzkyVar3, zzkyVar4);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzkz
    final void f(Object obj) {
        ((zzif) obj).zzb.g();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzkz
    final /* synthetic */ int g(zzky zzkyVar) {
        return zzkyVar.h();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzkz
    final /* synthetic */ int h(zzky zzkyVar) {
        return zzkyVar.i();
    }
}
