package com.google.android.gms.internal.auth;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfh implements zzfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfo[] f21509a;

    zzfh(zzfo... zzfoVarArr) {
        this.f21509a = zzfoVarArr;
    }

    @Override // com.google.android.gms.internal.auth.zzfo
    public final zzfn a(Class<?> cls) {
        zzfo[] zzfoVarArr = this.f21509a;
        for (int i10 = 0; i10 < 2; i10++) {
            zzfo zzfoVar = zzfoVarArr[i10];
            if (zzfoVar.b(cls)) {
                return zzfoVar.a(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }

    @Override // com.google.android.gms.internal.auth.zzfo
    public final boolean b(Class<?> cls) {
        zzfo[] zzfoVarArr = this.f21509a;
        for (int i10 = 0; i10 < 2; i10++) {
            if (zzfoVarArr[i10].b(cls)) {
                return true;
            }
        }
        return false;
    }
}
