package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zztq implements zzxc, zzsh {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Uri f20707b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgh f20708c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zztl f20709d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzzx f20710e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzdo f20711f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f20713h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f20715j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private zzabb f20717l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f20718m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final /* synthetic */ zztv f20719n;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzaau f20712g = new zzaau();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f20714i = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f20706a = zzsj.a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private zzfl f20716k = i(0);

    public zztq(zztv zztvVar, Uri uri, zzfg zzfgVar, zztl zztlVar, zzzx zzzxVar, zzdo zzdoVar) {
        this.f20719n = zztvVar;
        this.f20707b = uri;
        this.f20708c = new zzgh(zzfgVar);
        this.f20709d = zztlVar;
        this.f20710e = zzzxVar;
        this.f20711f = zzdoVar;
    }

    static /* bridge */ /* synthetic */ void h(zztq zztqVar, long j10, long j11) {
        zztqVar.f20712g.f8348a = j10;
        zztqVar.f20715j = j11;
        zztqVar.f20714i = true;
        zztqVar.f20718m = false;
    }

    private final zzfl i(long j10) {
        zzfj zzfjVar = new zzfj();
        zzfjVar.d(this.f20707b);
        zzfjVar.c(j10);
        zzfjVar.a(6);
        zzfjVar.b(zztv.Z);
        return zzfjVar.e();
    }

    @Override // com.google.android.gms.internal.ads.zzsh
    public final void c(zzen zzenVar) {
        long jMax = !this.f20718m ? this.f20715j : Math.max(zztv.P(this.f20719n, true), this.f20715j);
        int i10 = zzenVar.i();
        zzabb zzabbVar = this.f20717l;
        Objects.requireNonNull(zzabbVar);
        zzaaz.b(zzabbVar, zzenVar, i10);
        zzabbVar.f(jMax, 1, i10, 0, null);
        this.f20718m = true;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void e() {
        this.f20713h = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0186 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x020b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:122:? A[LOOP:0: B:3:0x0004->B:122:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01c9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0082 A[Catch: all -> 0x01eb, TryCatch #6 {all -> 0x01eb, blocks: (B:6:0x000b, B:8:0x001f, B:9:0x0025, B:12:0x003b, B:13:0x0041, B:22:0x0077, B:24:0x0082, B:26:0x008e, B:28:0x0098, B:30:0x00a4, B:32:0x00ae, B:34:0x00ba, B:36:0x00c4, B:38:0x00d6, B:40:0x00e0, B:41:0x00e6, B:50:0x0116, B:51:0x011d, B:53:0x012a, B:55:0x0132, B:57:0x014f, B:59:0x016a, B:60:0x016f, B:62:0x0173, B:44:0x00f0, B:47:0x0104, B:17:0x004d, B:20:0x0063), top: B:116:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0098 A[Catch: all -> 0x01eb, TryCatch #6 {all -> 0x01eb, blocks: (B:6:0x000b, B:8:0x001f, B:9:0x0025, B:12:0x003b, B:13:0x0041, B:22:0x0077, B:24:0x0082, B:26:0x008e, B:28:0x0098, B:30:0x00a4, B:32:0x00ae, B:34:0x00ba, B:36:0x00c4, B:38:0x00d6, B:40:0x00e0, B:41:0x00e6, B:50:0x0116, B:51:0x011d, B:53:0x012a, B:55:0x0132, B:57:0x014f, B:59:0x016a, B:60:0x016f, B:62:0x0173, B:44:0x00f0, B:47:0x0104, B:17:0x004d, B:20:0x0063), top: B:116:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ae A[Catch: all -> 0x01eb, TryCatch #6 {all -> 0x01eb, blocks: (B:6:0x000b, B:8:0x001f, B:9:0x0025, B:12:0x003b, B:13:0x0041, B:22:0x0077, B:24:0x0082, B:26:0x008e, B:28:0x0098, B:30:0x00a4, B:32:0x00ae, B:34:0x00ba, B:36:0x00c4, B:38:0x00d6, B:40:0x00e0, B:41:0x00e6, B:50:0x0116, B:51:0x011d, B:53:0x012a, B:55:0x0132, B:57:0x014f, B:59:0x016a, B:60:0x016f, B:62:0x0173, B:44:0x00f0, B:47:0x0104, B:17:0x004d, B:20:0x0063), top: B:116:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c4 A[Catch: all -> 0x01eb, TryCatch #6 {all -> 0x01eb, blocks: (B:6:0x000b, B:8:0x001f, B:9:0x0025, B:12:0x003b, B:13:0x0041, B:22:0x0077, B:24:0x0082, B:26:0x008e, B:28:0x0098, B:30:0x00a4, B:32:0x00ae, B:34:0x00ba, B:36:0x00c4, B:38:0x00d6, B:40:0x00e0, B:41:0x00e6, B:50:0x0116, B:51:0x011d, B:53:0x012a, B:55:0x0132, B:57:0x014f, B:59:0x016a, B:60:0x016f, B:62:0x0173, B:44:0x00f0, B:47:0x0104, B:17:0x004d, B:20:0x0063), top: B:116:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e0 A[Catch: all -> 0x01eb, TRY_LEAVE, TryCatch #6 {all -> 0x01eb, blocks: (B:6:0x000b, B:8:0x001f, B:9:0x0025, B:12:0x003b, B:13:0x0041, B:22:0x0077, B:24:0x0082, B:26:0x008e, B:28:0x0098, B:30:0x00a4, B:32:0x00ae, B:34:0x00ba, B:36:0x00c4, B:38:0x00d6, B:40:0x00e0, B:41:0x00e6, B:50:0x0116, B:51:0x011d, B:53:0x012a, B:55:0x0132, B:57:0x014f, B:59:0x016a, B:60:0x016f, B:62:0x0173, B:44:0x00f0, B:47:0x0104, B:17:0x004d, B:20:0x0063), top: B:116:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0116 A[Catch: all -> 0x01eb, TryCatch #6 {all -> 0x01eb, blocks: (B:6:0x000b, B:8:0x001f, B:9:0x0025, B:12:0x003b, B:13:0x0041, B:22:0x0077, B:24:0x0082, B:26:0x008e, B:28:0x0098, B:30:0x00a4, B:32:0x00ae, B:34:0x00ba, B:36:0x00c4, B:38:0x00d6, B:40:0x00e0, B:41:0x00e6, B:50:0x0116, B:51:0x011d, B:53:0x012a, B:55:0x0132, B:57:0x014f, B:59:0x016a, B:60:0x016f, B:62:0x0173, B:44:0x00f0, B:47:0x0104, B:17:0x004d, B:20:0x0063), top: B:116:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x012a A[Catch: all -> 0x01eb, TryCatch #6 {all -> 0x01eb, blocks: (B:6:0x000b, B:8:0x001f, B:9:0x0025, B:12:0x003b, B:13:0x0041, B:22:0x0077, B:24:0x0082, B:26:0x008e, B:28:0x0098, B:30:0x00a4, B:32:0x00ae, B:34:0x00ba, B:36:0x00c4, B:38:0x00d6, B:40:0x00e0, B:41:0x00e6, B:50:0x0116, B:51:0x011d, B:53:0x012a, B:55:0x0132, B:57:0x014f, B:59:0x016a, B:60:0x016f, B:62:0x0173, B:44:0x00f0, B:47:0x0104, B:17:0x004d, B:20:0x0063), top: B:116:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x016a A[Catch: all -> 0x01eb, TryCatch #6 {all -> 0x01eb, blocks: (B:6:0x000b, B:8:0x001f, B:9:0x0025, B:12:0x003b, B:13:0x0041, B:22:0x0077, B:24:0x0082, B:26:0x008e, B:28:0x0098, B:30:0x00a4, B:32:0x00ae, B:34:0x00ba, B:36:0x00c4, B:38:0x00d6, B:40:0x00e0, B:41:0x00e6, B:50:0x0116, B:51:0x011d, B:53:0x012a, B:55:0x0132, B:57:0x014f, B:59:0x016a, B:60:0x016f, B:62:0x0173, B:44:0x00f0, B:47:0x0104, B:17:0x004d, B:20:0x0063), top: B:116:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0173 A[Catch: all -> 0x01eb, TRY_LEAVE, TryCatch #6 {all -> 0x01eb, blocks: (B:6:0x000b, B:8:0x001f, B:9:0x0025, B:12:0x003b, B:13:0x0041, B:22:0x0077, B:24:0x0082, B:26:0x008e, B:28:0x0098, B:30:0x00a4, B:32:0x00ae, B:34:0x00ba, B:36:0x00c4, B:38:0x00d6, B:40:0x00e0, B:41:0x00e6, B:50:0x0116, B:51:0x011d, B:53:0x012a, B:55:0x0132, B:57:0x014f, B:59:0x016a, B:60:0x016f, B:62:0x0173, B:44:0x00f0, B:47:0x0104, B:17:0x004d, B:20:0x0063), top: B:116:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01ce  */
    @Override // com.google.android.gms.internal.ads.zzxc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void f() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 524
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztq.f():void");
    }
}
