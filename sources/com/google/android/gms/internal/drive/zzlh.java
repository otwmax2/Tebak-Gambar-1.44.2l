package com.google.android.gms.internal.drive;

/* JADX INFO: loaded from: classes2.dex */
final class zzlh implements zzlp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private zzlp[] f22228a;

    zzlh(zzlp... zzlpVarArr) {
        this.f22228a = zzlpVarArr;
    }

    @Override // com.google.android.gms.internal.drive.zzlp
    public final boolean a(Class<?> cls) {
        for (zzlp zzlpVar : this.f22228a) {
            if (zzlpVar.a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.drive.zzlp
    public final zzlo b(Class<?> cls) {
        for (zzlp zzlpVar : this.f22228a) {
            if (zzlpVar.a(cls)) {
                return zzlpVar.b(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }
}
