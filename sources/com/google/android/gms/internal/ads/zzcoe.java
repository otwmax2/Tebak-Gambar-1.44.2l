package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcoe extends zzcqm {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzcei f13624i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f13625j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Context f13626k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzcnt f13627l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzdee f13628m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzdbk f13629n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcvb f13630o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f13631p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f13632q;

    zzcoe(zzcql zzcqlVar, Context context, zzcei zzceiVar, int i10, zzcnt zzcntVar, zzdee zzdeeVar, zzdbk zzdbkVar, zzcvb zzcvbVar) {
        super(zzcqlVar);
        this.f13632q = false;
        this.f13624i = zzceiVar;
        this.f13626k = context;
        this.f13625j = i10;
        this.f13627l = zzcntVar;
        this.f13628m = zzdeeVar;
        this.f13629n = zzdbkVar;
        this.f13630o = zzcvbVar;
        this.f13631p = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Q4)).booleanValue();
    }

    @Override // com.google.android.gms.internal.ads.zzcqm
    public final void a() {
        super.a();
        zzcei zzceiVar = this.f13624i;
        if (zzceiVar != null) {
            zzceiVar.destroy();
        }
    }

    public final int h() {
        return this.f13625j;
    }

    public final void i(zzaus zzausVar) {
        zzcei zzceiVar = this.f13624i;
        if (zzceiVar != null) {
            zzceiVar.W(zzausVar);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void j(Activity activity, zzavf zzavfVar, boolean z10) throws RemoteException {
        Context context = activity;
        if (activity == null) {
            context = this.f13626k;
        }
        if (this.f13631p) {
            this.f13629n.zzb();
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10423y0)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.r();
            if (com.google.android.gms.ads.internal.util.zzs.c(context)) {
                zzbza.g("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.f13630o.zzb();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10434z0)).booleanValue()) {
                    new zzfia(context.getApplicationContext(), com.google.android.gms.ads.internal.zzt.v().b()).a(this.f13771a.f17703b.f17700b.f17679b);
                    return;
                }
                return;
            }
        }
        if (this.f13632q) {
            zzbza.g("App open interstitial ad is already visible.");
            this.f13630o.v(zzezx.d(10, null, null));
        }
        if (this.f13632q) {
            return;
        }
        try {
            this.f13628m.a(z10, context, this.f13630o);
            if (this.f13631p) {
                this.f13629n.zza();
            }
            this.f13632q = true;
        } catch (zzded e10) {
            this.f13630o.C(e10);
        }
    }

    public final void k(long j10, int i10) {
        this.f13627l.a(j10, i10);
    }
}
