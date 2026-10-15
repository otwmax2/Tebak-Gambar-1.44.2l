package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjg implements zzjo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private zzjo[] f22799a;

    zzjg(zzjo... zzjoVarArr) {
        this.f22799a = zzjoVarArr;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzjo
    public final zzjl a(Class<?> cls) {
        for (zzjo zzjoVar : this.f22799a) {
            if (zzjoVar.c(cls)) {
                return zzjoVar.a(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzjo
    public final boolean c(Class<?> cls) {
        for (zzjo zzjoVar : this.f22799a) {
            if (zzjoVar.c(cls)) {
                return true;
            }
        }
        return false;
    }
}
