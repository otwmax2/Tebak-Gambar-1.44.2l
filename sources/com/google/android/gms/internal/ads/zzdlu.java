package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.vungle.mediation.BuildConfig;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdlu extends zzcqm {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Context f15116i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final WeakReference f15117j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzdee f15118k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzdbk f15119l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzcvb f15120m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzcwi f15121n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcrg f15122o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzbut f15123p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzfia f15124q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzeyq f15125r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f15126s;

    zzdlu(zzcql zzcqlVar, Context context, zzcei zzceiVar, zzdee zzdeeVar, zzdbk zzdbkVar, zzcvb zzcvbVar, zzcwi zzcwiVar, zzcrg zzcrgVar, zzeyc zzeycVar, zzfia zzfiaVar, zzeyq zzeyqVar) {
        super(zzcqlVar);
        this.f15126s = false;
        this.f15116i = context;
        this.f15118k = zzdeeVar;
        this.f15117j = new WeakReference(zzceiVar);
        this.f15119l = zzdbkVar;
        this.f15120m = zzcvbVar;
        this.f15121n = zzcwiVar;
        this.f15122o = zzcrgVar;
        this.f15124q = zzfiaVar;
        zzbup zzbupVar = zzeycVar.f17656m;
        this.f15123p = new zzbvn(zzbupVar != null ? zzbupVar.f11356o : BuildConfig.FLAVOR, zzbupVar != null ? zzbupVar.f11357p : 1);
        this.f15125r = zzeyqVar;
    }

    public final void finalize() throws Throwable {
        try {
            final zzcei zzceiVar = (zzcei) this.f15117j.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10308n6)).booleanValue()) {
                if (!this.f15126s && zzceiVar != null) {
                    zzbzn.f11618e.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdlt
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzceiVar.destroy();
                        }
                    });
                }
            } else if (zzceiVar != null) {
                zzceiVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    public final Bundle h() {
        return this.f15121n.Y0();
    }

    public final zzbut i() {
        return this.f15123p;
    }

    public final zzeyq j() {
        return this.f15125r;
    }

    public final boolean k() {
        return this.f15122o.a();
    }

    public final boolean l() {
        return this.f15126s;
    }

    public final boolean m() {
        zzcei zzceiVar = (zzcei) this.f15117j.get();
        return (zzceiVar == null || zzceiVar.J0()) ? false : true;
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
    public final boolean n(boolean z10, Activity activity) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10423y0)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.r();
            if (com.google.android.gms.ads.internal.util.zzs.c(this.f15116i)) {
                zzbza.g("Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.f15120m.zzb();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10434z0)).booleanValue()) {
                    this.f15124q.a(this.f13771a.f17703b.f17700b.f17679b);
                }
                return false;
            }
        }
        if (this.f15126s) {
            zzbza.g("The rewarded ad have been showed.");
            this.f15120m.v(zzezx.d(10, null, null));
            return false;
        }
        this.f15126s = true;
        this.f15119l.zzb();
        Context context = activity;
        if (activity == null) {
            context = this.f15116i;
        }
        try {
            this.f15118k.a(z10, context, this.f15120m);
            this.f15119l.zza();
            return true;
        } catch (zzded e10) {
            this.f15120m.C(e10);
            return false;
        }
    }
}
