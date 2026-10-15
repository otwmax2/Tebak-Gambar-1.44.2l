package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlb implements zzlv {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzlh f23695b = new zzkz();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzlh f23696a;

    public zzlb() {
        zzlh zzlhVar;
        zzlh[] zzlhVarArr = new zzlh[2];
        zzlhVarArr[0] = zzjx.c();
        try {
            zzlhVar = (zzlh) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            zzlhVar = f23695b;
        }
        zzlhVarArr[1] = zzlhVar;
        zzla zzlaVar = new zzla(zzlhVarArr);
        zzkk.f(zzlaVar, "messageInfoFactory");
        this.f23696a = zzlaVar;
    }

    private static boolean a(zzlg zzlgVar) {
        return zzlgVar.a() == 1;
    }

    @Override // com.google.android.gms.internal.measurement.zzlv
    public final zzlu c(Class cls) {
        zzlw.g(cls);
        zzlg zzlgVarA = this.f23696a.a(cls);
        return zzlgVarA.zzb() ? zzkc.class.isAssignableFrom(cls) ? zzln.j(zzlw.b(), zzjr.b(), zzlgVarA.zza()) : zzln.j(zzlw.b0(), zzjr.a(), zzlgVarA.zza()) : zzkc.class.isAssignableFrom(cls) ? a(zzlgVarA) ? zzlm.F(cls, zzlgVarA, zzlp.b(), zzkx.d(), zzlw.b(), zzjr.b(), zzlf.b()) : zzlm.F(cls, zzlgVarA, zzlp.b(), zzkx.d(), zzlw.b(), null, zzlf.b()) : a(zzlgVarA) ? zzlm.F(cls, zzlgVarA, zzlp.a(), zzkx.c(), zzlw.b0(), zzjr.a(), zzlf.a()) : zzlm.F(cls, zzlgVarA, zzlp.a(), zzkx.c(), zzlw.a(), null, zzlf.a());
    }
}
