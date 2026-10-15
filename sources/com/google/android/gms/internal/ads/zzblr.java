package com.google.android.gms.internal.ads;

import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzblr {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f10897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f10898c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzbzg f10899d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzfep f10900e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzbb f10901f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzbb f10902g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private zzblq f10903h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f10896a = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f10904i = 1;

    public zzblr(Context context, zzbzg zzbzgVar, String str, com.google.android.gms.ads.internal.util.zzbb zzbbVar, com.google.android.gms.ads.internal.util.zzbb zzbbVar2, zzfep zzfepVar) {
        this.f10898c = str;
        this.f10897b = context.getApplicationContext();
        this.f10899d = zzbzgVar;
        this.f10900e = zzfepVar;
        this.f10901f = zzbbVar;
        this.f10902g = zzbbVar2;
    }

    public final zzbll b(zzapw zzapwVar) {
        synchronized (this.f10896a) {
            synchronized (this.f10896a) {
                zzblq zzblqVar = this.f10903h;
                if (zzblqVar != null && this.f10904i == 0) {
                    zzblqVar.e(new zzbzw() { // from class: com.google.android.gms.internal.ads.zzbkw
                        @Override // com.google.android.gms.internal.ads.zzbzw
                        public final void a(Object obj) {
                            this.f10855a.k((zzbkm) obj);
                        }
                    }, new zzbzu() { // from class: com.google.android.gms.internal.ads.zzbkx
                        @Override // com.google.android.gms.internal.ads.zzbzu
                        public final void zza() {
                        }
                    });
                }
            }
            zzblq zzblqVar2 = this.f10903h;
            if (zzblqVar2 != null && zzblqVar2.a() != -1) {
                int i10 = this.f10904i;
                if (i10 == 0) {
                    return this.f10903h.f();
                }
                if (i10 != 1) {
                    return this.f10903h.f();
                }
                this.f10904i = 2;
                d(null);
                return this.f10903h.f();
            }
            this.f10904i = 2;
            zzblq zzblqVarD = d(null);
            this.f10903h = zzblqVarD;
            return zzblqVarD.f();
        }
    }

    protected final zzblq d(zzapw zzapwVar) {
        zzfec zzfecVarA = zzfeb.a(this.f10897b, 6);
        zzfecVarA.f();
        final zzblq zzblqVar = new zzblq(this.f10902g);
        final zzapw zzapwVar2 = null;
        zzbzn.f11618e.execute(new Runnable(zzapwVar2, zzblqVar) { // from class: com.google.android.gms.internal.ads.zzbky

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            public final /* synthetic */ zzblq f10858p;

            {
                this.f10858p = zzblqVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10857o.j(null, this.f10858p);
            }
        });
        zzblqVar.e(new zzblg(this, zzblqVar, zzfecVarA), new zzblh(this, zzblqVar, zzfecVarA));
        return zzblqVar;
    }

    final /* synthetic */ void i(zzblq zzblqVar, final zzbkm zzbkmVar) {
        synchronized (this.f10896a) {
            if (zzblqVar.a() != -1 && zzblqVar.a() != 1) {
                zzblqVar.c();
                zzbzn.f11618e.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzblb
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbkmVar.a();
                    }
                });
                com.google.android.gms.ads.internal.util.zze.k("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }

    final /* synthetic */ void j(zzapw zzapwVar, zzblq zzblqVar) {
        try {
            zzbku zzbkuVar = new zzbku(this.f10897b, this.f10899d, null, null);
            zzbkuVar.r0(new zzbla(this, zzblqVar, zzbkuVar));
            zzbkuVar.c1("/jsLoaded", new zzblc(this, zzblqVar, zzbkuVar));
            com.google.android.gms.ads.internal.util.zzca zzcaVar = new com.google.android.gms.ads.internal.util.zzca();
            zzbld zzbldVar = new zzbld(this, null, zzbkuVar, zzcaVar);
            zzcaVar.b(zzbldVar);
            zzbkuVar.c1("/requestReload", zzbldVar);
            if (this.f10898c.endsWith(".js")) {
                zzbkuVar.t0(this.f10898c);
            } else if (this.f10898c.startsWith("<html>")) {
                zzbkuVar.I(this.f10898c);
            } else {
                zzbkuVar.d0(this.f10898c);
            }
            com.google.android.gms.ads.internal.util.zzs.f6190i.postDelayed(new zzblf(this, zzblqVar, zzbkuVar), 60000L);
        } catch (Throwable th) {
            zzbza.e("Error creating webview.", th);
            com.google.android.gms.ads.internal.zzt.q().u(th, "SdkJavascriptFactory.loadJavascriptEngine");
            zzblqVar.c();
        }
    }

    final /* synthetic */ void k(zzbkm zzbkmVar) {
        if (zzbkmVar.g()) {
            this.f10904i = 1;
        }
    }
}
