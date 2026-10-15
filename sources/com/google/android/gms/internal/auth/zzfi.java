package com.google.android.gms.internal.auth;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfi implements zzgc {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzfo f21510b = new zzfg();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfo f21511a;

    public zzfi() {
        zzfo zzfoVar;
        zzfo[] zzfoVarArr = new zzfo[2];
        zzfoVarArr[0] = zzen.c();
        try {
            zzfoVar = (zzfo) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            zzfoVar = f21510b;
        }
        zzfoVarArr[1] = zzfoVar;
        zzfh zzfhVar = new zzfh(zzfoVarArr);
        zzev.f(zzfhVar, "messageInfoFactory");
        this.f21511a = zzfhVar;
    }

    private static boolean a(zzfn zzfnVar) {
        return zzfnVar.a() == 1;
    }

    @Override // com.google.android.gms.internal.auth.zzgc
    public final <T> zzgb<T> c(Class<T> cls) {
        zzgd.g(cls);
        zzfn zzfnVarA = this.f21511a.a(cls);
        return zzfnVarA.zzb() ? zzeq.class.isAssignableFrom(cls) ? zzfu.h(zzgd.c(), zzej.b(), zzfnVarA.zza()) : zzfu.h(zzgd.a(), zzej.a(), zzfnVarA.zza()) : zzeq.class.isAssignableFrom(cls) ? a(zzfnVarA) ? zzft.t(cls, zzfnVarA, zzfw.b(), zzfe.d(), zzgd.c(), zzej.b(), zzfm.b()) : zzft.t(cls, zzfnVarA, zzfw.b(), zzfe.d(), zzgd.c(), null, zzfm.b()) : a(zzfnVarA) ? zzft.t(cls, zzfnVarA, zzfw.a(), zzfe.c(), zzgd.a(), zzej.a(), zzfm.a()) : zzft.t(cls, zzfnVarA, zzfw.a(), zzfe.c(), zzgd.b(), null, zzfm.a());
    }
}
