package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzahr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzabb f9116a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f9117b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f9118c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f9119d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9120e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9121f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f9122g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f9123h;

    public zzahr(zzabb zzabbVar) {
        this.f9116a = zzabbVar;
    }

    public final void a(byte[] bArr, int i10, int i11) {
        if (this.f9118c) {
            int i12 = this.f9121f;
            int i13 = (i10 + 1) - i12;
            if (i13 >= i11) {
                this.f9121f = i12 + (i11 - i10);
            } else {
                this.f9119d = ((bArr[i13] & 192) >> 6) == 0;
                this.f9118c = false;
            }
        }
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
    public final void b(long j10, int i10, boolean z10) {
        if (this.f9120e == 182 && z10 && this.f9117b) {
            long j11 = this.f9123h;
            if (j11 != -9223372036854775807L) {
                long j12 = j10 - this.f9122g;
                this.f9116a.f(j11, this.f9119d ? 1 : 0, (int) j12, i10, null);
            }
        }
        if (this.f9120e != 179) {
            this.f9122g = j10;
        }
    }

    public final void c(int i10, long j10) {
        boolean z10;
        this.f9120e = i10;
        this.f9119d = false;
        if (i10 == 182) {
            z10 = true;
        } else if (i10 == 179) {
            i10 = 179;
            z10 = true;
        } else {
            z10 = false;
        }
        this.f9117b = z10;
        this.f9118c = i10 == 182;
        this.f9121f = 0;
        this.f9123h = j10;
    }

    public final void d() {
        this.f9117b = false;
        this.f9118c = false;
        this.f9119d = false;
        this.f9120e = -1;
    }
}
