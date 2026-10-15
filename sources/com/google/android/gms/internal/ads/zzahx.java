package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzahx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzabb f9163a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f9164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f9165c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f9166d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f9167e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f9168f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f9169g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f9170h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f9171i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f9172j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f9173k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f9174l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f9175m;

    public zzahx(zzabb zzabbVar) {
        this.f9163a = zzabbVar;
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
    private final void e(int i10) {
        long j10 = this.f9174l;
        if (j10 == -9223372036854775807L) {
            return;
        }
        boolean z10 = this.f9175m;
        long j11 = this.f9164b - this.f9173k;
        this.f9163a.f(j10, z10 ? 1 : 0, (int) j11, i10, null);
    }

    public final void a(long j10, int i10, boolean z10) {
        if (this.f9172j && this.f9169g) {
            this.f9175m = this.f9165c;
            this.f9172j = false;
        } else if (this.f9170h || this.f9169g) {
            if (z10 && this.f9171i) {
                e(i10 + ((int) (j10 - this.f9164b)));
            }
            this.f9173k = this.f9164b;
            this.f9174l = this.f9167e;
            this.f9175m = this.f9165c;
            this.f9171i = true;
        }
    }

    public final void b(byte[] bArr, int i10, int i11) {
        if (this.f9168f) {
            int i12 = this.f9166d;
            int i13 = (i10 + 2) - i12;
            if (i13 >= i11) {
                this.f9166d = i12 + (i11 - i10);
            } else {
                this.f9169g = (bArr[i13] & 128) != 0;
                this.f9168f = false;
            }
        }
    }

    public final void c() {
        this.f9168f = false;
        this.f9169g = false;
        this.f9170h = false;
        this.f9171i = false;
        this.f9172j = false;
    }

    public final void d(long j10, int i10, int i11, long j11, boolean z10) {
        this.f9169g = false;
        this.f9170h = false;
        this.f9167e = j11;
        this.f9166d = 0;
        this.f9164b = j10;
        if (i11 >= 32 && i11 != 40) {
            if (this.f9171i && !this.f9172j) {
                if (z10) {
                    e(i10);
                }
                this.f9171i = false;
            }
            if (i11 <= 35 || i11 == 39) {
                this.f9170h = !this.f9172j;
                this.f9172j = true;
            }
        }
        boolean z11 = i11 >= 16 && i11 <= 21;
        this.f9165c = z11;
        this.f9168f = z11 || i11 <= 9;
    }
}
