package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzla implements zzlh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzlh[] f23694a;

    zzla(zzlh... zzlhVarArr) {
        this.f23694a = zzlhVarArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final zzlg a(Class cls) {
        zzlh[] zzlhVarArr = this.f23694a;
        for (int i10 = 0; i10 < 2; i10++) {
            zzlh zzlhVar = zzlhVarArr[i10];
            if (zzlhVar.b(cls)) {
                return zzlhVar.a(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final boolean b(Class cls) {
        zzlh[] zzlhVarArr = this.f23694a;
        for (int i10 = 0; i10 < 2; i10++) {
            if (zzlhVarArr[i10].b(cls)) {
                return true;
            }
        }
        return false;
    }
}
