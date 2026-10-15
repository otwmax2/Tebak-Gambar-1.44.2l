package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgrn implements zzgru {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgru[] f19536a;

    zzgrn(zzgru... zzgruVarArr) {
        this.f19536a = zzgruVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzgru
    public final zzgrt a(Class cls) {
        zzgru[] zzgruVarArr = this.f19536a;
        for (int i10 = 0; i10 < 2; i10++) {
            zzgru zzgruVar = zzgruVarArr[i10];
            if (zzgruVar.b(cls)) {
                return zzgruVar.a(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.ads.zzgru
    public final boolean b(Class cls) {
        zzgru[] zzgruVarArr = this.f19536a;
        for (int i10 = 0; i10 < 2; i10++) {
            if (zzgruVarArr[i10].b(cls)) {
                return true;
            }
        }
        return false;
    }
}
