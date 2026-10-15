package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbld implements zzbhp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzbkm f10869a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.ads.internal.util.zzca f10870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzblr f10871c;

    zzbld(zzblr zzblrVar, zzapw zzapwVar, zzbkm zzbkmVar, com.google.android.gms.ads.internal.util.zzca zzcaVar) {
        this.f10871c = zzblrVar;
        this.f10869a = zzbkmVar;
        this.f10870b = zzcaVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.ads.zzbhp, java.lang.Object] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.ads.zzbhp
    public final /* bridge */ /* synthetic */ void a(Object obj, Map map) {
        synchronized (this.f10871c.f10896a) {
            zzbza.f("JS Engine is requesting an update");
            if (this.f10871c.f10904i == 0) {
                zzbza.f("Starting reload.");
                this.f10871c.f10904i = 2;
                this.f10871c.d(null);
            }
            this.f10869a.U0("/requestReload", this.f10870b.a());
        }
    }
}
