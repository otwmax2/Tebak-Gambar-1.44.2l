package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzajw;
import com.google.android.gms.internal.ads.zzakr;
import com.google.android.gms.internal.ads.zzbyz;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzbzs;
import com.google.android.gms.internal.ads.zzfut;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzbo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static zzakr f6120a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f6121b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Deprecated
    public static final zzbj f6122c = new e();

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034 A[Catch: all -> 0x003d, TryCatch #0 {, blocks: (B:7:0x0010, B:9:0x0014, B:11:0x001d, B:13:0x002f, B:15:0x0039, B:14:0x0034, B:16:0x003b), top: B:21:0x0010 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public zzbo(android.content.Context r4) {
        /*
            r3 = this;
            r3.<init>()
            android.content.Context r0 = r4.getApplicationContext()
            if (r0 == 0) goto Ld
            android.content.Context r4 = r4.getApplicationContext()
        Ld:
            java.lang.Object r0 = com.google.android.gms.ads.internal.util.zzbo.f6121b
            monitor-enter(r0)
            com.google.android.gms.internal.ads.zzakr r1 = com.google.android.gms.ads.internal.util.zzbo.f6120a     // Catch: java.lang.Throwable -> L3d
            if (r1 != 0) goto L3b
            com.google.android.gms.internal.ads.zzbar.c(r4)     // Catch: java.lang.Throwable -> L3d
            boolean r1 = com.google.android.gms.common.util.ClientLibraryUtils.a()     // Catch: java.lang.Throwable -> L3d
            if (r1 != 0) goto L34
            com.google.android.gms.internal.ads.zzbaj r1 = com.google.android.gms.internal.ads.zzbar.Y3     // Catch: java.lang.Throwable -> L3d
            com.google.android.gms.internal.ads.zzbap r2 = com.google.android.gms.ads.internal.client.zzba.c()     // Catch: java.lang.Throwable -> L3d
            java.lang.Object r1 = r2.b(r1)     // Catch: java.lang.Throwable -> L3d
            java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch: java.lang.Throwable -> L3d
            boolean r1 = r1.booleanValue()     // Catch: java.lang.Throwable -> L3d
            if (r1 == 0) goto L34
            com.google.android.gms.internal.ads.zzakr r4 = com.google.android.gms.ads.internal.util.zzax.b(r4)     // Catch: java.lang.Throwable -> L3d
            goto L39
        L34:
            r1 = 0
            com.google.android.gms.internal.ads.zzakr r4 = com.google.android.gms.internal.ads.zzalv.a(r4, r1)     // Catch: java.lang.Throwable -> L3d
        L39:
            com.google.android.gms.ads.internal.util.zzbo.f6120a = r4     // Catch: java.lang.Throwable -> L3d
        L3b:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3d
            return
        L3d:
            r4 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3d
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzbo.<init>(android.content.Context):void");
    }

    public final zzfut a(String str) {
        zzbzs zzbzsVar = new zzbzs();
        f6120a.a(new zzbn(str, null, zzbzsVar));
        return zzbzsVar;
    }

    public final zzfut b(int i10, String str, Map map, byte[] bArr) {
        h hVar = new h(null);
        f fVar = new f(this, str, hVar);
        zzbyz zzbyzVar = new zzbyz(null);
        g gVar = new g(this, i10, str, hVar, fVar, bArr, map, zzbyzVar);
        if (zzbyz.l()) {
            try {
                zzbyzVar.d(str, "GET", gVar.o(), gVar.O());
            } catch (zzajw e10) {
                zzbza.g(e10.getMessage());
            }
        }
        f6120a.a(gVar);
        return hVar;
    }
}
