package com.google.android.gms.internal.drive;

import com.google.android.gms.internal.drive.zzkk;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzjz extends zzjy<Object> {
    zzjz() {
    }

    @Override // com.google.android.gms.internal.drive.zzjy
    final int a(Map.Entry<?, ?> entry) {
        entry.getKey();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.drive.zzjy
    final void b(zzns zznsVar, Map.Entry<?, ?> entry) throws IOException {
        entry.getKey();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.drive.zzjy
    final zzkb<Object> c(Object obj) {
        return ((zzkk.zzc) obj).zzrw;
    }

    @Override // com.google.android.gms.internal.drive.zzjy
    final zzkb<Object> d(Object obj) {
        return ((zzkk.zzc) obj).q();
    }

    @Override // com.google.android.gms.internal.drive.zzjy
    final void e(Object obj) {
        c(obj).n();
    }

    @Override // com.google.android.gms.internal.drive.zzjy
    final boolean f(zzlq zzlqVar) {
        return zzlqVar instanceof zzkk.zzc;
    }
}
