package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzdcv extends zzcqm {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Context f14362i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final WeakReference f14363j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzdbk f14364k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzdee f14365l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzcrg f14366m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzfia f14367n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcvb f14368o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f14369p;

    zzdcv(zzcql zzcqlVar, Context context, @Nullable zzcei zzceiVar, zzdbk zzdbkVar, zzdee zzdeeVar, zzcrg zzcrgVar, zzfia zzfiaVar, zzcvb zzcvbVar) {
        super(zzcqlVar);
        this.f14369p = false;
        this.f14362i = context;
        this.f14363j = new WeakReference(zzceiVar);
        this.f14364k = zzdbkVar;
        this.f14365l = zzdeeVar;
        this.f14366m = zzcrgVar;
        this.f14367n = zzfiaVar;
        this.f14368o = zzcvbVar;
    }

    public final void finalize() throws Throwable {
        try {
            final zzcei zzceiVar = (zzcei) this.f14363j.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10308n6)).booleanValue()) {
                if (!this.f14369p && zzceiVar != null) {
                    zzbzn.f11618e.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdcu
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

    public final boolean h() {
        return this.f14366m.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x004d  */
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean i(boolean r5, @javax.annotation.Nullable android.app.Activity r6) {
        /*
            r4 = this;
            com.google.android.gms.internal.ads.zzdbk r0 = r4.f14364k
            r0.zzb()
            com.google.android.gms.internal.ads.zzbaj r0 = com.google.android.gms.internal.ads.zzbar.f10423y0
            com.google.android.gms.internal.ads.zzbap r1 = com.google.android.gms.ads.internal.client.zzba.c()
            java.lang.Object r0 = r1.b(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r1 = 0
            if (r0 == 0) goto L4d
            com.google.android.gms.ads.internal.zzt.r()
            android.content.Context r0 = r4.f14362i
            boolean r0 = com.google.android.gms.ads.internal.util.zzs.c(r0)
            if (r0 == 0) goto L4d
            java.lang.String r5 = "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"
            com.google.android.gms.internal.ads.zzbza.g(r5)
            com.google.android.gms.internal.ads.zzcvb r5 = r4.f14368o
            r5.zzb()
            com.google.android.gms.internal.ads.zzbaj r5 = com.google.android.gms.internal.ads.zzbar.f10434z0
            com.google.android.gms.internal.ads.zzbap r6 = com.google.android.gms.ads.internal.client.zzba.c()
            java.lang.Object r5 = r6.b(r5)
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 == 0) goto L80
            com.google.android.gms.internal.ads.zzfia r5 = r4.f14367n
            com.google.android.gms.internal.ads.zzeyo r6 = r4.f13771a
            com.google.android.gms.internal.ads.zzeyn r6 = r6.f17703b
            com.google.android.gms.internal.ads.zzeyf r6 = r6.f17700b
            java.lang.String r6 = r6.f17679b
            r5.a(r6)
            goto L80
        L4d:
            boolean r0 = r4.f14369p
            if (r0 == 0) goto L62
            java.lang.String r0 = "The interstitial ad has been showed."
            com.google.android.gms.internal.ads.zzbza.g(r0)
            com.google.android.gms.internal.ads.zzcvb r0 = r4.f14368o
            r2 = 10
            r3 = 0
            com.google.android.gms.ads.internal.client.zze r2 = com.google.android.gms.internal.ads.zzezx.d(r2, r3, r3)
            r0.v(r2)
        L62:
            boolean r0 = r4.f14369p
            if (r0 != 0) goto L80
            if (r6 != 0) goto L6a
            android.content.Context r6 = r4.f14362i
        L6a:
            com.google.android.gms.internal.ads.zzdee r0 = r4.f14365l     // Catch: com.google.android.gms.internal.ads.zzded -> L7a
            com.google.android.gms.internal.ads.zzcvb r2 = r4.f14368o     // Catch: com.google.android.gms.internal.ads.zzded -> L7a
            r0.a(r5, r6, r2)     // Catch: com.google.android.gms.internal.ads.zzded -> L7a
            com.google.android.gms.internal.ads.zzdbk r5 = r4.f14364k     // Catch: com.google.android.gms.internal.ads.zzded -> L7a
            r5.zza()     // Catch: com.google.android.gms.internal.ads.zzded -> L7a
            r5 = 1
            r4.f14369p = r5
            return r5
        L7a:
            r5 = move-exception
            com.google.android.gms.internal.ads.zzcvb r6 = r4.f14368o
            r6.C(r5)
        L80:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdcv.i(boolean, android.app.Activity):boolean");
    }
}
