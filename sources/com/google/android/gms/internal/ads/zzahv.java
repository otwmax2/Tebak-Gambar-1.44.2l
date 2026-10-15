package com.google.android.gms.internal.ads;

import android.util.SparseArray;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzahv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzabb f9136a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzaat f9139d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final byte[] f9140e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9141f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f9142g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f9143h;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f9147l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f9148m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f9149n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SparseArray f9137b = new SparseArray();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final SparseArray f9138c = new SparseArray();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzahu f9144i = new zzahu(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzahu f9145j = new zzahu(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f9146k = false;

    public zzahv(zzabb zzabbVar, boolean z10, boolean z11) {
        this.f9136a = zzabbVar;
        byte[] bArr = new byte[128];
        this.f9140e = bArr;
        this.f9139d = new zzaat(bArr, 0, 0);
    }

    public final void a(zzaap zzaapVar) {
        this.f9138c.append(zzaapVar.f8332a, zzaapVar);
    }

    public final void b(zzaaq zzaaqVar) {
        this.f9137b.append(zzaaqVar.f8336d, zzaaqVar);
    }

    public final void c() {
        this.f9146k = false;
    }

    public final void d(long j10, int i10, long j11) {
        this.f9141f = i10;
        this.f9143h = j11;
        this.f9142g = j10;
    }

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
    public final boolean e(long j10, int i10, boolean z10, boolean z11) {
        boolean z12 = false;
        if (this.f9141f == 9) {
            if (z10 && this.f9146k) {
                long j11 = this.f9142g;
                int i11 = i10 + ((int) (j10 - j11));
                long j12 = this.f9148m;
                if (j12 != -9223372036854775807L) {
                    boolean z13 = this.f9149n;
                    long j13 = j11 - this.f9147l;
                    this.f9136a.f(j12, z13 ? 1 : 0, (int) j13, i11, null);
                }
            }
            this.f9147l = this.f9142g;
            this.f9148m = this.f9143h;
            this.f9149n = false;
            this.f9146k = true;
        }
        boolean z14 = this.f9149n;
        int i12 = this.f9141f;
        if (i12 == 5 || (z11 && i12 == 1)) {
            z12 = true;
        }
        boolean z15 = z14 | z12;
        this.f9149n = z15;
        return z15;
    }
}
