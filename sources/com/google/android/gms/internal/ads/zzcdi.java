package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcdi extends zzfa {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f11921e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzfg f11922f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f11923g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f11924h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f11925i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private InputStream f11926j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f11927k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Uri f11928l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private volatile zzavq f11929m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f11930n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f11931o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f11932p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f11933q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f11934r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private zzfut f11935s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final AtomicLong f11936t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zzcdl f11937u;

    public zzcdi(Context context, zzfg zzfgVar, String str, int i10, zzgi zzgiVar, zzcdl zzcdlVar, byte[] bArr) {
        super(false);
        this.f11921e = context;
        this.f11922f = zzfgVar;
        this.f11937u = zzcdlVar;
        this.f11923g = str;
        this.f11924h = i10;
        this.f11930n = false;
        this.f11931o = false;
        this.f11932p = false;
        this.f11933q = false;
        this.f11934r = 0L;
        this.f11936t = new AtomicLong(-1L);
        this.f11935s = null;
        this.f11925i = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.G1)).booleanValue();
        f(zzgiVar);
    }

    private final boolean y() {
        if (!this.f11925i) {
            return false;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.T3)).booleanValue() || this.f11932p) {
            return ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.U3)).booleanValue() && !this.f11933q;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final Uri a() {
        return this.f11928l;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final void d() throws IOException {
        if (!this.f11927k) {
            throw new IOException("Attempt to close an already closed GcacheDataSource.");
        }
        this.f11927k = false;
        this.f11928l = null;
        boolean z10 = (this.f11925i && this.f11926j == null) ? false : true;
        InputStream inputStream = this.f11926j;
        if (inputStream != null) {
            IOUtils.b(inputStream);
            this.f11926j = null;
        } else {
            this.f11922f.d();
        }
        if (z10) {
            n();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzr
    public final int e(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.f11927k) {
            throw new IOException("Attempt to read closed GcacheDataSource.");
        }
        InputStream inputStream = this.f11926j;
        int iE = inputStream != null ? inputStream.read(bArr, i10, i11) : this.f11922f.e(bArr, i10, i11);
        if (!this.f11925i || this.f11926j != null) {
            w(iE);
        }
        return iE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.google.android.gms.internal.ads.zzcdv] */
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
    @Override // com.google.android.gms.internal.ads.zzfg
    public final long j(zzfl zzflVar) throws Throwable {
        zzavn zzavnVarB;
        Long l10;
        boolean z10;
        boolean z11;
        long jB;
        zzawc zzawcVar;
        String string = "ms";
        if (this.f11927k) {
            throw new IOException("Attempt to open an already open GcacheDataSource.");
        }
        ?? r22 = 1;
        this.f11927k = true;
        this.f11928l = zzflVar.f18368a;
        if (!this.f11925i) {
            p(zzflVar);
        }
        this.f11929m = zzavq.V3(zzflVar.f18368a);
        ?? sb = -1;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Q3)).booleanValue()) {
            if (this.f11929m != null) {
                this.f11929m.f10031v = zzflVar.f18373f;
                this.f11929m.f10032w = zzfoj.c(this.f11923g);
                this.f11929m.f10033x = this.f11924h;
                zzavnVarB = com.google.android.gms.ads.internal.zzt.e().b(this.f11929m);
            } else {
                zzavnVarB = null;
            }
            if (zzavnVarB != null && zzavnVarB.b()) {
                this.f11930n = zzavnVarB.d();
                this.f11932p = zzavnVarB.e();
                this.f11933q = zzavnVarB.Y3();
                this.f11934r = zzavnVarB.V3();
                this.f11931o = true;
                if (!y()) {
                    this.f11926j = zzavnVarB.X3();
                    if (this.f11925i) {
                        p(zzflVar);
                    }
                    return -1L;
                }
            }
        } else if (this.f11929m != null) {
            this.f11929m.f10031v = zzflVar.f18373f;
            this.f11929m.f10032w = zzfoj.c(this.f11923g);
            this.f11929m.f10033x = this.f11924h;
            if (this.f11929m.f10030u) {
                l10 = (Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S3);
            } else {
                l10 = (Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.R3);
            }
            long jLongValue = l10.longValue();
            long jB2 = com.google.android.gms.ads.internal.zzt.b().b();
            com.google.android.gms.ads.internal.zzt.f();
            Future futureA = zzawb.a(this.f11921e, this.f11929m);
            try {
                try {
                    zzawcVar = (zzawc) futureA.get(jLongValue, TimeUnit.MILLISECONDS);
                } catch (Throwable th) {
                    th = th;
                    r22 = sb;
                }
                try {
                    this.f11930n = zzawcVar.d();
                    this.f11932p = zzawcVar.f();
                    this.f11933q = zzawcVar.e();
                    this.f11934r = zzawcVar.a();
                    if (!y()) {
                        this.f11926j = zzawcVar.c();
                        if (this.f11925i) {
                            p(zzflVar);
                        }
                        long jB3 = com.google.android.gms.ads.internal.zzt.b().b() - jB2;
                        this.f11937u.f11944a.Z(true, jB3);
                        this.f11931o = true;
                        com.google.android.gms.ads.internal.util.zze.k("Cache connection took " + jB3 + "ms");
                        return -1L;
                    }
                    long jB4 = com.google.android.gms.ads.internal.zzt.b().b() - jB2;
                    this.f11937u.f11944a.Z(true, jB4);
                    this.f11931o = true;
                    string = "Cache connection took " + jB4 + "ms";
                } catch (InterruptedException unused) {
                    z11 = true;
                    futureA.cancel(true);
                    Thread.currentThread().interrupt();
                    jB = com.google.android.gms.ads.internal.zzt.b().b() - jB2;
                    this.f11937u.f11944a.Z(z11, jB);
                    this.f11931o = z11;
                    sb = new StringBuilder();
                    sb.append("Cache connection took ");
                    sb.append(jB);
                    sb.append("ms");
                    string = sb.toString();
                } catch (ExecutionException | TimeoutException unused2) {
                    z10 = true;
                    futureA.cancel(true);
                    jB = com.google.android.gms.ads.internal.zzt.b().b() - jB2;
                    this.f11937u.f11944a.Z(z10, jB);
                    this.f11931o = z10;
                    sb = new StringBuilder();
                    sb.append("Cache connection took ");
                    sb.append(jB);
                    sb.append("ms");
                    string = sb.toString();
                } catch (Throwable th2) {
                    th = th2;
                    long jB5 = com.google.android.gms.ads.internal.zzt.b().b() - jB2;
                    this.f11937u.f11944a.Z(r22, jB5);
                    this.f11931o = r22;
                    com.google.android.gms.ads.internal.util.zze.k("Cache connection took " + jB5 + string);
                    throw th;
                }
            } catch (InterruptedException unused3) {
                z11 = false;
            } catch (ExecutionException | TimeoutException unused4) {
                z10 = false;
            } catch (Throwable th3) {
                th = th3;
                r22 = 0;
            }
            com.google.android.gms.ads.internal.util.zze.k(string);
        }
        this.f11931o = false;
        if (this.f11929m != null) {
            zzflVar = new zzfl(Uri.parse(this.f11929m.f10024o), null, zzflVar.f18372e, zzflVar.f18373f, zzflVar.f18374g, null, zzflVar.f18376i);
        }
        return this.f11922f.j(zzflVar);
    }

    public final long q() {
        return this.f11934r;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long r() {
        if (this.f11929m == null) {
            return -1L;
        }
        if (this.f11936t.get() != -1) {
            return this.f11936t.get();
        }
        synchronized (this) {
            if (this.f11935s == null) {
                this.f11935s = zzbzn.f11614a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzcdh
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f11920a.s();
                    }
                });
            }
        }
        if (!this.f11935s.isDone()) {
            return -1L;
        }
        try {
            this.f11936t.compareAndSet(-1L, ((Long) this.f11935s.get()).longValue());
            return this.f11936t.get();
        } catch (InterruptedException | ExecutionException unused) {
            return -1L;
        }
    }

    final /* synthetic */ Long s() throws Exception {
        return Long.valueOf(com.google.android.gms.ads.internal.zzt.e().a(this.f11929m));
    }

    public final boolean t() {
        return this.f11930n;
    }

    public final boolean u() {
        return this.f11933q;
    }

    public final boolean v() {
        return this.f11932p;
    }

    public final boolean x() {
        return this.f11931o;
    }
}
