package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeqc implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f17191a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ScheduledExecutorService f17192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f17193c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f17194d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f17195e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f17196f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzbya f17197g;

    zzeqc(zzbya zzbyaVar, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor, int i10, boolean z10, boolean z11, byte[] bArr) {
        this.f17197g = zzbyaVar;
        this.f17191a = context;
        this.f17192b = scheduledExecutorService;
        this.f17193c = executor;
        this.f17194d = i10;
        this.f17195e = z10;
        this.f17196f = z11;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0031 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final /* synthetic */ com.google.android.gms.internal.ads.zzeqd a(com.google.android.gms.ads.identifier.AdvertisingIdClient.Info r8) {
        /*
            r7 = this;
            com.google.android.gms.internal.ads.zzfks r0 = new com.google.android.gms.internal.ads.zzfks
            r0.<init>()
            boolean r1 = r7.f17195e
            if (r1 != 0) goto L1b
            com.google.android.gms.internal.ads.zzbaj r1 = com.google.android.gms.internal.ads.zzbar.F2
            com.google.android.gms.internal.ads.zzbap r2 = com.google.android.gms.ads.internal.client.zzba.c()
            java.lang.Object r1 = r2.b(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 != 0) goto L31
        L1b:
            boolean r1 = r7.f17195e
            if (r1 == 0) goto L6f
            com.google.android.gms.internal.ads.zzbaj r1 = com.google.android.gms.internal.ads.zzbar.G2
            com.google.android.gms.internal.ads.zzbap r2 = com.google.android.gms.ads.internal.client.zzba.c()
            java.lang.Object r1 = r2.b(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L6f
        L31:
            android.content.Context r0 = r7.f17191a     // Catch: java.lang.IllegalArgumentException -> L5e java.io.IOException -> L60
            com.google.android.gms.internal.ads.zzfkv r1 = com.google.android.gms.internal.ads.zzfkv.k(r0)     // Catch: java.lang.IllegalArgumentException -> L5e java.io.IOException -> L60
            r8.getClass()     // Catch: java.lang.IllegalArgumentException -> L5e java.io.IOException -> L60
            java.lang.String r2 = r8.a()     // Catch: java.lang.IllegalArgumentException -> L5e java.io.IOException -> L60
            r2.getClass()     // Catch: java.lang.IllegalArgumentException -> L5e java.io.IOException -> L60
            android.content.Context r0 = r7.f17191a     // Catch: java.lang.IllegalArgumentException -> L5e java.io.IOException -> L60
            java.lang.String r3 = r0.getPackageName()     // Catch: java.lang.IllegalArgumentException -> L5e java.io.IOException -> L60
            com.google.android.gms.internal.ads.zzbaj r0 = com.google.android.gms.internal.ads.zzbar.J2     // Catch: java.lang.IllegalArgumentException -> L5e java.io.IOException -> L60
            com.google.android.gms.internal.ads.zzbap r4 = com.google.android.gms.ads.internal.client.zzba.c()     // Catch: java.lang.IllegalArgumentException -> L5e java.io.IOException -> L60
            java.lang.Object r0 = r4.b(r0)     // Catch: java.lang.IllegalArgumentException -> L5e java.io.IOException -> L60
            java.lang.Long r0 = (java.lang.Long) r0     // Catch: java.lang.IllegalArgumentException -> L5e java.io.IOException -> L60
            long r4 = r0.longValue()     // Catch: java.lang.IllegalArgumentException -> L5e java.io.IOException -> L60
            boolean r6 = r7.f17196f     // Catch: java.lang.IllegalArgumentException -> L5e java.io.IOException -> L60
            com.google.android.gms.internal.ads.zzfks r0 = r1.j(r2, r3, r4, r6)     // Catch: java.lang.IllegalArgumentException -> L5e java.io.IOException -> L60
            goto L6f
        L5e:
            r0 = move-exception
            goto L61
        L60:
            r0 = move-exception
        L61:
            com.google.android.gms.internal.ads.zzbyj r1 = com.google.android.gms.ads.internal.zzt.q()
            java.lang.String r2 = "AdIdInfoSignalSource.getPaidV1"
            r1.u(r0, r2)
            com.google.android.gms.internal.ads.zzfks r0 = new com.google.android.gms.internal.ads.zzfks
            r0.<init>()
        L6f:
            com.google.android.gms.internal.ads.zzeqd r1 = new com.google.android.gms.internal.ads.zzeqd
            r2 = 0
            r1.<init>(r8, r2, r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeqc.a(com.google.android.gms.ads.identifier.AdvertisingIdClient$Info):com.google.android.gms.internal.ads.zzeqd");
    }

    final /* synthetic */ zzeqd b(Throwable th) {
        com.google.android.gms.ads.internal.client.zzay.b();
        ContentResolver contentResolver = this.f17191a.getContentResolver();
        return new zzeqd(null, contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id"), new zzfks());
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 40;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.O0)).booleanValue()) {
            return zzfuj.g(new Exception("Did not ad Ad ID into query param."));
        }
        return zzfuj.e((zzfua) zzfuj.n(zzfuj.l(zzfua.D(this.f17197g.a(this.f17191a, this.f17194d)), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzeqa
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                return this.f17189a.a((AdvertisingIdClient.Info) obj);
            }
        }, this.f17193c), ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.P0)).longValue(), TimeUnit.MILLISECONDS, this.f17192b), Throwable.class, new zzfnj() { // from class: com.google.android.gms.internal.ads.zzeqb
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                return this.f17190a.b((Throwable) obj);
            }
        }, this.f17193c);
    }
}
