package com.google.android.gms.internal.firebase_auth;

import com.google.android.gms.internal.firebase_auth.zzif;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzje implements zzkg {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzjo f22797b = new zzjd();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzjo f22798a;

    public zzje() {
        this(new zzjg(zzid.b(), a()));
    }

    private static zzjo a() {
        try {
            return (zzjo) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return f22797b;
        }
    }

    private static boolean b(zzjl zzjlVar) {
        return zzjlVar.zza() == zzif.zzf.f22755i;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzkg
    public final <T> zzkd<T> c(Class<T> cls) {
        zzkf.n(cls);
        zzjl zzjlVarA = this.f22798a.a(cls);
        return zzjlVarA.zzb() ? zzif.class.isAssignableFrom(cls) ? zzju.h(zzkf.z(), zzhw.a(), zzjlVarA.a()) : zzju.h(zzkf.f(), zzhw.b(), zzjlVarA.a()) : zzif.class.isAssignableFrom(cls) ? b(zzjlVarA) ? zzjr.i(cls, zzjlVarA, zzjy.b(), zzix.c(), zzkf.z(), zzhw.a(), zzjm.b()) : zzjr.i(cls, zzjlVarA, zzjy.b(), zzix.c(), zzkf.z(), null, zzjm.b()) : b(zzjlVarA) ? zzjr.i(cls, zzjlVarA, zzjy.a(), zzix.a(), zzkf.f(), zzhw.b(), zzjm.a()) : zzjr.i(cls, zzjlVarA, zzjy.a(), zzix.a(), zzkf.t(), null, zzjm.a());
    }

    private zzje(zzjo zzjoVar) {
        this.f22798a = (zzjo) zzii.f(zzjoVar, "messageInfoFactory");
    }
}
