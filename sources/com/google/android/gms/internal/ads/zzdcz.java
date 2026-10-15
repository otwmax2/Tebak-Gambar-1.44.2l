package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzdcz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdee f14375a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcei f14376b;

    public zzdcz(zzdee zzdeeVar, zzcei zzceiVar) {
        this.f14375a = zzdeeVar;
        this.f14376b = zzceiVar;
    }

    public static final zzdbu h(zzfdz zzfdzVar) {
        return new zzdbu(zzfdzVar, zzbzn.f11619f);
    }

    public static final zzdbu i(zzdej zzdejVar) {
        return new zzdbu(zzdejVar, zzbzn.f11619f);
    }

    public final View a() {
        zzcei zzceiVar = this.f14376b;
        if (zzceiVar == null) {
            return null;
        }
        return zzceiVar.V();
    }

    public final View b() {
        zzcei zzceiVar = this.f14376b;
        if (zzceiVar != null) {
            return zzceiVar.V();
        }
        return null;
    }

    public final zzcei c() {
        return this.f14376b;
    }

    public final zzdbu d(Executor executor) {
        final zzcei zzceiVar = this.f14376b;
        return new zzdbu(new zzczb() { // from class: com.google.android.gms.internal.ads.zzdcx
            @Override // com.google.android.gms.internal.ads.zzczb
            public final void zza() {
                com.google.android.gms.ads.internal.overlay.zzl zzlVarQ0;
                zzcei zzceiVar2 = zzceiVar;
                if (zzceiVar2 == null || (zzlVarQ0 = zzceiVar2.q0()) == null) {
                    return;
                }
                zzlVarQ0.zzb();
            }
        }, executor);
    }

    public final zzdee e() {
        return this.f14375a;
    }

    public Set f(zzctm zzctmVar) {
        return Collections.singleton(new zzdbu(zzctmVar, zzbzn.f11619f));
    }

    public Set g(zzctm zzctmVar) {
        return Collections.singleton(new zzdbu(zzctmVar, zzbzn.f11619f));
    }
}
