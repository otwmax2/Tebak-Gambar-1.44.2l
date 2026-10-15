package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzcgd implements zzclp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("AppComponent.class")
    @Nullable
    private static zzcgd f12128a;

    private static synchronized zzcgd d(Context context, @Nullable zzbnf zzbnfVar, int i10, boolean z10, int i11, zzchg zzchgVar) {
        zzcgd zzcgdVar = f12128a;
        if (zzcgdVar != null) {
            return zzcgdVar;
        }
        zzbar.c(context);
        zzezq zzezqVarD = zzezq.d(context);
        zzbzg zzbzgVarC = zzezqVarD.c(ModuleDescriptor.MODULE_VERSION, false, i11);
        zzezqVarD.e(zzbnfVar);
        zzciu zzciuVar = new zzciu(null);
        zzcge zzcgeVar = new zzcge();
        zzcgeVar.d(zzbzgVarC);
        zzcgeVar.c(context);
        zzciuVar.b(new zzcgg(zzcgeVar, null));
        zzciuVar.c(new zzckh(zzchgVar, null));
        zzcgd zzcgdVarA = zzciuVar.a();
        com.google.android.gms.ads.internal.zzt.q().s(context, zzbzgVarC);
        com.google.android.gms.ads.internal.zzt.e().i(context);
        com.google.android.gms.ads.internal.zzt.r().I(context);
        com.google.android.gms.ads.internal.zzt.r().H(context);
        com.google.android.gms.ads.internal.util.zzd.a(context);
        com.google.android.gms.ads.internal.zzt.d().d(context);
        com.google.android.gms.ads.internal.zzt.x().b(context);
        zzbxg.d(context);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.L5)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10357s0)).booleanValue()) {
                zzawe zzaweVar = new zzawe(new zzawk(context));
                zzdzb zzdzbVar = new zzdzb(new zzdyx(context), zzcgdVarA.C());
                com.google.android.gms.ads.internal.zzt.r();
                new zzdzx(context, zzbzgVarC, zzaweVar, zzdzbVar, UUID.randomUUID().toString(), zzcgdVarA.A()).b(com.google.android.gms.ads.internal.zzt.q().h().g0());
            }
        }
        f12128a = zzcgdVarA;
        return zzcgdVarA;
    }

    public static zzcgd e(Context context, @Nullable zzbnf zzbnfVar, int i10) {
        return d(context, zzbnfVar, ModuleDescriptor.MODULE_VERSION, false, i10, new zzchg());
    }

    public abstract zzfdk A();

    public abstract zzfep B();

    public abstract zzfuu C();

    @Override // com.google.android.gms.internal.ads.zzclp
    public final zzeqf a(zzbtn zzbtnVar, int i10) {
        return t(new zzesh(zzbtnVar, i10));
    }

    public abstract Executor b();

    public abstract ScheduledExecutorService c();

    public abstract zzcks f();

    public abstract zzcnx g();

    public abstract zzcpg h();

    public abstract zzcxd i();

    public abstract zzddv j();

    public abstract zzder k();

    public abstract zzdly l();

    public abstract zzdqq m();

    public abstract zzdsf n();

    public abstract zzdsz o();

    public abstract zzean p();

    public abstract com.google.android.gms.ads.nonagon.signalgeneration.zzc q();

    public abstract com.google.android.gms.ads.nonagon.signalgeneration.zzg r();

    public abstract com.google.android.gms.ads.nonagon.signalgeneration.zzac s();

    protected abstract zzeqf t(zzesh zzeshVar);

    public abstract zzetc u();

    public abstract zzeuq v();

    public abstract zzewh w();

    public abstract zzexv x();

    public abstract zzezj y();

    public abstract zzezt z();
}
