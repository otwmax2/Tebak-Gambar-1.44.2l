package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.view.Surface;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcdv extends zzcba implements zzgi, zzle {
    public static final /* synthetic */ int J = 0;
    private int A;
    private int B;
    private long C;
    private final String D;
    private final int E;

    @GuardedBy("httpDataSourcesLock")
    private final ArrayList G;
    private volatile zzcdi H;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Context f11963q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzcdg f11964r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzwc f11965s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzcbi f11966t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final WeakReference f11967u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zzty f11968v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private zzhu f11969w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private ByteBuffer f11970x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f11971y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private zzcaz f11972z;
    private final Object F = new Object();
    private final Set I = new HashSet();

    /* JADX WARN: Removed duplicated region for block: B:22:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public zzcdv(android.content.Context r6, com.google.android.gms.internal.ads.zzcbi r7, com.google.android.gms.internal.ads.zzcbj r8) {
        /*
            Method dump skipped, instruction units count: 334
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcdv.<init>(android.content.Context, com.google.android.gms.internal.ads.zzcbi, com.google.android.gms.internal.ads.zzcbj):void");
    }

    private final boolean b0() {
        return this.H != null && this.H.x();
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void A(int i10) {
        this.f11964r.j(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void B(zzcaz zzcazVar) {
        this.f11972z = zzcazVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void C(int i10) {
        this.f11964r.k(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void D(int i10) {
        this.f11964r.l(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void E(boolean z10) {
        this.f11969w.o(z10);
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void F(boolean z10) {
        if (this.f11969w == null) {
            return;
        }
        int i10 = 0;
        while (true) {
            this.f11969w.R();
            if (i10 >= 2) {
                return;
            }
            zzwc zzwcVar = this.f11965s;
            zzvo zzvoVarC = zzwcVar.k().c();
            zzvoVarC.o(i10, !z10);
            zzwcVar.p(zzvoVarC);
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void G(int i10) {
        Iterator it = this.I.iterator();
        while (it.hasNext()) {
            zzcdf zzcdfVar = (zzcdf) ((WeakReference) it.next()).get();
            if (zzcdfVar != null) {
                zzcdfVar.s(i10);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void H(Surface surface, boolean z10) {
        zzhu zzhuVar = this.f11969w;
        if (zzhuVar != null) {
            zzhuVar.w(surface);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void I(float f10, boolean z10) {
        zzhu zzhuVar = this.f11969w;
        if (zzhuVar != null) {
            zzhuVar.s(f10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void J() {
        this.f11969w.y();
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final boolean K() {
        return this.f11969w != null;
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final int L() {
        return this.B;
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final int N() {
        return this.f11969w.g();
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final long P() {
        return this.f11969w.j();
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final long Q() {
        return this.A;
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final long R() {
        if (b0() && this.H.v()) {
            return Math.min(this.A, this.H.q());
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final long S() {
        return this.f11969w.k();
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final long T() {
        return this.f11969w.m();
    }

    final /* synthetic */ zzfg U(String str, boolean z10) {
        zzcbi zzcbiVar = this.f11966t;
        return new zzcdy(str, true != z10 ? null : this, zzcbiVar.f11729d, zzcbiVar.f11731f, zzcbiVar.f11739n, zzcbiVar.f11740o);
    }

    final /* synthetic */ zzfg V(String str, boolean z10) {
        zzcbi zzcbiVar = this.f11966t;
        zzcdf zzcdfVar = new zzcdf(str, true != z10 ? null : this, zzcbiVar.f11729d, zzcbiVar.f11731f, zzcbiVar.f11734i);
        this.I.add(new WeakReference(zzcdfVar));
        return zzcdfVar;
    }

    final /* synthetic */ zzfg W(String str, boolean z10) {
        zzfo zzfoVar = new zzfo();
        zzfoVar.e(str);
        zzfoVar.d(true != z10 ? null : this);
        zzfoVar.b(this.f11966t.f11729d);
        zzfoVar.c(this.f11966t.f11731f);
        zzfoVar.a(true);
        return zzfoVar.zza();
    }

    final /* synthetic */ zzfg X(zzff zzffVar) {
        return new zzcdi(this.f11963q, zzffVar.zza(), this.D, this.E, this, new zzcdl(this), null);
    }

    @VisibleForTesting
    final zzsu Y(Uri uri) {
        zzaj zzajVar = new zzaj();
        zzajVar.b(uri);
        zzbg zzbgVarC = zzajVar.c();
        zzty zztyVar = this.f11968v;
        zztyVar.a(this.f11966t.f11732g);
        return zztyVar.b(zzbgVarC);
    }

    final /* synthetic */ void Z(boolean z10, long j10) {
        zzcaz zzcazVar = this.f11972z;
        if (zzcazVar != null) {
            zzcazVar.b(z10, j10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final void a(zzlc zzlcVar, int i10) {
        zzcaz zzcazVar = this.f11972z;
        if (zzcazVar != null) {
            zzcazVar.l0(i10);
        }
    }

    final /* synthetic */ zzkn[] a0(Handler handler, zzyp zzypVar, zzoc zzocVar, zzuu zzuuVar, zzrs zzrsVar) {
        Context context = this.f11963q;
        zzrc zzrcVar = zzrc.f20552a;
        zznq zznqVar = zznq.f20270c;
        zzde[] zzdeVarArr = new zzde[0];
        zzot zzotVar = new zzot();
        if (zznqVar == null) {
            Objects.requireNonNull(zznqVar, "Both parameters are null");
        }
        zzotVar.b(zznqVar);
        zzotVar.c(zzdeVarArr);
        zzpf zzpfVarD = zzotVar.d();
        zzqt zzqtVar = zzqt.f20509a;
        return new zzkn[]{new zzpl(context, zzqtVar, zzrcVar, false, handler, zzocVar, zzpfVarD), new zzxs(this.f11963q, zzqtVar, zzrcVar, 0L, false, handler, zzypVar, -1, 30.0f)};
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final void b(zzlc zzlcVar, int i10, long j10) {
        this.B += i10;
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final /* synthetic */ void c(zzlc zzlcVar, zzcf zzcfVar, zzcf zzcfVar2, int i10) {
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final void d(zzlc zzlcVar, zzsj zzsjVar, zzso zzsoVar, IOException iOException, boolean z10) {
        zzcaz zzcazVar = this.f11972z;
        if (zzcazVar != null) {
            if (this.f11966t.f11736k) {
                zzcazVar.a("onLoadException", iOException);
            } else {
                zzcazVar.d("onLoadError", iOException);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final /* synthetic */ void e(zzcg zzcgVar, zzld zzldVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final void f(zzlc zzlcVar, zzaf zzafVar, zzhc zzhcVar) {
        zzcbj zzcbjVar = (zzcbj) this.f11967u.get();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.G1)).booleanValue() || zzcbjVar == null || zzafVar == null) {
            return;
        }
        HashMap map = new HashMap();
        String str = zzafVar.f8730k;
        if (str != null) {
            map.put("audioMime", str);
        }
        String str2 = zzafVar.f8731l;
        if (str2 != null) {
            map.put("audioSampleMime", str2);
        }
        String str3 = zzafVar.f8728i;
        if (str3 != null) {
            map.put("audioCodec", str3);
        }
        zzcbjVar.v0("onMetadataEvent", map);
    }

    public final void finalize() {
        zzcba.t().decrementAndGet();
        if (com.google.android.gms.ads.internal.util.zze.m()) {
            com.google.android.gms.ads.internal.util.zze.k("SimpleExoPlayerAdapter finalize ".concat(toString()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final /* synthetic */ void g(zzlc zzlcVar, zzhb zzhbVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzgi
    public final void h(zzfg zzfgVar, zzfl zzflVar, boolean z10, int i10) {
        this.A += i10;
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final /* synthetic */ void i(zzlc zzlcVar, zzso zzsoVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final void j(zzlc zzlcVar, zzaf zzafVar, zzhc zzhcVar) {
        zzcbj zzcbjVar = (zzcbj) this.f11967u.get();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.G1)).booleanValue() || zzcbjVar == null || zzafVar == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put("frameRate", String.valueOf(zzafVar.f8738s));
        map.put("bitRate", String.valueOf(zzafVar.f8727h));
        map.put("resolution", zzafVar.f8736q + "x" + zzafVar.f8737r);
        String str = zzafVar.f8730k;
        if (str != null) {
            map.put("videoMime", str);
        }
        String str2 = zzafVar.f8731l;
        if (str2 != null) {
            map.put("videoSampleMime", str2);
        }
        String str3 = zzafVar.f8728i;
        if (str3 != null) {
            map.put("videoCodec", str3);
        }
        zzcbjVar.v0("onMetadataEvent", map);
    }

    @Override // com.google.android.gms.internal.ads.zzgi
    public final void k(zzfg zzfgVar, zzfl zzflVar, boolean z10) {
        if (zzfgVar instanceof zzgd) {
            synchronized (this.F) {
                this.G.add((zzgd) zzfgVar);
            }
        } else if (zzfgVar instanceof zzcdi) {
            this.H = (zzcdi) zzfgVar;
            final zzcbj zzcbjVar = (zzcbj) this.f11967u.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.G1)).booleanValue() && zzcbjVar != null && this.H.t()) {
                final HashMap map = new HashMap();
                map.put("gcacheHit", String.valueOf(this.H.v()));
                map.put("gcacheDownloaded", String.valueOf(this.H.u()));
                com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcds
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcbj zzcbjVar2 = zzcbjVar;
                        Map map2 = map;
                        int i10 = zzcdv.J;
                        zzcbjVar2.v0("onGcacheInfoEvent", map2);
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final void l(zzlc zzlcVar, zzda zzdaVar) {
        zzcaz zzcazVar = this.f11972z;
        if (zzcazVar != null) {
            zzcazVar.e(zzdaVar.f14263a, zzdaVar.f14264b);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final /* synthetic */ void m(zzlc zzlcVar, int i10, long j10, long j11) {
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final void n(zzlc zzlcVar, Object obj, long j10) {
        zzcaz zzcazVar = this.f11972z;
        if (zzcazVar != null) {
            zzcazVar.t();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgi
    public final void o(zzfg zzfgVar, zzfl zzflVar, boolean z10) {
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final void p(zzlc zzlcVar, zzbw zzbwVar) {
        zzcaz zzcazVar = this.f11972z;
        if (zzcazVar != null) {
            zzcazVar.d("onPlayerError", zzbwVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgi
    public final void q(zzfg zzfgVar, zzfl zzflVar, boolean z10) {
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final long r() {
        if (b0()) {
            return 0L;
        }
        return this.A;
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final long s() {
        if (b0()) {
            return this.H.r();
        }
        synchronized (this.F) {
            while (!this.G.isEmpty()) {
                long j10 = this.C;
                Map mapB = ((zzgd) this.G.remove(0)).b();
                long j11 = 0;
                if (mapB != null) {
                    Iterator it = mapB.entrySet().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        Map.Entry entry = (Map.Entry) it.next();
                        if (entry != null) {
                            try {
                                if (entry.getKey() != null && zzfnb.c("content-length", (CharSequence) entry.getKey()) && entry.getValue() != null && ((List) entry.getValue()).get(0) != null) {
                                    j11 = Long.parseLong((String) ((List) entry.getValue()).get(0));
                                    break;
                                }
                            } catch (NumberFormatException unused) {
                                continue;
                            }
                        }
                    }
                }
                this.C = j10 + j11;
            }
        }
        return this.C;
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void v(Uri[] uriArr, String str) {
        w(uriArr, str, ByteBuffer.allocate(0), false);
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void w(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z10) {
        zzsu zztkVar;
        if (this.f11969w != null) {
            this.f11970x = byteBuffer;
            this.f11971y = z10;
            int length = uriArr.length;
            if (length == 1) {
                zztkVar = Y(uriArr[0]);
            } else {
                zzsu[] zzsuVarArr = new zzsu[length];
                for (int i10 = 0; i10 < uriArr.length; i10++) {
                    zzsuVarArr[i10] = Y(uriArr[i10]);
                }
                zztkVar = new zztk(false, false, zzsuVarArr);
            }
            this.f11969w.t(zztkVar);
            this.f11969w.q();
            zzcba.u().incrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void x() {
        zzhu zzhuVar = this.f11969w;
        if (zzhuVar != null) {
            zzhuVar.u(this);
            this.f11969w.x();
            this.f11969w = null;
            zzcba.u().decrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void y(long j10) {
        zzm zzmVar = (zzm) this.f11969w;
        zzmVar.z(zzmVar.e(), j10, 5, false);
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void z(int i10) {
        this.f11964r.i(i10);
    }
}
