package com.google.android.gms.internal.firebase_auth;

import com.google.android.gms.internal.firebase_auth.zzif;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzht extends zzhu<zzif.zze> {
    zzht() {
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzhu
    final int a(Map.Entry<?, ?> entry) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzhu
    final zzhv<zzif.zze> b(Object obj) {
        return ((zzif.zzb) obj).zzc;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzhu
    final void c(zzls zzlsVar, Map.Entry<?, ?> entry) throws IOException {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzhu
    final boolean d(zzjn zzjnVar) {
        return zzjnVar instanceof zzif.zzb;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzhu
    final zzhv<zzif.zze> e(Object obj) {
        zzif.zzb zzbVar = (zzif.zzb) obj;
        if (zzbVar.zzc.o()) {
            zzbVar.zzc = (zzhv) zzbVar.zzc.clone();
        }
        return zzbVar.zzc;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzhu
    final void f(Object obj) {
        b(obj).k();
    }
}
