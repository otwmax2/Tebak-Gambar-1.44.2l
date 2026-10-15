package com.google.android.gms.internal.drive;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
final class zzmz extends zzmx<zzmy, zzmy> {
    zzmz() {
    }

    private static void i(Object obj, zzmy zzmyVar) {
        ((zzkk) obj).zzrq = zzmyVar;
    }

    @Override // com.google.android.gms.internal.drive.zzmx
    final /* synthetic */ void a(zzmy zzmyVar, zzns zznsVar) throws IOException {
        zzmyVar.e(zznsVar);
    }

    @Override // com.google.android.gms.internal.drive.zzmx
    final /* synthetic */ void b(zzmy zzmyVar, zzns zznsVar) throws IOException {
        zzmyVar.b(zznsVar);
    }

    @Override // com.google.android.gms.internal.drive.zzmx
    final void c(Object obj) {
        ((zzkk) obj).zzrq.f();
    }

    @Override // com.google.android.gms.internal.drive.zzmx
    final /* synthetic */ void d(Object obj, zzmy zzmyVar) {
        i(obj, zzmyVar);
    }

    @Override // com.google.android.gms.internal.drive.zzmx
    final /* synthetic */ zzmy e(zzmy zzmyVar, zzmy zzmyVar2) {
        zzmy zzmyVar3 = zzmyVar;
        zzmy zzmyVar4 = zzmyVar2;
        return zzmyVar4.equals(zzmy.h()) ? zzmyVar3 : zzmy.a(zzmyVar3, zzmyVar4);
    }

    @Override // com.google.android.gms.internal.drive.zzmx
    final /* synthetic */ int f(zzmy zzmyVar) {
        return zzmyVar.g();
    }

    @Override // com.google.android.gms.internal.drive.zzmx
    final /* synthetic */ zzmy g(Object obj) {
        return ((zzkk) obj).zzrq;
    }

    @Override // com.google.android.gms.internal.drive.zzmx
    final /* synthetic */ int h(zzmy zzmyVar) {
        return zzmyVar.i();
    }
}
