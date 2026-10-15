package com.google.android.gms.internal.drive;

import com.google.android.gms.internal.drive.zzkk;

/* JADX INFO: loaded from: classes2.dex */
final class zzlf implements zzmg {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzlp f22226b = new zzlg();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzlp f22227a;

    public zzlf() {
        this(new zzlh(zzkj.c(), c()));
    }

    private static boolean b(zzlo zzloVar) {
        return zzloVar.a() == zzkk.zze.f22184i;
    }

    private static zzlp c() {
        try {
            return (zzlp) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return f22226b;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzmg
    public final <T> zzmf<T> a(Class<T> cls) {
        zzmh.H(cls);
        zzlo zzloVarB = this.f22227a.b(cls);
        return zzloVarB.b() ? zzkk.class.isAssignableFrom(cls) ? zzlw.a(zzmh.z(), zzka.b(), zzloVarB.c()) : zzlw.a(zzmh.x(), zzka.c(), zzloVarB.c()) : zzkk.class.isAssignableFrom(cls) ? b(zzloVarB) ? zzlu.i(cls, zzloVarB, zzma.b(), zzla.d(), zzmh.z(), zzka.b(), zzln.b()) : zzlu.i(cls, zzloVarB, zzma.b(), zzla.d(), zzmh.z(), null, zzln.b()) : b(zzloVarB) ? zzlu.i(cls, zzloVarB, zzma.a(), zzla.c(), zzmh.x(), zzka.c(), zzln.a()) : zzlu.i(cls, zzloVarB, zzma.a(), zzla.c(), zzmh.y(), null, zzln.a());
    }

    private zzlf(zzlp zzlpVar) {
        this.f22227a = (zzlp) zzkm.e(zzlpVar, "messageInfoFactory");
    }
}
