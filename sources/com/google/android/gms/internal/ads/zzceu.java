package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.TrafficStats;
import android.os.StrictMode;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzceu {
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.internal.ads.zzcei, java.lang.Object] */
    public static final zzcei a(final Context context, final zzcfx zzcfxVar, final String str, final boolean z10, final boolean z11, final zzapw zzapwVar, final zzbbt zzbbtVar, final zzbzg zzbzgVar, zzbbj zzbbjVar, final com.google.android.gms.ads.internal.zzl zzlVar, final com.google.android.gms.ads.internal.zza zzaVar, final zzawe zzaweVar, final zzeyc zzeycVar, final zzeyf zzeyfVar) throws zzcet {
        zzbar.c(context);
        try {
            final zzbbj zzbbjVar2 = null;
            zzfok zzfokVar = new zzfok(context, zzcfxVar, str, z10, z11, zzapwVar, zzbbtVar, zzbzgVar, zzbbjVar2, zzlVar, zzaVar, zzaweVar, zzeycVar, zzeyfVar) { // from class: com.google.android.gms.internal.ads.zzceq
                public final /* synthetic */ zzeyf A;

                /* JADX INFO: renamed from: o, reason: collision with root package name */
                public final /* synthetic */ Context f12027o;

                /* JADX INFO: renamed from: p, reason: collision with root package name */
                public final /* synthetic */ zzcfx f12028p;

                /* JADX INFO: renamed from: q, reason: collision with root package name */
                public final /* synthetic */ String f12029q;

                /* JADX INFO: renamed from: r, reason: collision with root package name */
                public final /* synthetic */ boolean f12030r;

                /* JADX INFO: renamed from: s, reason: collision with root package name */
                public final /* synthetic */ boolean f12031s;

                /* JADX INFO: renamed from: t, reason: collision with root package name */
                public final /* synthetic */ zzapw f12032t;

                /* JADX INFO: renamed from: u, reason: collision with root package name */
                public final /* synthetic */ zzbbt f12033u;

                /* JADX INFO: renamed from: v, reason: collision with root package name */
                public final /* synthetic */ zzbzg f12034v;

                /* JADX INFO: renamed from: w, reason: collision with root package name */
                public final /* synthetic */ com.google.android.gms.ads.internal.zzl f12035w;

                /* JADX INFO: renamed from: x, reason: collision with root package name */
                public final /* synthetic */ com.google.android.gms.ads.internal.zza f12036x;

                /* JADX INFO: renamed from: y, reason: collision with root package name */
                public final /* synthetic */ zzawe f12037y;

                /* JADX INFO: renamed from: z, reason: collision with root package name */
                public final /* synthetic */ zzeyc f12038z;

                {
                    this.f12035w = zzlVar;
                    this.f12036x = zzaVar;
                    this.f12037y = zzaweVar;
                    this.f12038z = zzeycVar;
                    this.A = zzeyfVar;
                }

                @Override // com.google.android.gms.internal.ads.zzfok
                public final Object zza() {
                    Context context2 = this.f12027o;
                    zzcfx zzcfxVar2 = this.f12028p;
                    String str2 = this.f12029q;
                    boolean z12 = this.f12030r;
                    boolean z13 = this.f12031s;
                    zzapw zzapwVar2 = this.f12032t;
                    zzbbt zzbbtVar2 = this.f12033u;
                    zzbzg zzbzgVar2 = this.f12034v;
                    com.google.android.gms.ads.internal.zzl zzlVar2 = this.f12035w;
                    com.google.android.gms.ads.internal.zza zzaVar2 = this.f12036x;
                    zzawe zzaweVar2 = this.f12037y;
                    zzeyc zzeycVar2 = this.f12038z;
                    zzeyf zzeyfVar2 = this.A;
                    try {
                        TrafficStats.setThreadStatsTag(264);
                        int i10 = zzcfb.f12071m0;
                        zzcex zzcexVar = new zzcex(new zzcfb(new zzcfw(context2), zzcfxVar2, str2, z12, z13, zzapwVar2, zzbbtVar2, zzbzgVar2, null, zzlVar2, zzaVar2, zzaweVar2, zzeycVar2, zzeyfVar2));
                        zzcexVar.setWebViewClient(com.google.android.gms.ads.internal.zzt.s().d(zzcexVar, zzaweVar2, z13));
                        zzcexVar.setWebChromeClient(new zzceh(zzcexVar));
                        return zzcexVar;
                    } finally {
                        TrafficStats.clearThreadStatsTag();
                    }
                }
            };
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            try {
                StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
                return zzfokVar.zza();
            } finally {
                StrictMode.setThreadPolicy(threadPolicy);
            }
        } catch (Throwable th) {
            throw new zzcet("Webview initialization failed.", th);
        }
    }
}
