package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgro implements zzgsq {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzgru f19537b = new zzgrm();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgru f19538a;

    public zzgro() {
        zzgru zzgruVar;
        zzgru[] zzgruVarArr = new zzgru[2];
        zzgruVarArr[0] = zzgqh.c();
        try {
            zzgruVar = (zzgru) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            zzgruVar = f19537b;
        }
        zzgruVarArr[1] = zzgruVar;
        zzgrn zzgrnVar = new zzgrn(zzgruVarArr);
        zzgqw.f(zzgrnVar, "messageInfoFactory");
        this.f19538a = zzgrnVar;
    }

    private static boolean a(zzgrt zzgrtVar) {
        return zzgrtVar.a() == 1;
    }

    @Override // com.google.android.gms.internal.ads.zzgsq
    public final zzgsp c(Class cls) {
        zzgsr.g(cls);
        zzgrt zzgrtVarA = this.f19538a.a(cls);
        return zzgrtVarA.zzb() ? zzgqm.class.isAssignableFrom(cls) ? zzgsa.k(zzgsr.b(), zzgqb.b(), zzgrtVarA.zza()) : zzgsa.k(zzgsr.b0(), zzgqb.a(), zzgrtVarA.zza()) : zzgqm.class.isAssignableFrom(cls) ? a(zzgrtVarA) ? zzgrz.M(cls, zzgrtVarA, zzgsc.b(), zzgrk.e(), zzgsr.b(), zzgqb.b(), zzgrs.b()) : zzgrz.M(cls, zzgrtVarA, zzgsc.b(), zzgrk.e(), zzgsr.b(), null, zzgrs.b()) : a(zzgrtVarA) ? zzgrz.M(cls, zzgrtVarA, zzgsc.a(), zzgrk.d(), zzgsr.b0(), zzgqb.a(), zzgrs.a()) : zzgrz.M(cls, zzgrtVarA, zzgsc.a(), zzgrk.d(), zzgsr.a(), null, zzgrs.a());
    }
}
