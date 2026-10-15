package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzahp implements zzahn {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final double[] f9093q = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f9094a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzabb f9095b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzajc f9096c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzen f9097d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzaic f9098e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean[] f9099f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzaho f9100g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f9101h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f9102i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f9103j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f9104k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f9105l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f9106m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f9107n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f9108o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f9109p;

    public zzahp() {
        this(null);
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void b() {
        zzaar.e(this.f9099f);
        this.f9100g.b();
        zzaic zzaicVar = this.f9098e;
        if (zzaicVar != null) {
            zzaicVar.b();
        }
        this.f9101h = 0L;
        this.f9102i = false;
        this.f9105l = -9223372036854775807L;
        this.f9107n = -9223372036854775807L;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01e8  */
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
    @Override // com.google.android.gms.internal.ads.zzahn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c(com.google.android.gms.internal.ads.zzen r21) {
        /*
            Method dump skipped, instruction units count: 498
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahp.c(com.google.android.gms.internal.ads.zzen):void");
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void d(zzzx zzzxVar, zzaiz zzaizVar) {
        zzaizVar.c();
        this.f9094a = zzaizVar.b();
        this.f9095b = zzzxVar.q(zzaizVar.a(), 2);
        zzajc zzajcVar = this.f9096c;
        if (zzajcVar != null) {
            zzajcVar.b(zzzxVar, zzaizVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void e(long j10, int i10) {
        this.f9105l = j10;
    }

    zzahp(zzajc zzajcVar) {
        zzen zzenVar;
        this.f9096c = zzajcVar;
        this.f9099f = new boolean[4];
        this.f9100g = new zzaho(128);
        if (zzajcVar != null) {
            this.f9098e = new zzaic(178, 128);
            zzenVar = new zzen();
        } else {
            zzenVar = null;
            this.f9098e = null;
        }
        this.f9097d = zzenVar;
        this.f9105l = -9223372036854775807L;
        this.f9107n = -9223372036854775807L;
    }
}
