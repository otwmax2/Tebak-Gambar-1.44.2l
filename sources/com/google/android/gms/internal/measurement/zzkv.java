package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkv extends zzkx {
    private zzkv() {
        super(null);
    }

    /* synthetic */ zzkv(zzku zzkuVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzkx
    final void a(Object obj, long j10) {
        ((zzkj) zzmv.k(obj, j10)).zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzkx
    final void b(Object obj, Object obj2, long j10) {
        zzkj zzkjVarK = (zzkj) zzmv.k(obj, j10);
        zzkj zzkjVar = (zzkj) zzmv.k(obj2, j10);
        int size = zzkjVarK.size();
        int size2 = zzkjVar.size();
        if (size > 0 && size2 > 0) {
            if (!zzkjVarK.a()) {
                zzkjVarK = zzkjVarK.K(size2 + size);
            }
            zzkjVarK.addAll(zzkjVar);
        }
        if (size > 0) {
            zzkjVar = zzkjVarK;
        }
        zzmv.x(obj, j10, zzkjVar);
    }
}
